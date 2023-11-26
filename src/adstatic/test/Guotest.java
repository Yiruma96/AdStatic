package adstatic.test;

import soot.PackManager;
import soot.Scene;
import soot.SootClass;
import soot.options.Options;

import java.util.Arrays;

public class Guotest {

    public static void main(String[] args) {

        String fullFilePath = "F:/apk/illusion.apk";

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        for (SootClass sc : Scene.v().getApplicationClasses()) {
            if(sc.toString().startsWith("android.support"))
                continue;
            System.out.println(sc.toString());
        }

        PackManager.v().writeOutput();
    }
}
