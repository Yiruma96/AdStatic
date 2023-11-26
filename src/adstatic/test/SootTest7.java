package adstatic.test;

import adstatic.tools.LocalInfo;
import adstatic.tools.MyTools;
import adstatic.tools.ObjectFlowAnalysis;
import com.sun.xml.internal.bind.v2.runtime.reflect.opt.Const;
import soot.*;
import soot.grimp.NewInvokeExpr;
import soot.jimple.*;
import soot.options.Options;
import soot.shimple.PhiExpr;
import soot.shimple.PiExpr;
import soot.shimple.ShimpleExpr;
import soot.toolkits.graph.BriefUnitGraph;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import java.lang.reflect.Array;
import java.util.*;


public class SootTest7 {
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

        //Scene.v().ca;

//        FastHierarchy fastHierarchy = Scene.v().getOrMakeFastHierarchy();
//        SootClass sootClass = Scene.v().getSootClass("javax.swing.JFrame");
//        System.out.println(fastHierarchy.getSubclassesOf(sootClass).toString());

        for (SootClass i: Scene.v().getApplicationClasses()) {
            i.isInterface();
            i.getMethods();
            for (SootMethod sm : i.getMethods()) {
                System.out.println(sm.getSignature());
                if (sm.hasActiveBody() && sm.getSignature().equals("<FunTest: void main(java.lang.String[])>")) {

                    Body body = sm.getActiveBody();

                    BriefUnitGraph unitGraph = new BriefUnitGraph(body);
                    //LocalAliasAnalysis analysis = new LocalAliasAnalysis(unitGraph);
                    ObjectFlowAnalysis objectFlowAnalysis = new ObjectFlowAnalysis(unitGraph);

////                    get Local
//                    Local getLocal = null;
//                    for (Local local : body.getLocals()) {
//                        //System.out.println(local);
//                        if(local.toString().equals("r2")){
//                            getLocal = local;
//                            break;
//                        }
//                    }


//                    get units
                        Unit getUnit = null;
                        for (Unit unit: body.getUnits()) {
                            //System.out.println(unit);
                            if(unit.toString().equals("return")){
                                getUnit = unit;
                                break;
                            }
                        }

                    //System.out.println(getUnit);

                    //Set<Set<Value>> retu = analysis.getFlowBefore(getUnit);
                    HashMap<Local, LocalInfo> objectMap = objectFlowAnalysis.getFlowBefore(getUnit);
                    //MyTools.printHashMap(objectMap);
                    Set<String> myTraintWrapper = MyTools.getTraintWrapper();
                    for (Local getLocal : body.getLocals()) {
                        List<Constant> localConstant = MyTools.localToConstant(getLocal, objectMap, myTraintWrapper);

                        System.out.println("=========================");
                        System.out.println(getLocal);
                        for (Constant constant: localConstant) {
                            System.out.println(constant);
                        }
                    }


//                    for (Set<Value> s : retu) {
//                        for (Value v : s) {
//                            System.out.println(s);
//                        }
//                    }


//                    for (Unit unit : body.getUnits()) {
//                        Stmt stmt = (Stmt)unit;
//                        if(stmt.containsInvokeExpr()){
//                        }
//                    }
                }
            }
        }




    }
}
