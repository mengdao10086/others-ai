// 用途：在 headless 模式下反编译 libandroidfw 中所有名字含 IsDarkModeSupported 的函数，输出 C 伪代码
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;

public class DumpDarkMode extends GhidraScript {
    @Override
    public void run() throws Exception {
        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);
        int n = 0;
        for (Function f : currentProgram.getFunctionManager().getFunctions(true)) {
            if (f.getName().contains("IsDarkModeSupported")) {
                n++;
                println("==== " + f.getName() + " @ " + f.getEntryPoint());
                DecompileResults r = di.decompileFunction(f, 120, monitor);
                if (r != null && r.decompileCompleted()) {
                    println(r.getDecompiledFunction().getC());
                } else {
                    println("decompile failed: " + (r == null ? "null" : r.getErrorMessage()));
                }
            }
        }
        println("total matched functions: " + n);
    }
}
