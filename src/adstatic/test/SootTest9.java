package adstatic.test;

import adstatic.tools.MyTools;
import adstatic.tools.ObjectFlowAnalysis;
import soot.*;
import soot.grimp.NewInvokeExpr;
import soot.jimple.*;
import soot.options.Options;
import soot.shimple.PhiExpr;
import soot.shimple.PiExpr;
import soot.shimple.ShimpleExpr;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.graph.UnitGraph;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;


public class SootTest9 {
    public static void getExpr(Value value){
        if (value instanceof AddExpr){
            System.out.println("AddExpr : " + value.toString());
        }
        if (value instanceof AndExpr){
            System.out.println("AndExpr" + value.toString());
        }
        if (value instanceof AnyNewExpr){
            System.out.println("AnyNewExpr : " + value.toString());
        }
        if (value instanceof BinopExpr){
            System.out.println("BinopExpr : " + value.toString());
        }
        if (value instanceof CastExpr){
            System.out.println("CastExpr : " + value.toString());
        }
        if (value instanceof CmpExpr){
            System.out.println("CmpExpr : " + value.toString());
        }
        if (value instanceof CmpgExpr){
            System.out.println("CmpgExpr : " + value.toString());
        }
        if (value instanceof CmplExpr){
            System.out.println("CmplExpr : " + value.toString());
        }
        if (value instanceof ConditionExpr){
            System.out.println("ConditionExpr : " + value.toString());
        }
        if (value instanceof DivExpr){
            System.out.println("DivExpr : " + value.toString());
        }
        if (value instanceof DynamicInvokeExpr){
            System.out.println("DynamicInvokeExpr : " + value.toString());
        }
        if (value instanceof EqExpr){
            System.out.println("EqExpr : " + value.toString());
        }
        if (value instanceof GeExpr){
            System.out.println("GeExpr : " + value.toString());
        }
        if (value instanceof GtExpr){
            System.out.println("GtExpr : " + value.toString());
        }
        if (value instanceof InstanceInvokeExpr){
            System.out.println("InstanceInvokeExpr : " + value.toString());
        }
        if (value instanceof InstanceOfExpr){
            System.out.println("InstanceOfExpr : " + value.toString());
        }
        if (value instanceof InterfaceInvokeExpr){
            System.out.println("InterfaceInvokeExpr : " + value.toString());
        }
        if (value instanceof InvokeExpr){
            System.out.println("InvokeExpr : " + value.toString());
        }
        if (value instanceof LeExpr){
            System.out.println("LeExpr : " + value.toString());
        }
        if (value instanceof LengthExpr){
            System.out.println("LengthExpr : " + value.toString());
        }
        if (value instanceof LtExpr){
            System.out.println("LtExpr : " + value.toString());
        }
        if (value instanceof MulExpr){
            System.out.println("MulExpr : " + value.toString());
        }
        if (value instanceof NeExpr){
            System.out.println("NeExpr : " + value.toString());
        }
        if (value instanceof NegExpr){
            System.out.println("NegExpr : " + value.toString());
        }
        if (value instanceof NewArrayExpr){
            System.out.println("NewArrayExpr : " + value.toString());
        }
        if (value instanceof NewExpr){
            System.out.println("NewExpr : " + value.toString());
        }
        if (value instanceof NewInvokeExpr){
            System.out.println("NewInvokeExpr : " + value.toString());
        }
        if (value instanceof NewMultiArrayExpr){
            System.out.println("NewMultiArrayExpr : " + value.toString());
        }
        if (value instanceof OrExpr){
            System.out.println("OrExpr : " + value.toString());
        }
        if (value instanceof PhiExpr){
            System.out.println("PhiExpr : " + value.toString());
        }
        if (value instanceof PiExpr){
            System.out.println("PiExpr : " + value.toString());
        }
        if (value instanceof RemExpr){
            System.out.println("RemExpr : " + value.toString());
        }
        if (value instanceof ShimpleExpr){
            System.out.println("ShimpleExpr : " + value.toString());
        }
        if (value instanceof ShlExpr){
            System.out.println("ShlExpr : " + value.toString());
        }
        if (value instanceof ShrExpr){
            System.out.println("ShrExpr : " + value.toString());
        }
        if (value instanceof SpecialInvokeExpr){
            System.out.println("SpecialInvokeExpr : " + value.toString());
        }
        if (value instanceof StaticInvokeExpr){
            System.out.println("StaticInvokeExpr : " + value.toString());
        }
        if (value instanceof SubExpr){
            System.out.println("SubExpr" + value.toString());
        }
        if (value instanceof UnopExpr){
            System.out.println("UnopExpr : " + value.toString());
        }
        if (value instanceof UshrExpr){
            System.out.println("UshrExpr : " + value.toString());
        }
        if (value instanceof VirtualInvokeExpr){
            System.out.println("VirtualInvokeExpr : " + value.toString());
        }
        if (value instanceof XorExpr){
            System.out.println("XorExpr : " + value.toString());
        }
    }

    public Local getInvokeStmtBaseLocal(Unit unit){
        if (unit instanceof InvokeStmt){
            try{
                if(unit.toString().split("<", 2)[0].endsWith(".")){
                    InvokeExpr invokeExpr = ((InvokeStmt) unit).getInvokeExpr();
                    System.out.println(unit);

                    Set<Value> arg = new HashSet<Value>(invokeExpr.getArgs());
                    for (ValueBox vb : unit.getUseBoxes()) {
                        if(vb.getValue() instanceof Local){
                            if(!arg.contains(vb.getValue()) && vb.getValue() instanceof Local)
                                return (Local)vb.getValue();
                        }
                    }
                }
            }catch(Exception e){
                return null;
            }
        }
        return null;
    }


    public static void main(String[] args) {
        Options.v().set_src_prec(Options.src_prec_class);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_process_dir(Arrays.asList("G:\\FlowDroid\\JAADAS-master\\toJimple\\alias\\class"));
        Options.v().set_soot_classpath("G:/FlowDroid/rt.jar");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        System.out.println();

        for (SootClass i: Scene.v().getApplicationClasses()) {
            //System.out.println(i);
            if (i.toString().equals("FunTest")){
                for (SootMethod sm : i.getMethods()) {
                    //System.out.println(sm.getSignature());
                    if (sm.toString().equals("<FunTest: void main(java.lang.String[])>")){
                        System.out.println(sm.getActiveBody());
                        Body body = sm.getActiveBody();
                        UnitGraph graph = new BriefUnitGraph(body);

                        ObjectFlowAnalysis objectFlowAnalysis = new ObjectFlowAnalysis(graph);

                        MyTools.printHashMap(objectFlowAnalysis.getFlowAfter(null));
                    }
                }
            }

        }




    }
}
