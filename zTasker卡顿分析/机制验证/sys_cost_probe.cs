// Measures costs of the primitives zTasker uses: NtQuerySystemInformation(5, 1MB),
// Toolhelp32 process enumeration, and a WMI Win32_Process query (GetCmdlineWMI path).
// Usage: sys_cost_probe.exe <iterations> <out.csv> [wmi]
using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;

static class S
{
    [DllImport("ntdll.dll")]
    static extern int NtQuerySystemInformation(int cls, IntPtr buf, int len, out int ret);
    [DllImport("kernel32.dll", SetLastError = true)]
    static extern IntPtr CreateToolhelp32Snapshot(uint flags, uint pid);
    [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern bool Process32FirstW(IntPtr snap, ref PROCESSENTRY32W pe);
    [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern bool Process32NextW(IntPtr snap, ref PROCESSENTRY32W pe);
    [DllImport("kernel32.dll")] static extern bool CloseHandle(IntPtr h);
    [DllImport("kernel32.dll")] static extern IntPtr GetProcessHeap();
    [DllImport("kernel32.dll")] static extern IntPtr HeapAlloc(IntPtr h, uint f, UIntPtr s);
    [DllImport("kernel32.dll")] static extern bool HeapFree(IntPtr h, uint f, IntPtr p);

    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
    struct PROCESSENTRY32W
    {
        public uint dwSize; public uint cntUsage; public uint th32ProcessID;
        public IntPtr th32DefaultHeapID; public uint th32ModuleID; public uint cntThreads;
        public uint th32ParentProcessID; public int pcPriClassBase; public uint dwFlags;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 260)] public string szExeFile;
    }

    static double NtQuery(int iters)
    {
        int size = 0x100000;
        IntPtr buf = HeapAlloc(GetProcessHeap(), 0, (UIntPtr)size);
        var sw = Stopwatch.StartNew();
        for (int i = 0; i < iters; i++)
        {
            int ret;
            NtQuerySystemInformation(5, buf, size, out ret);
        }
        sw.Stop();
        HeapFree(GetProcessHeap(), 0, buf);
        return sw.Elapsed.TotalMilliseconds / iters;
    }

    static double Toolhelp(int iters)
    {
        var sw = Stopwatch.StartNew();
        for (int i = 0; i < iters; i++)
        {
            IntPtr snap = CreateToolhelp32Snapshot(2, 0);
            if (snap != (IntPtr)(-1))
            {
                var pe = new PROCESSENTRY32W(); pe.dwSize = (uint)Marshal.SizeOf(typeof(PROCESSENTRY32W));
                bool ok = Process32FirstW(snap, ref pe);
                int n = 0;
                while (ok) { n++; ok = Process32NextW(snap, ref pe); }
                CloseHandle(snap);
            }
        }
        sw.Stop();
        return sw.Elapsed.TotalMilliseconds / iters;
    }

    static double Wmi(int iters, int pid)
    {
        var sw = new Stopwatch();
        double total = 0;
        for (int i = 0; i < iters; i++)
        {
            sw.Restart();
            using (var searcher = new System.Management.ManagementObjectSearcher(
                "SELECT CommandLine,ProcessId  FROM Win32_Process WHERE ProcessId = " + pid))
            using (var col = searcher.Get())
            {
                foreach (var o in col) { var _ = o["CommandLine"]; }
            }
            sw.Stop();
            total += sw.Elapsed.TotalMilliseconds;
        }
        return total / iters;
    }

    static void Main(string[] args)
    {
        int n = args.Length > 0 ? int.Parse(args[0]) : 10;
        string outPath = args.Length > 1 ? args[1] : "cost.csv";
        bool doWmi = args.Length > 2 && args[2] == "wmi";
        double nt = NtQuery(n);
        double th = Toolhelp(n);
        double wm = doWmi ? Wmi(n, Process.GetCurrentProcess().Id) : -1;
        using (var w = new StreamWriter(outPath, false, new UTF8Encoding(false)))
        {
            w.WriteLine("ntquery_1mb_ms,toolhelp_ms,wmi_ms,iterations");
            w.WriteLine(string.Format("{0:F2},{1:F2},{2:F2},{3}", nt, th, wm, n));
        }
        Console.WriteLine(string.Format("NtQuerySystemInformation(5,1MB) avg={0:F2} ms", nt));
        Console.WriteLine(string.Format("Toolhelp32 enumerate avg={0:F2} ms", th));
        if (doWmi) Console.WriteLine(string.Format("WMI Win32_Process avg={0:F2} ms", wm));
    }
}
