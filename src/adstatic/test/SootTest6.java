package adstatic.test;

import soot.*;
import soot.baf.ReturnVoidInst;
import soot.grimp.NewInvokeExpr;
import soot.jimple.*;
import soot.jimple.internal.JVirtualInvokeExpr;
import soot.jimple.toolkits.infoflow.SimpleMethodInfoFlowAnalysis;
import soot.options.Options;
import soot.shimple.PhiExpr;
import soot.shimple.PiExpr;
import soot.shimple.ShimpleExpr;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.graph.UnitGraph;
import soot.toolkits.scalar.*;

import java.util.*;

public class SootTest6 {

    public static void main(String[] args) {
        Options.v().set_src_prec(Options.src_prec_class);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_process_dir(Arrays.asList("G:\\FlowDroid\\JAADAS-master\\toJimple\\alias\\class"));
        Options.v().set_soot_classpath("G:/FlowDroid/rt.jar");
        //Options.v().set_android_jars("G:/FlowDroid/platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        //Options.v().set_prepend_classpath(true);
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        for (SootClass sc : Scene.v().getApplicationClasses()) {

//            if(sc.toString().equals("FlightInformation")) {
                for (SootMethod sm : sc.getMethods()) {
                    Body body = sm.getActiveBody();

                    if(sm.hasActiveBody()){
                        for (Unit unit : sm.getActiveBody().getUnits()) {
                            Stmt stmt = (Stmt)unit;
//                            getStmt(stmt);
                            if (stmt instanceof DefinitionStmt){

                                System.out.println("================");
                                System.out.println(stmt);
                                System.out.println(getInvokeStmtBaseLocal(stmt));
                                //getExpr(((DefinitionStmt) stmt).getRightOp());
                            }
                        }
                    }

                }
//            }
        }

//        PackManager.v().writeOutput();
    }

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

    public static void getStmt(Unit unit){
        if (unit instanceof AssignStmt){
            System.out.println("AssignStmt : " + unit.toString());
        }
        if (unit instanceof BreakpointStmt){
            System.out.println("BreakpointStmt : " + unit.toString());
        }
        if (unit instanceof DefinitionStmt){
            System.out.println("DefinitionStmt : " + unit.toString());
        }
        if (unit instanceof EnterMonitorStmt){
            System.out.println("EnterMonitorStmt : " + unit.toString());
        }
        if (unit instanceof ExitMonitorStmt){
            System.out.println("ExitMonitorStmt : " + unit.toString());
        }
        if (unit instanceof GotoStmt){
            System.out.println("GotoStmt : " + unit.toString());
        }
        if (unit instanceof IdentityStmt){
            System.out.println("IdentityStmt : " + unit.toString());
        }
        if (unit instanceof IfStmt){
            System.out.println("IfStmt : " + unit.toString());
        }
        if (unit instanceof InvokeStmt){
            System.out.println("InvokeStmt : " + unit.toString());
        }
        if (unit instanceof LookupSwitchStmt){
            System.out.println("LookupSwitchStmt : " + unit.toString());
        }
        if (unit instanceof MonitorStmt){
            System.out.println("MonitorStmt : " + unit.toString());
        }
        if (unit instanceof NopStmt){
            System.out.println("NopStmt : " + unit.toString());
        }
        if (unit instanceof RetStmt){
            System.out.println("RetStmt : " + unit.toString());
        }
        if (unit instanceof ReturnStmt){
            System.out.println("ReturnStmt : " + unit.toString());
        }
        if (unit instanceof ReturnVoidInst){
            System.out.println("ReturnVoidInst : " + unit.toString());
        }
        if (unit instanceof SwitchStmt){
            System.out.println("SwitchStmt : " + unit.toString());
        }
        if (unit instanceof TableSwitchStmt){
            System.out.println("TableSwitchStmt : " + unit.toString());
        }
        if (unit instanceof ThrowStmt){
            System.out.println("ThrowStmt : " + unit.toString());
        }


    }

    public static Local getInvokeStmtBaseLocal(Unit unit){
        Stmt stmt = (Stmt) unit;
        InvokeExpr invokeExpr = null;
        if(stmt.containsInvokeExpr())
            invokeExpr = stmt.getInvokeExpr();
        else
            return null;

        try{
            if(unit.toString().split("<", 2)[0].endsWith(".")){
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

        return null;
    }
}
