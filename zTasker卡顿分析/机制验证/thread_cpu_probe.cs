// Samples per-thread CPU time (GetThreadTimes) to show periodic main-thread work.
// Usage: thread_cpu_probe.exe <tid> <seconds> <out.csv>
using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;

static class T
{
    [DllImport("kernel32.dll", SetLastError = true)] static extern IntPtr OpenThread(uint access, bool inherit, uint tid);
    [DllImport("kernel32.dll", SetLastError = true)] static extern bool GetThreadTimes(IntPtr h, out long c, out long e, out long k, out long u);
    [DllImport("kernel32.dll")] static extern bool CloseHandle(IntPtr h);

    static double Ms(long t) { return t / 10000.0; }

    static void Main(string[] args)
    {
        uint tid = uint.Parse(args[0]);
        int seconds = args.Length > 1 ? int.Parse(args[1]) : 8;
        string outPath = args.Length > 2 ? args[2] : "thread_cpu.csv";
        IntPtr h = OpenThread(0x0040, false, tid);
        if (h == IntPtr.Zero) { Console.WriteLine("OpenThread failed " + Marshal.GetLastWin32Error()); return; }
        var rows = new List<string>();
        long pc, pe, pk, pu; GetThreadTimes(h, out pc, out pe, out pk, out pu);
        double prev = Ms(pk) + Ms(pu);
        var start = DateTime.UtcNow;
        double bucketMax = 0, bucketSum = 0; int bucketN = 0; int bucket = 0;
        while ((DateTime.UtcNow - start).TotalSeconds < seconds)
        {
            Thread.Sleep(20);
            long c, e, k, u; GetThreadTimes(h, out c, out e, out k, out u);
            double now = Ms(k) + Ms(u);
            double d = now - prev; prev = now;
            if (d > bucketMax) bucketMax = d;
            bucketSum += d; bucketN++;
            int b = (int)(DateTime.UtcNow - start).TotalSeconds;
            if (b != bucket)
            {
                rows.Add(string.Format("{0},{1:F2},{2:F2},{3}", bucket, bucketMax, bucketSum, bucketN));
                Console.WriteLine("sec " + bucket + " max=" + bucketMax.ToString("F2") + "ms sum=" + bucketSum.ToString("F2") + "ms");
                bucket = b; bucketMax = 0; bucketSum = 0; bucketN = 0;
            }
        }
        CloseHandle(h);
        File.WriteAllLines(outPath, rows, new UTF8Encoding(false));
    }
}
