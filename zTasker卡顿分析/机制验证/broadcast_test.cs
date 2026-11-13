// Synthetic WM_SETTINGCHANGE broadcast, same call shape as zTasker Utility!SetDarkMode.
// Usage: broadcast_test.exe <count> <interval_ms> <out.csv>
using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;

static class B
{
    [DllImport("user32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern IntPtr SendMessageTimeoutW(IntPtr hWnd, uint msg, IntPtr wParam, IntPtr lParam,
        uint flags, uint timeout, out IntPtr result);
    [DllImport("kernel32.dll")] static extern bool QueryPerformanceCounter(out long v);
    [DllImport("kernel32.dll")] static extern bool QueryPerformanceFrequency(out long v);

    static void Main(string[] args)
    {
        int count = args.Length > 0 ? int.Parse(args[0]) : 5;
        int interval = args.Length > 1 ? int.Parse(args[1]) : 2000;
        string outPath = args.Length > 2 ? args[2] : "broadcast.csv";
        uint flags = args.Length > 3 ? Convert.ToUInt32(args[3], 16) : 0x0002 | 0x0001;
        string lparamText = args.Length > 4 ? args[4] : "Environment";
        IntPtr lparam = lparamText == "NULL" ? IntPtr.Zero : Marshal.StringToHGlobalUni(lparamText);
        long f; QueryPerformanceFrequency(out f);
        using (var w = new StreamWriter(outPath, false, new UTF8Encoding(false)))
        {
            w.WriteLine("time,seq,duration_ms,ret,last_error");
            for (int i = 0; i < count; i++)
            {
                long a, b; QueryPerformanceCounter(out a);
                IntPtr res;
                // HWND_BROADCAST=0xffff, WM_SETTINGCHANGE=0x1a, SMTO_ABORTIFHUNG|SMTO_BLOCK
                IntPtr r = SendMessageTimeoutW((IntPtr)0xffff, 0x1a, IntPtr.Zero, lparam, flags, 1000, out res);
                QueryPerformanceCounter(out b);
                double ms = (b - a) * 1000.0 / f;
                w.WriteLine(string.Format("{0:HH:mm:ss.fff},{1},{2:F2},{3},{4}", DateTime.Now, i, ms, r, Marshal.GetLastWin32Error()));
                if (i < count - 1) Thread.Sleep(interval);
            }
        }
    }
}
