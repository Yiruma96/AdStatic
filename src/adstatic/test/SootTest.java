package adstatic.test;

import soot.Modifier;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;

import soot.*;
import soot.jimple.*;
import soot.options.Options;
import soot.util.*;
import java.io.*;
import java.util.*;

import java.util.Arrays;

public class SootTest {
    public static void main(String[] args) throws Exception{

        //加载入一个提供支持的类
        Scene.v().loadClassAndSupport("java.lang.Object");
        Scene.v().loadClassAndSupport("java.lang.System");

        //初始化一个名为HelloWorld的public sootclass
        SootClass sc = new SootClass("HelloWorld", Modifier.PUBLIC);
        //设置sootclass的超级父类
        sc.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
        Scene.v().addClass(sc);

        //为sootclass创建一个方法
        //依次指定方法名，参数是一个列表所以用Arrays.asList进行转化，数组使用new Type[] {}来构建，里面只有一个参数String[],用ArrayType类型包括一个一维的RefType.v()来表示
        //然后返回值是void，类型是static public
        //注意RefType.v()与sc.getType()都可以获得一个类型对象
        SootMethod sm = new SootMethod("main",
                Arrays.asList(new Type[] {ArrayType.v(RefType.v("java.lang.String"),1)}),
                VoidType.v(), Modifier.PUBLIC | Modifier.STATIC);
        sc.addMethod(sm);

        /*output:
            java.lang.String
            HelloWorld
        * */
        System.out.println(RefType.v("java.lang.String"));
        System.out.println(sc.getType());

        /*
        * a Body has three important features: chains of Locals, Traps and Units.
         * A Chain is a list-like structure that provides O(1) access to insert and delete elements.
         * Locals are the local variables in the body;
         * Traps say which units catch which exceptions;
         * and Units are the statements themselves.*/
        //创建一个body并添加到method中
        JimpleBody body = Jimple.v().newBody(sm);
        sm.setActiveBody(body);
        //生成body的chain链
        Chain units = body.getUnits();
        //为body添加一个局部变量
        Local arg = Jimple.v().newLocal("l0", ArrayType.v(RefType.v("java.lang.String"),1));
        Local tmpRef = Jimple.v().newLocal("tmpRef", RefType.v("java.io.PrintStream"));
        body.getLocals().add(arg);
        body.getLocals().add(tmpRef);
        //大概是需要这种定义语句去初始化局部变量
        //add "l0 = @parameter0"
        units.add(Jimple.v().newIdentityStmt(arg, Jimple.v().newParameterRef(
                ArrayType.v(RefType.v("java.lang.String"),1),0)));
        //add "tmpRef = java.lang.System.out"
        units.add(Jimple.v().newAssignStmt(tmpRef, Jimple.v().newStaticFieldRef(
            Scene.v().getField("<java.lang.System: java.io.PrintStream out>").makeRef()
        )));
        //insert "tmpRef.println("Hello world!")"
        SootMethod toCall = Scene.v().getMethod
                ("<java.io.PrintStream: void println(java.lang.String)>");
        units.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(
                tmpRef, toCall.makeRef(), StringConstant.v("Helloworld")
        )));
        //insert "return"
        units.add(Jimple.v().newReturnVoidStmt());

        //获取输出文件的名字
        String fileName = SourceLocator.v().getFileNameFor(sc, Options.output_format_class);
        System.out.println(fileName);
        //构建从jasmin往外输出的输出流
        OutputStream streamOut = new JasminOutputStream(new FileOutputStream(fileName));
        PrintWriter writerOut = new PrintWriter(new OutputStreamWriter(streamOut));
        //将jimple转化到jasmin,并将输出传入到之前构建的输出流中
        JasminClass jasminClass = new JasminClass(sc);
        jasminClass.print(writerOut);
        writerOut.flush();
        streamOut.close();







        System.out.println("haha");
    }
}
