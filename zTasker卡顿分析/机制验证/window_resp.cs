// Lists top-level windows and their WM_NULL response time (read-only probe).
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Text;

static class W
{
    delegate bool EnumProc(IntPtr h, IntPtr l);
    [DllImport("user32.dll")] static extern bool EnumWindows(EnumProc cb, IntPtr l);
    [DllImport("user32.dll")] static extern uint GetWindowThreadProcessId(IntPtr h, out uint pid);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)] static extern int GetWindowTextW(IntPtr h, StringBuilder s, int n);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)] static extern int GetClassNameW(IntPtr h, StringBuilder s, int n);
    [DllImport("user32.dll")] static extern bool IsWindowVisible(IntPtr h);
    [DllImport("user32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern IntPtr SendMessageTimeoutW(IntPtr h, uint msg, IntPtr w, IntPtr l, uint flags, uint timeout, out IntPtr res);

    static void Main(string[] args)
    {
        uint timeout = args.Length > 0 ? uint.Parse(args[0]) : 200;
        var rows = new List<string>();
        EnumWindows((h, l) =>
        {
            uint pid; GetWindowThreadProcessId(h, out pid);
            var t = new StringBuilder(256); GetWindowTextW(h, t, 256);
            var c = new StringBuilder(256); GetClassNameW(h, c, 256);
            bool vis = IsWindowVisible(h);
            var sw = Stopwatch.StartNew(); IntPtr res;
            IntPtr r = SendMessageTimeoutW(h, 0, IntPtr.Zero, IntPtr.Zero, 0x2, timeout, out res);
            sw.Stop();
            rows.Add(string.Format("{0},{1},{2},{3},{4},{5:F1},{6}", h, pid, vis ? 1 : 0, r, c.ToString(), sw.Elapsed.TotalMilliseconds, t.ToString()));
            return true;
        }, IntPtr.Zero);
        Console.WriteLine("hwnd,pid,visible,ret,class,ms,title");
        foreach (var r in rows) Console.WriteLine(r);
    }
}
