// Demonstrates that a low-level keyboard hook whose owning thread is busy delays
// global key delivery. Injects only VK_F24 (harmless). Brief, self-uninstalling.
// Usage: hook_stall_probe.exe <out.csv>
using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;

static class H
{
    [DllImport("user32.dll", SetLastError = true)]
    static extern IntPtr SetWindowsHookExW(int id, HookProc fn, IntPtr mod, uint tid);
    [DllImport("user32.dll")] static extern bool UnhookWindowsHookEx(IntPtr h);
    [DllImport("user32.dll")] static extern IntPtr CallNextHookEx(IntPtr h, int code, IntPtr w, IntPtr l);
    [DllImport("user32.dll")] static extern bool PeekMessageW(out MSG m, IntPtr h, uint min, uint max, uint remove);
    [DllImport("user32.dll")] static extern bool TranslateMessage(ref MSG m);
    [DllImport("user32.dll")] static extern IntPtr DispatchMessageW(ref MSG m);
    [DllImport("user32.dll", SetLastError = true)]
    static extern uint SendInput(uint n, INPUT[] inputs, int size);
    [DllImport("user32.dll")] static extern void keybd_event(byte vk, byte scan, uint flags, UIntPtr extra);
    [DllImport("kernel32.dll")] static extern bool QueryPerformanceCounter(out long v);
    [DllImport("kernel32.dll")] static extern bool QueryPerformanceFrequency(out long v);
    [DllImport("kernel32.dll")] static extern uint GetCurrentThreadId();
    [DllImport("kernel32.dll", CharSet = CharSet.Unicode)] static extern IntPtr GetModuleHandleW(string name);
    [DllImport("user32.dll")] static extern bool PostThreadMessageW(uint tid, uint msg, IntPtr w, IntPtr l);

    delegate IntPtr HookProc(int code, IntPtr w, IntPtr l);
    [StructLayout(LayoutKind.Sequential)]
    struct MSG { public IntPtr hwnd; public uint message; public IntPtr wParam; public IntPtr lParam; public uint time; public int x; public int y; }
    [StructLayout(LayoutKind.Sequential)]
    struct KEYBDINPUT { public ushort wVk; public ushort wScan; public uint dwFlags; public uint time; public IntPtr dwExtraInfo; }
    [StructLayout(LayoutKind.Sequential)]
    struct MOUSEINPUT { public int dx; public int dy; public uint mouseData; public uint dwFlags; public uint time; public IntPtr dwExtraInfo; }
    [StructLayout(LayoutKind.Explicit)]
    struct INPUTUNION { [FieldOffset(0)] public MOUSEINPUT mi; [FieldOffset(0)] public KEYBDINPUT ki; }
    [StructLayout(LayoutKind.Sequential)]
    struct INPUT { public uint type; public INPUTUNION u; }

    const int WH_KEYBOARD_LL = 13;
    const uint WM_KEYDOWN = 0x100, WM_KEYUP = 0x101, WM_QUIT = 0x12;
    const ushort VK_F24 = 0x87;

    static long freq, hookQpc, sendQpc;
    static readonly ManualResetEvent Hooked = new ManualResetEvent(false);
    static HookProc hookProc = OnHook;
    static volatile int busyRequested, busyStarted, done;
    static IntPtr hook;

    static IntPtr OnHook(int code, IntPtr w, IntPtr l)
    {
        if (code >= 0 && w.ToInt64() == WM_KEYDOWN)
        {
            int vk = Marshal.ReadInt32(l); // KBDLLHOOKSTRUCT.vkCode at offset 0
            if (vk == VK_F24)
            {
                QueryPerformanceCounter(out hookQpc);
                Hooked.Set();
            }
        }
        return CallNextHookEx(hook, code, w, l);
    }

    static void SendF24()
    {
        var down = new INPUT { type = 1 };
        down.u.ki.wVk = VK_F24;
        var up = new INPUT { type = 1 };
        up.u.ki.wVk = VK_F24; up.u.ki.dwFlags = 2; // KEYEVENTF_KEYUP
        QueryPerformanceCounter(out sendQpc);
        keybd_event((byte)VK_F24, 0, 0, UIntPtr.Zero);
        keybd_event((byte)VK_F24, 0, 2, UIntPtr.Zero);
    }

    static void Main(string[] args)
    {
        string outPath = args.Length > 0 ? args[0] : "hook_stall.csv";
        int blockMs = args.Length > 1 ? int.Parse(args[1]) : 500;
        QueryPerformanceFrequency(out freq);
        uint mainTid = GetCurrentThreadId();
        hook = SetWindowsHookExW(WH_KEYBOARD_LL, hookProc, GetModuleHandleW(null), 0);
        if (hook == IntPtr.Zero) { Console.WriteLine("SetWindowsHookEx failed " + Marshal.GetLastWin32Error()); return; }

        double idleMs = -1, busyMs = -1;
        var sender = new Thread(() =>
        {
            Thread.Sleep(300);
            Hooked.Reset(); SendF24();
            if (Hooked.WaitOne(2000)) idleMs = (hookQpc - sendQpc) * 1000.0 / freq; else idleMs = -2;

            busyRequested = 1;
            for (int i = 0; i < 200 && busyStarted == 0; i++) Thread.Sleep(5);
            Thread.Sleep(100); // we are inside the 2s block now
            Hooked.Reset(); SendF24();
            if (Hooked.WaitOne(blockMs + 3000)) busyMs = (hookQpc - sendQpc) * 1000.0 / freq; else busyMs = -2;

            Thread.Sleep(300);
            done = 1;
            PostThreadMessageW(mainTid, WM_QUIT, IntPtr.Zero, IntPtr.Zero);
        });
        sender.IsBackground = true;
        sender.Start();

        MSG m;
        while (done == 0)
        {
            while (PeekMessageW(out m, IntPtr.Zero, 0, 0, 1))
            {
                TranslateMessage(ref m);
                DispatchMessageW(ref m);
            }
            if (busyRequested == 1)
            {
                busyRequested = 0; busyStarted = 1;
                Thread.Sleep(blockMs); // draw the hook thread away from its message pump
                busyStarted = 0;
            }
            Thread.Sleep(1);
        }
        UnhookWindowsHookEx(hook);
        using (var w = new StreamWriter(outPath, false, new UTF8Encoding(false)))
        {
            w.WriteLine("case,latency_ms");
            w.WriteLine("idle," + idleMs.ToString("F2"));
            w.WriteLine("blocked_thread_" + blockMs + "ms," + busyMs.ToString("F2"));
        }
        Console.WriteLine("hook latency idle=" + idleMs.ToString("F2") + " ms");
        Console.WriteLine("hook latency while owner thread slept " + blockMs + "ms=" + busyMs.ToString("F2") + " ms");
    }
}
