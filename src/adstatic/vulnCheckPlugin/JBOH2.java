package adstatic.vulnCheckPlugin;

import adstatic.tools.MyTools;
import adstatic.tools.VulnRetu;
import soot.*;
import soot.jimple.Stmt;
import soot.options.Options;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class JBOH2  implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    @Override
    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception {

        for (SootClass sc : Scene.v().getApplicationClasses()) {
            if (!MyTools.isNeedAnalysis(sc.toString(), packageWhiteSet)) {
                continue;
            }

            List<SootMethod> sms = sc.getMethods();

            int i = 0;
            while (i < sms.size()) {
                SootMethod sm = sc.getMethods().get(i);
                if (sm.hasActiveBody()) {
                    Body body = sm.getActiveBody();
                    System.out.println(sm.getSignature());
                    System.out.println(body.toString());
//                    for (Unit unit : body.getUnits()) {
//                        Stmt stmt = (Stmt) unit;
//                    }
                }
                i += 1;
            }
        }

        return null;
    }

    @Override
    public LinkedList<VulnRetu> getResult() {
        return null;
    }

    @Override
    public void printVulnCheckResult() {

    }

    public static void main(String[] args) throws Exception {

        String fullFilePath = "E:/jboh.apk";

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        new JBOH2().check(fullFilePath, MyTools.getPackageWhiteList());
    }
}
