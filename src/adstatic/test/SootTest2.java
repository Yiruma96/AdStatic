package adstatic.test;

import soot.*;
import soot.baf.EnterMonitorInst;
import soot.baf.OpTypeArgInst;
import soot.baf.ReturnVoidInst;
import soot.baf.TableSwitchInst;
import soot.grimp.NewInvokeExpr;
import soot.jimple.*;
import soot.jimple.internal.InvokeExprBox;
import soot.jimple.internal.JAddExpr;
import soot.jimple.internal.JGotoStmt;
import soot.jimple.internal.StmtBox;
import soot.options.Options;
import soot.shimple.PhiExpr;
import soot.shimple.PiExpr;
import soot.shimple.ShimpleExpr;
import sun.font.TrueTypeFont;

import java.util.Arrays;
import java.util.Iterator;

public class SootTest2 {
    public static void main(String[] args) {

        //Options.v().set_src_prec(Options.src_prec_class);
        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        //Options.v().set_process_dir(Arrays.asList("G:\\FlowDroid\\JAADAS-master\\test\\src"));
        Options.v().set_process_dir(Arrays.asList("D:/apk/B.apk"));
        //Options.v().set_soot_classpath("G:/FlowDroid/rt.jar");
        Options.v().set_android_jars("G:/FlowDroid/platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        //Options.v().set_prepend_classpath(true);
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();
        //先拿到所有应用中的类
        for (SootClass i: Scene.v().getApplicationClasses()) {
            //拿到应用中类的方法
            for (SootMethod sm : i.getMethods()) {
                //看下方法的签名
                //System.out.println("============");
                //System.out.println(sm.getSignature());
                //System.out.println("============");
                //如果有方法体的话，打印出来方法的详细内容
                if (sm.hasActiveBody()) {
                    Body body = sm.getActiveBody();

                    //Body body = sm.retrieveActiveBody();
                    //Body body = sm.getActiveBody();
                    Iterator lo = body.getUnits().iterator();
                    while (lo.hasNext()) {
                        Unit unit = (Unit) lo.next();
                        Stmt tb = (Stmt) unit;

//                        if(tb.containsArrayRef()){
//                            System.out.println(unit);
//                            System.out.println(tb.getArrayRef());
//                        }


                        for (ValueBox vb : tb.getUseAndDefBoxes()) {
                            if(vb.getValue() instanceof StaticFieldRef){
                                System.out.println(unit);
                                System.out.println(vb);
                                System.out.println("-----------------------------------");
                            }
                        }

                        if(unit instanceof InvokeStmt){
//                            System.out.println(unit);
//                            for (ValueBox vb :
//                                    tb.getUseBoxes()) {
//                                System.out.println(vb.getValue().toString());
//                            }
//
//                            System.out.println("-----------------------------------");
//                            System.out.println(unit);
//                            if(((AssignStmt) unit).getRightOp() instanceof CastExpr){
//                                System.out.println( ((AssignStmt) unit).getRightOp() );
//                                System.out.println( ((CastExpr) ((AssignStmt) unit).getRightOp()).getOp() );
//                            }
                        }
//                    System.out.println(unit.toString());
//                    System.out.println();



/*====================判断语句类型的操作=====================*/
//                    //获得所有进行调用操作的语句
//                    if (((Stmt) unit).containsInvokeExpr()){
//                        System.out.println(((Stmt) unit).getInvokeExpr());
//                        //一样的，因为value是Expr的父类，无非就是再value instanceof InvokeExpr
//                        //System.out.println(((Stmt) unit).getInvokeExprBox().getValue());
//                    }


//                    //获得所有进行数组操作的语句
//                    if (((Stmt) unit).containsArrayRef()){
//                        System.out.println(unit.toString());
//                        System.out.println(((Stmt) unit).getArrayRef());
//                        System.out.println(((Stmt) unit).getArrayRefBox().getValue());
//                    }

//                    //获得所有含有静态域变量的语句
//                    if (tb.containsFieldRef()){
//                        System.out.println(tb.toString()+":"+tb.getFieldRef().getField().getName());
//                    }

//                    //获得所有里面有goto的语句，也就是要跳转的语句，也可以用来判断能不能顺序往下接着分析
//                    //eg.  if i13 >= $i5 goto label4;      goto label5;
//                    if (unit.branches()){
//                        System.out.println(unit+"**");
//                        JGotoStmt jGotoStmt = (JGotoStmt) unit;
//                        System.out.println(jGotoStmt.branches());
//                    }
//                    //语句中只有goto才是JGotoStmt
//                    //eg. goto label5;
//                    if (unit instanceof JGotoStmt){
//                        System.out.println(unit.toString());
//                    }

//                    System.out.println(unit.toString()+"************");
//                    getStmt(unit);
                    /* 代码类型: JAssignStmt  JIdentityStmt  JNopStmt
                       过程内控制流：JIfStmt  JGotoStmt  JTableSwitchStmt  JLookupSwitchStmt
                       过程间控制流：JInvokeStmt  JReturnStmt  JReturnVoidStmt
                       异常抛出：  JThrowStmt
                       貌似一些状态监视语句： JEnterMonitorStmt  JExitMonitorStmt
                     , 未分类： JBreakpointStmt  JRetStmt
                     , , PlaceholderInst, PlaceholderStmt*/
//                    //unit->转化成AssignStmt的形式，也就是从unit中挑选出所有的assignStmt类型
//                    if (unit instanceof AssignStmt){
//                        AssignStmt assignStmt = (AssignStmt) unit;
//                        System.out.println(assignStmt.toString());
//                    }


/*===================语句内部的操作，使用box->value->Expr类型来进行=====================*/
//++++++++
//virtualinvoke $r0.<com.wiyun.offer.c.a: void setHostnameVerifier(org.apache.http.conn.ssl.X509HostnameVerifier)>($r5)
//所有value为：
//$r5
//$r0
//virtualinvoke $r0.<com.wiyun.offer.c.a: void setHostnameVerifier(org.apache.http.conn.ssl.X509HostnameVerifier)>($r5)
//函数为：
//<org.apache.http.conn.ssl.SSLSocketFactory: void setHostnameVerifier(org.apache.http.conn.ssl.X509HostnameVerifier)>
//函数参数为：
//$r5
//++++++++
//++++++++
//virtualinvoke $r10.<android.webkit.WebView: void addJavascriptInterface(java.lang.Object,java.lang.String)>($r0, "wioffer")
//所有value为：
//$r0
//"wioffer"
//$r10
//virtualinvoke $r10.<android.webkit.WebView: void addJavascriptInterface(java.lang.Object,java.lang.String)>($r0, "wioffer")
//函数为：
//<android.webkit.WebView: void addJavascriptInterface(java.lang.Object,java.lang.String)>
//函数参数为：
//$r0
//"wioffer"
//++++++++

//                    //一个unit里面的组成元素就是value，可以通过getUseBoxes得到，value的基本类型有的是单个元素，有的是Expr，一般我们都比较喜欢Expr
//                    //是不是Expr可以通过instance来判断，如果判断出了一种表达式的类型，就相当于找到了value间的一些关系。
//                    System.out.println(tb.toString()+"********");
//                    for (ValueBox valuebox:unit.getUseBoxes()) {
//                        Value value = valuebox.getValue();
//                        getExpr(value);
//                    }
//                    System.out.println();


//                    //unit->list<valuebox>->valuebox对应得到value->instance转换成各种表达式形式->各种操作
//                    System.out.println(tb.toString()+"********");
//                    for (ValueBox valuebox:unit.getUseBoxes()) {
//                        Value value = valuebox.getValue();
//                        if (value instanceof AddExpr){
//                            System.out.println(value.toString());
//                            AddExpr addExpr = (AddExpr) value;
//                            System.out.println(addExpr.getOp1().getType());
//                            System.out.println(addExpr.getOp2().getType());
//                        }
//                    }

                        //对unit对象所得到的UnitBox的操作，可以获得goto所指向的unit
//                    for (UnitBox unitbox : unit.getUnitBoxes()) {
//                        System.out.println(tb.toString()+"****");
//                        //这里其实unitbox不转换成stmtbox也可以，两个对象在这里具有相同的方法
//                        StmtBox stmtBox = (StmtBox) unitbox;
//                        System.out.println(stmtBox.getUnit().toString());
//                    }

//                  //除了获取valuebox，可以通过直接的containsInvokeExpr来做，然后直接用getInvokeExprBox来获得对应的value，就不用上面遍历list<valuebox>了
//                    if (((Stmt) unit).containsInvokeExpr()){
//                        Value value = ((Stmt) unit).getInvokeExprBox().getValue();
//                        if (value instanceof InvokeExpr){
//                            System.out.println(value.toString());
//                        }
//                    }

//                    //对于非Expr的value，可以进行变量类型判断
//                    value.isInstanceOf[Constant] || value.isInstanceOf[StaticFieldRef]

//                        if (((Stmt) unit).containsInvokeExpr()) {
//
//                            if (((Stmt) unit).getInvokeExpr() instanceof InstanceInvokeExpr) {
//                                System.out.println(((InstanceInvokeExpr) ((Stmt) unit).getInvokeExpr()).getBase());
//                            }else{
//                                System.out.println("[+]"+((Stmt) unit).getInvokeExpr().toString());
//                            }
//                        }

                    }
                }
            }
        }

        //PackManager.v().writeOutput();

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
