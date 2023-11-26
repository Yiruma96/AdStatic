package adstatic.tools;

import soot.*;
import soot.baf.ReturnVoidInst;
import soot.grimp.NewInvokeExpr;
import soot.jimple.*;
import soot.jimple.internal.JCastExpr;
import soot.shimple.PhiExpr;
import soot.shimple.PiExpr;
import soot.shimple.ShimpleExpr;
import soot.toolkits.graph.UnitGraph;
import soot.toolkits.scalar.ForwardFlowAnalysis;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class LocalAliasAnalysis extends ForwardFlowAnalysis<Unit, Set<Set<Value>>> {

    private Body body;
    private Set<String> taintWrapper;
    private Set<String> sourceMethod;
    private Set<Value> temp;

    public LocalAliasAnalysis(UnitGraph graph) {
        super(graph);

        temp = new HashSet<Value>();
        taintWrapper = new HashSet<String>();
        sourceMethod = new HashSet<String>();
        try {
            Scanner taintWrapperScanner = new Scanner(new FileInputStream("EasyTaintWrapperSource.txt"));
            Scanner sourceMethodScanner = new Scanner(new FileInputStream("Sources.txt"));

            while(taintWrapperScanner.hasNext())
                taintWrapper.add(taintWrapperScanner.next());
            while(sourceMethodScanner.hasNext())
                sourceMethod.add(sourceMethodScanner.next());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        body = graph.getBody();
        doAnalysis();
    }

    @Override
    /*
    考虑后看到，这个列表是无法做到每一个value都仅仅在一个Set<Value>中的，在污点函数中，将可能有多个函数参数指向左操作数，
    因此在匹配value并向其中有指定Value的列表中添加新的Alias时候，需要进行全部匹配
     */
    protected void flowThrough(Set<Set<Value>> in, Unit unit, Set<Set<Value>> out) {
        out.clear();
        out.addAll(in);

        System.out.println("====================");

        temp.clear();
        getStmt(unit);
        if (unit instanceof DefinitionStmt){
            System.out.println("进去啦");
            DefinitionStmt stmt = (DefinitionStmt) unit;

            Value rightOp = stmt.getRightOp();
            Value leftOp = stmt.getLeftOp();

            //对右操作数做出整理
            if(rightOp instanceof Expr || rightOp instanceof ArrayRef || rightOp instanceof Constant || rightOp instanceof Local){
                //强制类型转换表达式
                //获得强制类型转换的操作数录入
                if(rightOp instanceof JCastExpr){
                    temp.add( ((JCastExpr) rightOp).getOp() );
                }
                //对象初始化表达式
                //直接将整个初始化表达式录入
                if(rightOp instanceof NewExpr){
                    temp.add(rightOp);
                }
                //AddExpr表达式
                //将左右操作数为Local类型的录入
                if(rightOp instanceof AddExpr){
                    if(((AddExpr) rightOp).getOp2() instanceof Local)
                        temp.add(((AddExpr) rightOp).getOp2());
                    if(((AddExpr) rightOp).getOp1() instanceof Local)
                        temp.add(((AddExpr) rightOp).getOp1());
                }
                //数组类型
                //将数组类型的基类录入
                if(rightOp instanceof ArrayRef) {
                    temp.add( ((ArrayRef) rightOp).getBase() );
                }
                //常量
                //将常量录入
                if(rightOp instanceof Constant){
                    temp.add(rightOp);
                }
                //函数调用表达式
                if(rightOp instanceof InvokeExpr){
                    InvokeExpr invokeExpr = ((InvokeExpr) rightOp);
                    //污点包装函数--》将所有函数参数作为资源点
                    if(taintWrapper.contains(invokeExpr.getMethod().getSignature())) {
                        temp.addAll(invokeExpr.getArgs());
                    }
                    //资源函数，直接将函数表达式作为资源点
                    if(sourceMethod.contains(invokeExpr.getMethod().getSignature())){
                        temp.add(invokeExpr);
                    }
                }

                //对右操作数识别完成，开始录入out中
                boolean find;
                System.out.println("录入："+temp);
                for (Value v : temp) {
                    find = false;
                    for (Set<Value> s: out){
                        if(s.contains(v)){
                            s.add(leftOp);
                            find = true;
                        }
                    }
                    if(!find){
                        Set<Value> newSet = new HashSet<Value>();
                        newSet.add(leftOp);
                        newSet.add(v);
                        out.add(newSet);
                    }
                }
            }

        }

        //处理InvokeStmt语句，考虑到很多污点包装函数并不是Def语句，所以这里将里面的参数提取出来，加到此函数的Local对象列表中去
        boolean find = false;
        if(unit instanceof InvokeStmt){
            Local funBase = getInvokeStmtBaseLocal(unit);
            if(funBase != null && ((InvokeStmt) unit).getInvokeExpr().getArgs().size()!=0){
                for (Set<Value> s : out) {
                    if(s.contains(funBase)){
                        s.addAll(((InvokeStmt) unit).getInvokeExpr().getArgs());
                        find = true;
                    }
                }
                if(!find){
                    Set<Value> newSet = new HashSet<Value>();
                    newSet.addAll(((InvokeStmt) unit).getInvokeExpr().getArgs());
                    newSet.add(funBase);
                    out.add(newSet);
                }
            }
        }


        System.out.println(unit);
        System.out.println("in 为：");
        for (Set<Value> s : in) {
            for (Value v : s) {
                System.out.print(v+",");
            }
            System.out.println();
        }
        System.out.println("out 为：");
        for (Set<Value> s : out) {
            for (Value v : s) {
                System.out.print(v+",");
            }
            System.out.println();
        }
    }

    @Override
    protected Set<Set<Value>> newInitialFlow() {
        return new HashSet<Set<Value>>();
    }

    @Override
    protected Set<Set<Value>> entryInitialFlow() {
        return new HashSet<Set<Value>>();
    }

    @Override
    //Union Method
    protected void merge(Set<Set<Value>> in1, Set<Set<Value>> in2, Set<Set<Value>> out) {
        out.clear();
        out.addAll(in1);
        out.addAll(in2);
    }

    @Override
    protected void copy(Set<Set<Value>> source, Set<Set<Value>> dest) {
        dest.clear();
        dest.addAll(source);
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
}
