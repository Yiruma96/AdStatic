package adstatic.tools;

import fj.Hash;
import soot.*;
import soot.baf.ReturnVoidInst;
import soot.grimp.NewInvokeExpr;
import soot.jimple.*;
import soot.shimple.PhiExpr;
import soot.shimple.PiExpr;
import soot.shimple.ShimpleExpr;
import soot.tagkit.AnnotationTag;
import soot.tagkit.Tag;
import soot.tagkit.VisibilityAnnotationTag;
import soot.toolkits.graph.BriefUnitGraph;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.*;

public class MyTools {

    public static Map<String, String> getConfig(String configName){

        Map<String, String> DBConfig = new HashMap<String, String>();
        try(Scanner scanner = new Scanner(new FileInputStream("./ServerConfig.txt"))) {
            String temp;

            while(scanner.hasNextLine()){
                temp = scanner.nextLine();
                if(temp.startsWith("#") && temp.contains(configName)){
                    while(scanner.hasNextLine()){
                        temp = scanner.nextLine();
                        if(!temp.startsWith("#"))
                            DBConfig.put(temp.split("=")[0].trim(), temp.split("=", 2)[1].trim());
                        else
                            break;
                    }
                }
            }

            return DBConfig;
        }catch(Exception e){
            return DBConfig;
        }

    }

    public static Set<String> getTraintWrapper(){

        String filePath = "./MyTraintWrapper.txt";

        String temp;
        Set<String> retu = new HashSet<String>();
        try{
            Scanner scanner = new Scanner(new FileInputStream(filePath));
            while(scanner.hasNextLine()){
                temp = scanner.nextLine();
                if(!temp.equals("")){
                    retu.add(temp);
                }
            }
        }catch(Exception e){
            return null;
        }

        return retu;
    }

    public static boolean isNeedAnalysis(String sootClass, Set<String> packageWhiteSet){

        String[] temp;
        String packageName;
        temp = sootClass.split("\\.");
        if (temp.length >= 2) {
            packageName = temp[0] + "." + temp[1];
            if (packageWhiteSet.contains(packageName)) {
                return false;
            }
        }

        return true;
    }


    public static Set<String> getHighRiskAPI(){

        String filePath = "./HighRiskAPI.txt";

        String temp;
        Set<String> retu = new HashSet<String>();
        try{
            Scanner scanner = new Scanner(new FileInputStream(filePath));
            while(scanner.hasNextLine()){
                temp = scanner.nextLine();
                if(!temp.equals("")){
                    retu.add(temp);
                }
            }
        }catch(Exception e){
            //System.out.println(e);
            return null;
        }

        return retu;
    }

    public static Set<String> getPackageWhiteList(){

        String filePath = "./PackageWhiteList.txt";

        String temp;
        Set<String> retu = new HashSet<String>();
        try{
            Scanner scanner = new Scanner(new FileInputStream(filePath));
            while(scanner.hasNextLine()){
                temp = scanner.nextLine();
                if(!temp.equals("")){
                    retu.add(temp);
                }
            }
        }catch(Exception e){
            return null;
        }

        return retu;
    }

    public static void printHashMap(HashMap<Local, LocalInfo> map){
        //System.out.println("====================");
        for (Local l : map.keySet()) {
            System.out.println(l);
            map.get(l).printInfo();
        }
    }

    public static void printHashMapList(List<HashMap<Local, LocalInfo>> mapList){
        for (HashMap<Local, LocalInfo> hashMap : mapList) {
            MyTools.printHashMap(hashMap);
            System.out.println("====一个HashMap结束==================");
        }
    }

    public static String mapToJSON(Map<String, Integer> map){
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{");

        int size = map.entrySet().size();
        System.out.println(size);
        int count = 1;
        for (Map.Entry<String, Integer> entry : map.entrySet()){
            System.out.println(count);
            stringBuilder.append("\"");
            stringBuilder.append(entry.getKey());
            stringBuilder.append("\": ");
            stringBuilder.append(entry.getValue().toString());
            if(count < size){
                stringBuilder.append(", ");
            }
            count += 1;

        }
        stringBuilder.append("}");
        String temp = stringBuilder.toString();
        return stringBuilder.toString();
    }

    public static String stringMapToJSON(Map<String, String> map){
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{");

        int size = map.entrySet().size();
        int count = 1;
        for (Map.Entry<String, String> entry : map.entrySet()){
            stringBuilder.append("\"");
            stringBuilder.append(entry.getKey());
            stringBuilder.append("\": ");
            stringBuilder.append(entry.getValue());
            if(count < size){
                stringBuilder.append(", ");
            }
            count += 1;

        }
        stringBuilder.append("}");
        String temp = stringBuilder.toString();
        return stringBuilder.toString();
    }

    public static List<HashMap<Local, LocalInfo>> getLocalMapList(Body body){

        List<HashMap<Local, LocalInfo>> localMapList = new LinkedList<HashMap<Local, LocalInfo>>();
        HashMap<Local, LocalInfo> localMap;

        BriefUnitGraph unitGraph = new BriefUnitGraph(body);
        ObjectFlowAnalysis objectFlowAnalysis = new ObjectFlowAnalysis(unitGraph);
        for (Unit unit : unitGraph.getTails()) {
            localMap = objectFlowAnalysis.getFlowAfter(unit);
            if(localMap != null){
                localMapList.add(localMap);
            }
        }

        return localMapList;
    }

    public static Set<Constant> localToConstant(Local local, List<HashMap<Local, LocalInfo>> localMapList){
        Set<Constant> retu = new HashSet<Constant>();  //这里使用Set存储是为了避免列表里常量的重复性
        Set<String> myTraintWrapper = MyTools.getTraintWrapper();
        List<Constant> constantsFromOneLocalMap;

        for (HashMap<Local, LocalInfo> localMap : localMapList) {
            if(!localMap.containsKey(local)){
                break;
            }else{
                constantsFromOneLocalMap = localToConstant(local, localMap, myTraintWrapper);
                retu.addAll(constantsFromOneLocalMap);
            }
        }

        return retu;
    }

    public static List<Constant> localToConstant(Local local, HashMap<Local, LocalInfo> localMap, Set<String> myTraintWrapper){
        List<Constant> retu = new LinkedList<Constant>();
        if(!localMap.containsKey(local)){
            return retu;
        }

        Set<Local> localsHaveAnalysis = new HashSet<Local>();
        localToConstant(localsHaveAnalysis, retu, local, localMap, myTraintWrapper);

        return retu;
    }

    /*
    做一个常量追溯的方法, 思路如下：
    从初始Local开始，在LocalMap中定位到此local的LocalInfo，首先查看是否需要追溯到其他local，如果需要则进行一次递归，并从生成函数中提取Constant；如果不需要追溯的的，查看
    rootObject是不是Constant。    接下来分析此local的函数调用情况，对符合在MyTraintWrapper中的函数，分析其参数，并对LocalMap中有的local变量进行追溯分析，也就需要进行
    一次递归，如果是Constant类型的就记录下来
     */
    private static void localToConstant(Set<Local> localHasAnalysis, List<Constant>retu, Local local, HashMap<Local, LocalInfo> localMap, Set<String> myTraintWrapper) {
        LocalInfo localInfo = localMap.get(local);

        //对对象调用的方法方法进行分析
        for (Value v : localInfo.invokeInfo) {
            //对调用进行分析，如果从参数中找到Constant就录入，如果是Local的话就接着追溯
            if (v instanceof InvokeExpr){
                //System.out.println(local+"调用了"+v);
                //if (myTraintWrapper.contains( ((InvokeExpr) v).getMethod().getSignature()) ){
                for (Value arg : ((InvokeExpr) v).getArgs()) {
                    if(arg instanceof Constant){
                        retu.add((Constant) arg);
                    }else if(arg instanceof Local) {
                        if(localMap.containsKey(arg) && !localHasAnalysis.contains(arg)) {//这里在对Local进行追溯分析的时候需要检查之前有没有分析过，否则会造成死循环
                            localHasAnalysis.add((Local) arg);
                            localToConstant(localHasAnalysis, retu, (Local) arg, localMap, myTraintWrapper);
                        }
                    }
                }
                //}
            }else if (v instanceof AddExpr){
                //System.out.println(local+"调用了"+v);
                Value[] value = new Value[2];
                value[0] = ((AddExpr) v).getOp1();
                value[1] = ((AddExpr) v).getOp2();

                for (Value op : value) {
                    if(op instanceof Local){
                        if(!localHasAnalysis.contains(op)) {
                            localHasAnalysis.add((Local) op);
                            localToConstant(localHasAnalysis, retu, (Local) op, localMap, myTraintWrapper);
                        }
                    }
                    else if(op instanceof Constant)
                        retu.add((Constant) op);
                }
            }
        }


        //根据是否有来源Local来决定是否要向前接着追溯
        if (localInfo.isDeriveFromOrtherObject){
            if(localInfo.rootLink.getValue() != null){
                //System.out.println(local+"的调用来源为"+localInfo.rootLink.getValue());
                for (Value v : localInfo.rootLink.getValue().getArgs()) {
                    if (v instanceof Constant)
                        retu.add((Constant) v);
                    else if(v instanceof Local) {
                        if (!localHasAnalysis.contains(v)) {
                            localHasAnalysis.add((Local) v);
                            localToConstant(localHasAnalysis, retu, (Local) v, localMap, myTraintWrapper);
                        }
                    }
                }
            }
            if(!localHasAnalysis.contains(localInfo.rootLink.getKey())) {
                //System.out.println("向上追溯对象为"+localInfo.rootLink.getKey());
                localToConstant(localHasAnalysis, retu, localInfo.rootLink.getKey(), localMap, myTraintWrapper);
            }
        } else {
            //如果local是一个常量的话就记录下来
            if(localInfo.rootObject instanceof Constant) {
                //System.out.println(local + "来源于" + localInfo.rootObject);
                retu.add((Constant) localInfo.rootObject);
            }
            //如果local是一个函数调用的话，说明这是通过工厂方法初始化的一个local，对其函数进行参数分析
            else if(localInfo.rootObject instanceof InvokeExpr){
                for (Value arg : ((InvokeExpr) localInfo.rootObject).getArgs()) {
                    if(arg instanceof Constant){
                        retu.add((Constant) arg);
                    }else if(arg instanceof Local){
                        if(!localHasAnalysis.contains(arg)){
                            localHasAnalysis.add((Local) arg);
                            localToConstant(localHasAnalysis, retu, (Local) arg, localMap, myTraintWrapper);
                        }
                    }
                }
            }
        }
    }

    public static boolean checkJavascriptInterface(SootMethod sm){

        //一个函数的tag不止一个，所以要遍历所有的tag
        for (Tag tag : sm.getTags()) {
            //tag是个接口，我们要用此接口的实现类是VisibilityAnnotationTag类
            if(tag instanceof VisibilityAnnotationTag){
                //一个tag中可能会有多个annotionTag(我也没弄明白tag中怎么还会有tag)，需要遍历VisibilityAnnotationTag类中的所有AnnotationTag类型
                for (AnnotationTag annotationTag : ((VisibilityAnnotationTag) tag).getAnnotations()) {
                    //最终在AnnotationTag类中，提供一个注解的所有详细情况，这里我们只需要判断一下注解的类型即可，使用getType()方法
                    if(annotationTag.getType().equals("Landroid/webkit/JavascriptInterface;")){
                        return true;
                    }
                }
            }
        }

        return false;
    }

    public static Local getFieldBaseLocal(Value value){
        List<ValueBox> useBoxes = value.getUseBoxes();
        if(useBoxes.size() != 1){
            return null;
        }else {
            if(useBoxes.get(0).getValue() instanceof Local){
                return (Local) useBoxes.get(0).getValue();
            }else{
                return null;
            }
        }
    }

    //函数能够实现将同种类型的常量拼接到一起
    public static Constant constantGlue(Constant constant1, Constant constant2) {
        //检查两个参数的基本类型， 只有StringConstant, IntConstant, LongConstant才会进行拼接
        if(!(constant1 instanceof StringConstant || constant1 instanceof IntConstant || constant1 instanceof LongConstant)){
            return null;
        }
        if(!(constant2 instanceof StringConstant || constant2 instanceof IntConstant || constant2 instanceof LongConstant)){
            return null;
        }

        //将几种常见类型的常量都以StringConstant的方式存储起来
        try {
            //添加这一步是因为可能存在对抗手段或是语法结构填充不完善导致了一个无限的字符串从而导致错误
            String retu = constant1.toString() + constant2.toString();
        }catch(java.lang.OutOfMemoryError e){
            return StringConstant.v(e.toString());
        }
        return StringConstant.v(constant1.toString() + constant2.toString());
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

    public static void main(String[] args) {

    }
}
