// Measures SystemParametersInfo(SPI_SETMOUSESPEED, ..., SPIF_UPDATEINIFILE|SPIF_SENDCHANGE)
// with the CURRENT speed (no visible change). Same call shape as zTasker's mouse-speed action.
using System;
using System.Diagnostics;
using System.Runtime.InteropServices;

static class S
{
    [DllImport("user32.dll", SetLastError = true)]
    static extern bool SystemParametersInfoW(uint action, uint param, IntPtr pv, uint winIni);

    static void Main(string[] args)
    {
        int n = args.Length > 0 ? int.Parse(args[0]) : 3;
        IntPtr buf = Marshal.AllocHGlobal(4);
        SystemParametersInfoW(0x70, 0, buf, 0); // SPI_GETMOUSESPEED
        int cur = Marshal.ReadInt32(buf);
        Console.WriteLine("current mouse speed=" + cur);
        for (int i = 0; i < n; i++)
        {
            var sw = Stopwatch.StartNew();
            bool ok = SystemParametersInfoW(0x71, 0, (IntPtr)cur, 3); // SPI_SETMOUSESPEED, SENDCHANGE
            sw.Stop();
            Console.WriteLine("seq " + i + " ok=" + ok + " " + sw.Elapsed.TotalMilliseconds.ToString("F2") + " ms err=" + Marshal.GetLastWin32Error());
        }
        Marshal.FreeHGlobal(buf);
    }
}
