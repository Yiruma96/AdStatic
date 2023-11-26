package adstatic.test;

import soot.*;
import soot.options.Options;
import java.util.Arrays;


public class toJimple {

    public static void main(String[] args) {
        Options.v().set_src_prec(Options.src_prec_class);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_process_dir(Arrays.asList("G:\\FlowDroid\\JAADAS-master\\toJimple\\alias\\class"));
        Options.v().set_soot_classpath("G:/FlowDroid/rt.jar");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        PackManager.v().writeOutput();
    }
}
