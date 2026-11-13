// Measures global keyboard delivery latency to a foreground window while optionally
// suspending a target thread (to test whether that thread owns a global LL hook).
// Injects only VK_F24 (harmless). Usage:
//   input_latency_probe.exe <label> <suspend_tid|0> <suspend_ms> <iterations> <out.csv>
using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;

static class P
{
    [DllImport("user32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern ushort RegisterClassW(ref WNDCLASS wc);
    [DllImport("user32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern IntPtr CreateWindowExW(uint ex, string cls, string name, uint style, int x, int y, int w, int h, IntPtr parent, IntPtr menu, IntPtr inst, IntPtr param);
    [DllImport("user32.dll")] static extern IntPtr DefWindowProcW(IntPtr h, uint m, IntPtr w, IntPtr l);
    [DllImport("user32.dll")] static extern bool ShowWindow(IntPtr h, int cmd);
    [DllImport("user32.dll")] static extern bool SetForegroundWindow(IntPtr h);
    [DllImport("user32.dll")] static extern IntPtr SetActiveWindow(IntPtr h);
    [DllImport("user32.dll")] static extern IntPtr SetFocus(IntPtr h);
    [DllImport("user32.dll")] static extern IntPtr GetForegroundWindow();
    [DllImport("user32.dll")] static extern uint GetWindowThreadProcessId(IntPtr h, out uint pid);
    [DllImport("user32.dll")] static extern bool AttachThreadInput(uint a, uint b, bool attach);
    [DllImport("kernel32.dll")] static extern uint GetCurrentThreadId();
    [DllImport("user32.dll")] static extern bool PeekMessageW(out MSG m, IntPtr h, uint min, uint max, uint remove);
    [DllImport("user32.dll")] static extern bool TranslateMessage(ref MSG m);
    [DllImport("user32.dll")] static extern IntPtr DispatchMessageW(ref MSG m);
    [DllImport("user32.dll")] static extern void keybd_event(byte vk, byte scan, uint flags, UIntPtr extra);
    [DllImport("kernel32.dll")] static extern IntPtr OpenThread(uint access, bool inherit, uint tid);
    [DllImport("kernel32.dll")] static extern uint SuspendThread(IntPtr h);
    [DllImport("kernel32.dll")] static extern uint ResumeThread(IntPtr h);
    [DllImport("kernel32.dll")] static extern bool CloseHandle(IntPtr h);
    [DllImport("kernel32.dll")] static extern bool QueryPerformanceCounter(out long v);
    [DllImport("kernel32.dll")] static extern bool QueryPerformanceFrequency(out long v);

    delegate IntPtr WP(IntPtr h, uint m, IntPtr w, IntPtr l);
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
    struct WNDCLASS { public uint style; public IntPtr lpfn; public int cbCls, cbWnd; public IntPtr inst, icon, cursor, brush; public string menu, cls; }
    [StructLayout(LayoutKind.Sequential)]
    struct MSG { public IntPtr hwnd; public uint message; public IntPtr wParam, lParam; public uint time; public int x, y; }

    const uint WM_KEYDOWN = 0x100;
    const ushort VK_F24 = 0x87;
    static long freq, keyQpc;
    static readonly ManualResetEvent KeySeen = new ManualResetEvent(false);
    static IntPtr hwnd;
    static WP wp = OnMsg;

    static IntPtr OnMsg(IntPtr h, uint m, IntPtr w, IntPtr l)
    {
        if (m == WM_KEYDOWN && w.ToInt64() == VK_F24)
        {
            QueryPerformanceCounter(out keyQpc);
            KeySeen.Set();
        }
        return DefWindowProcW(h, m, w, l);
    }

    static void Pump(int ms)
    {
        var end = DateTime.UtcNow.AddMilliseconds(ms);
        while (DateTime.UtcNow < end)
        {
            MSG m;
            while (PeekMessageW(out m, IntPtr.Zero, 0, 0, 1)) { TranslateMessage(ref m); DispatchMessageW(ref m); }
            Thread.Sleep(1);
        }
    }

    static void Main(string[] args)
    {
        string label = args.Length > 0 ? args[0] : "idle";
        uint tid = args.Length > 1 ? uint.Parse(args[1]) : 0;
        int suspendMs = args.Length > 2 ? int.Parse(args[2]) : 0;
        int iters = args.Length > 3 ? int.Parse(args[3]) : 5;
        string outPath = args.Length > 4 ? args[4] : "input_latency.csv";
        QueryPerformanceFrequency(out freq);

        var wc = new WNDCLASS();
        wc.lpfn = Marshal.GetFunctionPointerForDelegate(wp);
        wc.cls = "ZTAInputProbe_" + Process.GetCurrentProcess().Id;
        wc.style = 0; wc.brush = (IntPtr)6;
        if (RegisterClassW(ref wc) == 0) { Console.WriteLine("RegisterClass " + Marshal.GetLastWin32Error()); return; }
        hwnd = CreateWindowExW(0x80 /*TOOLWINDOW*/, wc.cls, "ZTA Input Probe", 0x00CF0000, 10, 10, 160, 60, IntPtr.Zero, IntPtr.Zero, IntPtr.Zero, IntPtr.Zero);
        if (hwnd == IntPtr.Zero) { Console.WriteLine("CreateWindow " + Marshal.GetLastWin32Error()); return; }
        ShowWindow(hwnd, 5);
        IntPtr fg = GetForegroundWindow();
        uint fgtid; GetWindowThreadProcessId(fg, out fgtid);
        uint mytid = GetCurrentThreadId();
        AttachThreadInput(mytid, fgtid, true);
        SetForegroundWindow(hwnd); SetActiveWindow(hwnd); SetFocus(hwnd);
        AttachThreadInput(mytid, fgtid, false);
        Pump(200);
        bool isFg = GetForegroundWindow() == hwnd;
        Console.WriteLine("foreground=" + isFg + " hwnd=" + hwnd);

        var sw = new StreamWriter(outPath, false, new UTF8Encoding(false));
        sw.WriteLine("label,iter,foreground,delivered,latency_ms");
        int delivered = 0; double total = 0, max = 0;
        for (int i = 0; i < iters; i++)
        {
            KeySeen.Reset();
            IntPtr th = IntPtr.Zero;
            if (tid != 0 && suspendMs > 0) { th = OpenThread(0x0002, false, tid); if (th != IntPtr.Zero) SuspendThread(th); }
            Thread.Sleep(50);
            long a; QueryPerformanceCounter(out a);
            keybd_event((byte)VK_F24, 0, 0, UIntPtr.Zero);
            keybd_event((byte)VK_F24, 0, 2, UIntPtr.Zero);
            bool ok = false;
            var endWait = DateTime.UtcNow.AddMilliseconds(suspendMs + 1500);
            while (DateTime.UtcNow < endWait)
            {
                if (KeySeen.WaitOne(5)) { ok = true; break; }
                MSG mm;
                while (PeekMessageW(out mm, IntPtr.Zero, 0, 0, 1)) { TranslateMessage(ref mm); DispatchMessageW(ref mm); }
            }
            double ms = ok ? (keyQpc - a) * 1000.0 / freq : -1;
            if (th != IntPtr.Zero) { ResumeThread(th); CloseHandle(th); }
            Pump(50);
            if (ok) { delivered++; total += ms; if (ms > max) max = ms; }
            sw.WriteLine(string.Format("{0},{1},{2},{3},{4:F2}", label, i, isFg ? 1 : 0, ok ? 1 : 0, ms));
        }
        sw.Dispose();
        Console.WriteLine(string.Format("{0}: delivered={1}/{2} avg={3:F1}ms max={4:F1}ms", label, delivered, iters, delivered > 0 ? total / delivered : -1, max));
        ShowWindow(hwnd, 0);
    }
}
