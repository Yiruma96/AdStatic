package adstatic.test;

import soot.*;
import soot.jimple.Constant;
import soot.jimple.Stmt;
import soot.jimple.toolkits.infoflow.SimpleMethodInfoFlowAnalysis;
import soot.options.Options;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.graph.UnitGraph;
import soot.toolkits.scalar.*;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

public class SootTest5 {

    public static void main(String[] args) {
        Options.v().set_src_prec(Options.src_prec_class);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_process_dir(Arrays.asList("G:\\FlowDroid\\JAADAS-master\\toJimple\\BranchTest\\class"));
        Options.v().set_soot_classpath("G:/FlowDroid/rt.jar");
        //Options.v().set_android_jars("G:/FlowDroid/platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        //Options.v().set_prepend_classpath(true);
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        //FastHierarchy fastHierarchy = Scene.v().getOrMakeFastHierarchy();
        for (SootClass sc : Scene.v().getApplicationClasses()) {

            if(sc.toString().equals("BranchTest")) {
                for (SootMethod sm : sc.getMethods()) {

                    if(sm.getSignature().equals("<BranchTest: int calculate()>")){
                        Body body = sm.getActiveBody();
                        UnitGraph graph = new BriefUnitGraph(body);

//                       SmartLocalDefs defAnalysis = SmartLocalDefsPool.v().getSmartLocalDefsFor(body);
//                       SimpleLocalUses useAnalysis = new SimpleLocalUses(graph, defAnalysis);


//                        get units
                        Unit getUnit = null;
                        for (Unit unit: body.getUnits()) {
                            Stmt temp = (Stmt) unit;
                            temp.getInvokeExpr();
                            temp.containsInvokeExpr();
                            temp.containsArrayRef();
                            temp.getArrayRef();
                            temp.getArrayRefBox();
                            temp.containsFieldRef();
                            //temp.get
                            if(unit.toString().equals("return b2")){
                                getUnit = unit;
                            }
                        }




                        TestFlowAnalysis haha = new TestFlowAnalysis(graph);
                        Map<Local, Constant> retu = haha.getFlowBefore(getUnit);
                        System.out.println("++++++++++++++++++++++++++");
                        Map.Entry<Local, Constant> temp = null;
                        Iterator<Map.Entry<Local, Constant>> it = retu.entrySet().iterator();

                           while(it.hasNext()){
                               temp = it.next();
                               System.out.println(temp.getKey() + "  ||  " + temp.getValue());
                           }



//                        //get Local
//                        Local getLocal = null;
//                        for (Local lo : useAnalysis.getUsedVariables()) {
//                            if(lo.toString().equals("r0")){
//                                getLocal = lo;
//                                System.out.println(getLocal);
//                            }
//                        }
//
//                        System.out.println("=======================");
//                        for (Unit unit : defAnalysis.getDefsOfAt(getLocal, getUnit)) {
//                            System.out.println(unit);
//                        }
//                        System.out.println("=======================");
//                        for (Unit unit : body.getUnits()) {
//                            System.out.println(unit);
//                        }

//                        //查看控制流图
//                        for (Unit unit : graph.getSuccsOf(graph.getSuccsOf(graph.getSuccsOf(graph.getSuccsOf(getUnit).get(0)).get(0)).get(0))) {
//                            System.out.println(unit);
//                        }

                    }

                }
            }
        }

//        PackManager.v().writeOutput();
    }
}
