// System responsiveness probe: high-resolution timer wake latency + top-level
// window message latency + system broadcast reception.
// Build: csc /nologo /optimize+ /out:latency_probe.exe latency_probe.cs
// Usage: latency_probe.exe <seconds> <out.csv>
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;

static class Probe
{
    [DllImport("kernel32.dll")] static extern bool QueryPerformanceCounter(out long v);
    [DllImport("kernel32.dll")] static extern bool QueryPerformanceFrequency(out long v);
    [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern IntPtr CreateWaitableTimerExW(IntPtr attrs, string name, uint flags, uint access);
    [DllImport("kernel32.dll", SetLastError = true)]
    static extern bool SetWaitableTimer(IntPtr h, ref long due, int period, IntPtr routine, IntPtr arg, bool resume);
    [DllImport("kernel32.dll")] static extern uint WaitForSingleObject(IntPtr h, uint ms);
    [DllImport("kernel32.dll")] static extern bool CloseHandle(IntPtr h);
    [DllImport("user32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern ushort RegisterClassW(ref WNDCLASS wc);
    [DllImport("user32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern IntPtr CreateWindowExW(uint exStyle, string cls, string name, uint style,
        int x, int y, int w, int h, IntPtr parent, IntPtr menu, IntPtr inst, IntPtr param);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)]
    static extern IntPtr DefWindowProcW(IntPtr h, uint msg, IntPtr w, IntPtr l);
    [DllImport("user32.dll")] static extern int GetMessageW(out MSG m, IntPtr h, uint min, uint max);
    [DllImport("user32.dll")] static extern bool TranslateMessage(ref MSG m);
    [DllImport("user32.dll")] static extern IntPtr DispatchMessageW(ref MSG m);
    [DllImport("user32.dll")] static extern bool PostMessageW(IntPtr h, uint msg, IntPtr w, IntPtr l);
    [DllImport("user32.dll")] static extern bool DestroyWindow(IntPtr h);
    [DllImport("kernel32.dll")] static extern uint GetCurrentThreadId();

    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
    struct WNDCLASS
    {
        public uint style;
        public IntPtr lpfnWndProc;
        public int cbClsExtra;
        public int cbWndExtra;
        public IntPtr hInstance;
        public IntPtr hIcon;
        public IntPtr hCursor;
        public IntPtr hbrBackground;
        public string lpszMenuName;
        public string lpszClassName;
    }
    [StructLayout(LayoutKind.Sequential)]
    struct MSG { public IntPtr hwnd; public uint message; public IntPtr wParam; public IntPtr lParam; public uint time; public int ptX; public int ptY; }

    const uint WM_APP_TICK = 0x8000 + 1;
    static readonly object Sync = new object();
    static long QpcFreq;
    static long LastPostQpc;
    static long LastMsgLatMax;
    static long LastWaitLateMax;
    static readonly List<string> Broadcasts = new List<string>();
    static readonly Dictionary<uint, int> BroadcastCount = new Dictionary<uint, int>();

    static long NowUs()
    {
        long v; QueryPerformanceCounter(out v);
        return (long)(v * 1000000.0 / QpcFreq);
    }

    static string MsgName(uint m)
    {
        switch (m)
        {
            case 0x001A: return "WM_SETTINGCHANGE";
            case 0x0015: return "WM_SYSCOLORCHANGE";
            case 0x031A: return "WM_THEMECHANGED";
            case 0x007E: return "WM_DISPLAYCHANGE";
            case 0x001E: return "WM_TIMECHANGE";
            case 0x0219: return "WM_DEVICECHANGE";
            case 0x0218: return "WM_POWERBROADCAST";
            case 0x0016: return "WM_ENDSESSION";
            case 0x0011: return "WM_QUERYENDSESSION";
            case 0x0018: return "WM_SHOWWINDOW";
            default: return "0x" + m.ToString("X4");
        }
    }

    static IntPtr WndProc(IntPtr h, uint msg, IntPtr w, IntPtr l)
    {
        if (msg == WM_APP_TICK)
        {
            long lat = NowUs() - Interlocked.Read(ref LastPostQpc);
            long cur;
            do { cur = Interlocked.Read(ref LastMsgLatMax); } while (lat > cur && Interlocked.CompareExchange(ref LastMsgLatMax, lat, cur) != cur);
            return IntPtr.Zero;
        }
        if (msg == 0x001A || msg == 0x0015 || msg == 0x031A || msg == 0x007E || msg == 0x001E
            || msg == 0x0219 || msg == 0x0218 || msg == 0x0016 || msg == 0x0011)
        {
            lock (Sync)
            {
                int c; BroadcastCount.TryGetValue(msg, out c); BroadcastCount[msg] = c + 1;
                if (Broadcasts.Count < 5000)
                    Broadcasts.Add(string.Format("{0:yyyy-MM-dd HH:mm:ss.fff},0x{1:X4},{2},wp=0x{3:X},lp=0x{4:X}",
                        DateTime.Now, msg, MsgName(msg), w.ToInt64(), l.ToInt64()));
            }
            if (msg == 0x001A && l != IntPtr.Zero) return IntPtr.Zero; // never deref cross-process pointer
        }
        return DefWindowProcW(h, msg, w, l);
    }

    static IntPtr hwnd;
    static WndProcDelegate wndProcDelegate = WndProc;
    static void MessageThread()
    {
        WNDCLASS wc = new WNDCLASS();
        wc.lpfnWndProc = Marshal.GetFunctionPointerForDelegate(wndProcDelegate);
        wc.hInstance = IntPtr.Zero;
        wc.lpszClassName = "ZTAProbeWnd_" + Process.GetCurrentProcess().Id;
        if (RegisterClassW(ref wc) == 0) { Console.WriteLine("RegisterClass failed " + Marshal.GetLastWin32Error()); return; }
        hwnd = CreateWindowExW(0, wc.lpszClassName, "ZTAProbe", 0x00CF0000 /*WS_OVERLAPPEDWINDOW*/,
            0, 0, 120, 80, IntPtr.Zero, IntPtr.Zero, IntPtr.Zero, IntPtr.Zero);
        if (hwnd == IntPtr.Zero) { Console.WriteLine("CreateWindow failed " + Marshal.GetLastWin32Error()); return; }
        MSG m;
        while (GetMessageW(out m, IntPtr.Zero, 0, 0) > 0)
        {
            TranslateMessage(ref m);
            DispatchMessageW(ref m);
        }
    }
    delegate IntPtr WndProcDelegate(IntPtr h, uint msg, IntPtr w, IntPtr l);

    static void Main(string[] args)
    {
        int seconds = args.Length > 0 ? int.Parse(args[0]) : 30;
        string outPath = args.Length > 1 ? args[1] : "latency.csv";
        QueryPerformanceFrequency(out QpcFreq);

        var msgThread = new Thread(MessageThread) { IsBackground = true, Name = "msg" };
        msgThread.Start();
        for (int i = 0; i < 100 && hwnd == IntPtr.Zero; i++) Thread.Sleep(20);
        if (hwnd == IntPtr.Zero) { Console.WriteLine("no window"); return; }

        // CREATE_WAITABLE_TIMER_HIGH_RESOLUTION = 0x00000002, TIMER_ALL_ACCESS = 0x1F0003
        IntPtr timer = CreateWaitableTimerExW(IntPtr.Zero, null, 2, 0x1F0003);
        if (timer == IntPtr.Zero) { Console.WriteLine("CreateWaitableTimerEx failed " + Marshal.GetLastWin32Error()); return; }
        const int periodMs = 2;
        long due = -periodMs * 10000L; // relative, 100ns units
        if (!SetWaitableTimer(timer, ref due, periodMs, IntPtr.Zero, IntPtr.Zero, false))
        { Console.WriteLine("SetWaitableTimer failed " + Marshal.GetLastWin32Error()); return; }

        var waitLate = new List<int>(seconds * 500 + 10);
        var msgLat = new List<int>(seconds * 500 + 10);
        var buckets = new List<string>();

        var sw = Stopwatch.StartNew();
        long prev = NowUs();
        long bucketStart = prev;
        int bWaitMax = 0, bMsgMax = 0, bCount = 0;
        int bBroadcast = 0;
        long lastBroadcastCount = 0;
        var rnd = new Random();

        while (sw.Elapsed.TotalSeconds < seconds)
        {
            WaitForSingleObject(timer, 100);
            long now = NowUs();
            long delta = now - prev;
            prev = now;
            int late = (int)(delta - periodMs * 1000L);
            if (late < 0) late = 0;
            waitLate.Add(late);
            if (late > bWaitMax) bWaitMax = late;
            if ((rnd.Next(4) == 0) || late > 3000)
            {
                Interlocked.Exchange(ref LastPostQpc, NowUs());
                PostMessageW(hwnd, WM_APP_TICK, IntPtr.Zero, IntPtr.Zero);
            }
            int ml = (int)Interlocked.Read(ref LastMsgLatMax);
            if (ml > 0) { msgLat.Add(ml); Interlocked.Exchange(ref LastMsgLatMax, 0); if (ml > bMsgMax) bMsgMax = ml; }
            bCount++;
            lock (Sync) bBroadcast = Broadcasts.Count;
            if (now - bucketStart >= 100000)
            {
                buckets.Add(string.Format("{0:HH:mm:ss.fff},{1},{2},{3},{4}",
                    DateTime.Now, bWaitMax, bMsgMax, bCount, bBroadcast - lastBroadcastCount));
                lastBroadcastCount = bBroadcast;
                bucketStart = now; bWaitMax = 0; bMsgMax = 0; bCount = 0;
            }
            Thread.Sleep(0);
        }

        CloseHandle(timer);
        using (var w = new StreamWriter(outPath, false, new UTF8Encoding(false)))
        {
            w.WriteLine("time,wait_late_max_us,msg_lat_max_us,ticks,broadcasts");
            foreach (var b in buckets) w.WriteLine(b);
            w.WriteLine("# broadcasts");
            foreach (var b in Broadcasts) w.WriteLine(b);
        }
        int[] wa = waitLate.ToArray(); int[] ma = msgLat.ToArray();
        Array.Sort(wa); Array.Sort(ma);
        Func<int[], int, int> pct = (a, p) => a.Length == 0 ? 0 : a[Math.Min(a.Length - 1, (int)(a.Length * p / 100.0))];
        Console.WriteLine("duration_s=" + seconds + " ticks=" + wa.Length + " msg_samples=" + ma.Length);
        Console.WriteLine(string.Format("wait_late_us p50={0} p95={1} p99={2} max={3}", pct(wa, 50), pct(wa, 95), pct(wa, 99), wa.Length > 0 ? wa[wa.Length - 1] : 0));
        Console.WriteLine(string.Format("msg_lat_us  p50={0} p95={1} p99={2} max={3}", pct(ma, 50), pct(ma, 95), pct(ma, 99), ma.Length > 0 ? ma[ma.Length - 1] : 0));
        Console.WriteLine("broadcasts=" + Broadcasts.Count);
        lock (Sync)
            foreach (var kv in BroadcastCount) Console.WriteLine("  " + MsgName(kv.Key) + " x" + kv.Value);
    }
}
