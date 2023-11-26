package adstatic.tools;

import soot.*;
import soot.jimple.*;
import soot.toolkits.graph.UnitGraph;
import soot.toolkits.scalar.ForwardFlowAnalysis;

import java.util.*;

public class ObjectFlowAnalysis extends ForwardFlowAnalysis<Unit, HashMap<Local, LocalInfo>>{

    private Body body;

    public ObjectFlowAnalysis(UnitGraph graph) {
        super(graph);
        body = graph.getBody();
        doAnalysis();
    }

    @Override
    protected void flowThrough(HashMap<Local, LocalInfo> in, Unit unit, HashMap<Local, LocalInfo> out) {
//        System.out.println("flowThrough调用");
//        System.out.println(unit);
//        System.out.println("***出为***");

        out.clear();
        out.putAll(in);

        //===对象定义分析===
        if(unit instanceof IdentityStmt){
            IdentityStmt stmt = (IdentityStmt) unit;
            Value rightOp = stmt.getRightOp();
            Value leftOp = stmt.getLeftOp();
            if(leftOp instanceof Local){
                if(!out.containsKey(leftOp)){
                    LocalInfo localInfo = new LocalInfo();
                    localInfo.isDeriveFromOrtherObject = false;
                    localInfo.rootObject = rightOp;
                    out.put((Local) leftOp, localInfo);
                }
            }
        }

        else if (unit instanceof DefinitionStmt){
            DefinitionStmt stmt = (DefinitionStmt) unit;
            Value rightOp = stmt.getRightOp();
            Value leftOp = stmt.getLeftOp();
            //将左操作数转化为Local类型
            Local leftLocal;
            if(leftOp instanceof Local)
                leftLocal = (Local)leftOp;
            else {
                //考虑可能是在对Local的Field进行操作，一样需要进行录入，直接作为调用信息录入invokeInfo即可
                Local leftOpBaseLocal = getFieldBaseLocal(stmt, true);
                if(leftOpBaseLocal != null){
                    if(out.containsKey(leftOpBaseLocal)){
                        out.get(leftOpBaseLocal).invokeInfo.add(rightOp);
                    }
                }
                return;
            }
            //===判断左操作数是否已经录入过了，如果在hashMap中作为键存在，则直接操作对应的值即可
            boolean change = false;
            if (out.containsKey(leftOp)){
                change = true;
            }

            if(rightOp instanceof AddExpr){
                if(change)
                    out.get(leftLocal).invokeInfo.add(rightOp);
            }
            if(rightOp instanceof AnyNewExpr){
                if(change)
                    out.get(leftLocal).rootObject = rightOp;
                else{
                    LocalInfo localInfo = new LocalInfo();
                    localInfo.isDeriveFromOrtherObject = false;
                    localInfo.rootObject = rightOp;

                    out.put(leftLocal, localInfo);
                }
            }
            if(rightOp instanceof Local){
                if(change)
                    out.get(leftLocal).rootLink = new MyEntry<Local, InvokeExpr>((Local)rightOp, null);
                else{
                    LocalInfo localInfo = new LocalInfo();
                    localInfo.isDeriveFromOrtherObject = true;
                    localInfo.rootLink = new MyEntry<Local, InvokeExpr>((Local)rightOp, null);

                    out.put(leftLocal, localInfo);
                }
            }
            if(rightOp instanceof Constant){
                if(change){
                    if(out.get(leftLocal).rootObject instanceof Constant){
                        out.get(leftLocal).rootObject = MyTools.constantGlue((Constant)(out.get(leftLocal).rootObject), (Constant)rightOp );
                    }
                }
                else{
                    LocalInfo localInfo = new LocalInfo();
                    localInfo.rootObject = rightOp;
                    localInfo.isDeriveFromOrtherObject = false;

                    out.put(leftLocal, localInfo);
                }
            }
            if(rightOp instanceof ArrayRef){
                if(change)
                    out.get(leftLocal).rootObject = rightOp;
                else{
                    LocalInfo localInfo = new LocalInfo();
                    localInfo.isDeriveFromOrtherObject = false;
                    localInfo.rootObject = rightOp;

                    out.put(leftLocal, localInfo);
                }
            }
            if(rightOp instanceof InvokeExpr){
                if(change)
                    out.get(leftLocal).invokeInfo.add(rightOp);
                else{
                    LocalInfo localInfo = new LocalInfo();
                    Local rightLocal = getInvokeStmtBaseLocal(unit);
                    if(rightLocal != null) {
                        localInfo.isDeriveFromOrtherObject = true;
                        localInfo.rootLink = new MyEntry<Local, InvokeExpr>(rightLocal, (InvokeExpr) rightOp);
                    }else{
                        //没有调用对象，说明是工厂方法，同样记录下来，只是没有Local了
                        localInfo.rootObject = rightOp;
                        localInfo.isDeriveFromOrtherObject = false;
                    }

                    out.put(leftLocal, localInfo);
                }
            }
            /*针对语句：$r4 = <org.apache.http.conn.ssl.SSLSocketFactory: org.apache.http.conn.ssl.X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER>;*/
            if(stmt.containsFieldRef()){
                FieldRef fieldRef = stmt.getFieldRef();
                //判断fieldRef在左右操作数哪个里面，只有在右操作数中才进行分析
                if(rightOp.toString().equals(fieldRef.toString())){
                    if(!change){
                        LocalInfo localInfo = new LocalInfo();
                        localInfo.isDeriveFromOrtherObject = false;
                        localInfo.rootObject = fieldRef;

                        out.put(leftLocal, localInfo);
                    }
                }
            }
        }

        //===调用分析===
        else if(unit instanceof InvokeStmt){
            Local local = getInvokeStmtBaseLocal(unit);
            if (local != null){
                if (out.containsKey(local)){
                    out.get(local).invokeInfo.add(((InvokeStmt) unit).getInvokeExpr());
                }
            }
        }


        //printHashMap(out);
        //System.out.println("===================");
    }

    @Override
    protected HashMap<Local, LocalInfo> newInitialFlow() {
        //System.out.println("newInitialFlow调用");
        return new HashMap<Local, LocalInfo>();
    }

    @Override
    protected HashMap<Local, LocalInfo> entryInitialFlow() {
        //System.out.println("entryInitalFlow调用");
        return new HashMap<Local, LocalInfo>();
    }

    /*
    需要将两个HashMap合并起来，去掉重复的部分
    这里有个要点是：对于两次重复的操作，使用list的确能允许填充重复操作，之前的set就不行，但是如果是在分支内的重复操作，当如何解决？方案是要在填充时候相同的部分匹配到就够了
     */
    @Override
    protected void merge(HashMap<Local, LocalInfo> in1, HashMap<Local, LocalInfo> in2, HashMap<Local, LocalInfo> out) {
        //System.out.println("merge调用");
        out.clear();
        out.putAll(in1);

        Map.Entry<Local, LocalInfo> temp = null;
        Iterator<Map.Entry<Local, LocalInfo>> itIN2 = in2.entrySet().iterator();
        while(itIN2.hasNext()){
            temp = itIN2.next();
            if (out.containsKey(temp.getKey()))
                out.get(temp.getKey()).invokeInfo = glueList(temp.getValue().invokeInfo, out.get(temp.getKey()).invokeInfo);
            else
                out.put(temp.getKey(), temp.getValue());

        }


    }

    @Override
    protected void copy(HashMap<Local, LocalInfo> source, HashMap<Local, LocalInfo> dest) {
        //System.out.println("copy调用");
        dest.clear();
        dest.putAll(source);
    }

    /**
     * 连接两个list，从不同单元开始，前面相同的单元取出来一份，后面的做subList拼接上去
     * @param list1
     * @param list2
     */
    private List<Value> glueList(List<Value> list1, List<Value> list2){
        if(list1 == list2)
            return list1;

        List<Value> list = new LinkedList<Value>();

        int index = 0;
        while(true){

            //检测到越界后终止循环，并将长串多出来的一截录入
            if(index >= list1.size() || index >= list2.size()) {
                int indexLimit = (list1.size() < list2.size())? list1.size() : list2.size();  //indexLimit取两个列表中最小者
                if (list1.size() > list2.size())
                    list.addAll(list1.subList(index, list1.size()));
                else if(list1.size() < list2.size())
                    list.addAll(list2.subList(index, list2.size()));
                break;
            }

            //相同的话取其一录入，不同的话两个都录入
            if(list1.get(index) == (list2.get(index)))
                list.add(list1.get(index));
            else{
                list.add(list1.get(index));
                list.add(list2.get(index));
            }

            index += 1;
        }

        return list;
    }

    /**
     * 获取函数调用的语句中，函数的调用对象
     */
    public  Local getInvokeStmtBaseLocal(Unit unit){
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

    public Local getFieldBaseLocal(Stmt stmt, boolean isLeftOp) {
        if (stmt.containsFieldRef()) {      //只有stmt中含有FieldRef才会进行下一步的检查
            FieldRef fieldRef = stmt.getFieldRef();
            List<ValueBox> useBoxes = fieldRef.getUseBoxes();

            if (useBoxes.size() == 1) {    //只有FieldRef中只有一个Local才会接着向下分析
                if (useBoxes.get(0).getValue() instanceof Local) {
                    Local fieldBaseLocal = (Local) useBoxes.get(0).getValue();
                    //已经找到了fieldRef所对应的Local，下面需要判断这个Local是否在指定的操作数中出现
                    if (stmt instanceof DefinitionStmt) {
                        DefinitionStmt definitionStmt = (DefinitionStmt) stmt;
                        Value op;
                        if (isLeftOp) {
                            if (definitionStmt.getLeftOp().toString().contains(fieldBaseLocal.toString())) {
                                return fieldBaseLocal;
                            }
                        } else {
                            if (definitionStmt.getRightOp().toString().equals(fieldBaseLocal.toString())) {
                                return fieldBaseLocal;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }


    public void printHashMap(HashMap<Local, LocalInfo> map){
        //System.out.println("====================");
        for (Local l : map.keySet()) {
            System.out.println(l);
            map.get(l).printInfo();
        }
    }

    //做一个别名分析？？并不需要把，其实分析起来还是很简单的
}