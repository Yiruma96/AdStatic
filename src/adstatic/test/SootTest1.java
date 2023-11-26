package adstatic.test;

import adstatic.tools.LocalInfo;
import adstatic.tools.MyTools;
import com.sun.xml.internal.bind.v2.runtime.reflect.opt.Const;
import polyglot.ast.Assign;
import soot.*;
import soot.jimple.*;
import soot.jimple.internal.JAssignStmt;
import soot.jimple.spark.solver.Checker;
import soot.options.Options;
import soot.tagkit.AnnotationTag;
import soot.tagkit.Tag;
import soot.tagkit.VisibilityAnnotationTag;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.scalar.SimpleLiveLocals;
import soot.toolkits.scalar.SmartLocalDefs;
import soot.util.Cons;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import java.io.File;
import java.util.*;

public class SootTest1 {

    //$r0 := @this: com.example.helloworld.MainActivity;

    public static void main(String[] args) throws Exception {


        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList("F:/apk/alert12.apk"));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

//        System.out.println(Scene.v().getAndroidAPIVersion());
////com.example.helloworld.MainActivity$UnsafeTrustManager
//        SootClass sootClass = Scene.v().getSootClass("javax.net.ssl.X509TrustManager");
//        FastHierarchy fastHierarchy = Scene.v().getOrMakeFastHierarchy();
//        for (SootClass subClass : fastHierarchy.getAllImplementersOfInterface(sootClass)) {
//            System.out.println(subClass.toString());
//        }

        int apkAPIVersion = Scene.v().getAndroidAPIVersion();
        //只有在APIVersion小于17也就是android版本在4.2之下时，没有提供js注解机制
        if(apkAPIVersion < 100){

            InvokeExpr invokeExpr;
            HashMap<Local, LocalInfo> localMap = null;
            for (SootClass sc : Scene.v().getApplicationClasses()) {
                //System.out.println(sc.toString());
                if (!sc.toString().startsWith("android")) {
                    List<SootMethod> sms = sc.getMethods();
                    int i = 0;
                    while(i < sms.size()){
                        SootMethod sm = sc.getMethods().get(i);

                        if(sm.getSignature().equals("<com.example.helloworld.MainActivity: void onCreate(android.os.Bundle)>")){
                            if(sm.hasActiveBody()){
                                Body body = sm.getActiveBody();
                                //System.out.println(body);
                                for(Unit unit : body.getUnits()) {
                                    Stmt stmt = (Stmt) unit;
                                    //$r3 = <org.apache.http.conn.ssl.SSLSocketFactory: org.apache.http.conn.ssl.X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER>
                                    if(stmt.toString().equals("$r0 := @this: com.example.helloworld.MainActivity")){
                                        MyTools.getStmt(stmt);
//                                        DefinitionStmt definitionStmt = (DefinitionStmt) stmt;
//                                        System.out.println(MyTools.getFieldBaseLocal(definitionStmt.getLeftOp()));
//                                        System.out.println(stmt.containsFieldRef());
//                                        System.out.println(definitionStmt.getLeftOp() instanceof Local);
//                                        System.out.println(definitionStmt.getLeftOp().getType());
//                                        System.out.println(stmt.getFieldRef());
//                                        System.out.println("===================");


                                    }

                                }
                            }
                        }
//                        if(sm.hasActiveBody()){
//                            System.out.println(sm.getSignature());
//                            Body body = sm.getActiveBody();
//                            System.out.println(body.toString());
//                            for (Unit unit : body.getUnits()) {
//                                Stmt stmt = (Stmt) unit;
////                                System.out.println(stmt);
////                                System.out.println(stmt.containsInvokeExpr());
//
//
//                            }//单unit循环
//                        }//sootmethod has ActiveBody
                        i += 1;
                    }//method循环
                }//if SootClassName.startwith("android")
            }//sootclass循环
        }//if API<xxx
    }//main  循环
}
