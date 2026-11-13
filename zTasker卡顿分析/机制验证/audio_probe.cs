// Measures the cost of zTasker Volume.dll's CVolCtrl path (COM MMDeviceEnumerator
// + EnumAudioEndpoints), which is executed for every volume task. Read-only: GetVol only.
// Usage: audio_probe.exe <iterations> <out.csv>
using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;

static class A
{
    [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern IntPtr LoadLibraryW(string path);
    [DllImport("kernel32.dll", SetLastError = true)]
    static extern IntPtr GetProcAddress(IntPtr h, string name);

    [UnmanagedFunctionPointer(CallingConvention.ThisCall)]
    delegate IntPtr Ctor(IntPtr self);
    [UnmanagedFunctionPointer(CallingConvention.ThisCall)]
    delegate void Dtor(IntPtr self);
    [UnmanagedFunctionPointer(CallingConvention.ThisCall)]
    delegate uint GetVol(IntPtr self);

    static void Main(string[] args)
    {
        int n = args.Length > 0 ? int.Parse(args[0]) : 10;
        string outPath = args.Length > 1 ? args[1] : "audio.csv";
        string dll = args.Length > 2 ? args[2] : @"C:\Users\14986\AppData\Local\zTasker\Volume.dll";
        int interval = args.Length > 3 ? int.Parse(args[3]) : 0;
        IntPtr h = LoadLibraryW(dll);
        if (h == IntPtr.Zero) { Console.WriteLine("LoadLibrary failed " + Marshal.GetLastWin32Error()); return; }
        IntPtr pCtor = GetProcAddress(h, "??0CVolCtrl@@QAE@XZ");
        IntPtr pDtor = GetProcAddress(h, "??1CVolCtrl@@QAE@XZ");
        IntPtr pGet = GetProcAddress(h, "?GetVol@CVolCtrl@@QAEIXZ");
        if (pCtor == IntPtr.Zero || pDtor == IntPtr.Zero || pGet == IntPtr.Zero) { Console.WriteLine("exports missing"); return; }
        var ctor = (Ctor)Marshal.GetDelegateForFunctionPointer(pCtor, typeof(Ctor));
        var dtor = (Dtor)Marshal.GetDelegateForFunctionPointer(pDtor, typeof(Dtor));
        var getv = (GetVol)Marshal.GetDelegateForFunctionPointer(pGet, typeof(GetVol));

        using (var w = new StreamWriter(outPath, false, new UTF8Encoding(false)))
        {
            w.WriteLine("time,iter,duration_ms,volume");
            for (int i = 0; i < n; i++)
            {
                IntPtr obj = Marshal.AllocHGlobal(32);
                for (int k = 0; k < 32; k++) Marshal.WriteByte(obj, k, 0);
                var sw = Stopwatch.StartNew();
                ctor(obj);
                uint v = getv(obj);
                dtor(obj);
                sw.Stop();
                Marshal.FreeHGlobal(obj);
                w.WriteLine(string.Format("{0:HH:mm:ss.fff},{1},{2:F2},{3}", DateTime.Now, i, sw.Elapsed.TotalMilliseconds, v));
                Console.WriteLine("iter " + i + " " + sw.Elapsed.TotalMilliseconds.ToString("F2") + " ms vol=" + v);
                if (interval > 0) System.Threading.Thread.Sleep(interval);
            }
        }
    }
}
