package adstatic.tools;

import soot.Local;
import soot.Value;
import soot.jimple.InvokeExpr;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class LocalInfo {

    public boolean isDeriveFromOrtherObject = false;
    public Value rootObject = null;
    public Map.Entry<Local, InvokeExpr> rootLink = null;
    public List<Value> invokeInfo = new LinkedList<Value>();

    public void printInfo() {
        //System.out.println("==============");
        System.out.println("是否需要向上追溯：" + isDeriveFromOrtherObject);
        if(isDeriveFromOrtherObject){
            System.out.println("Local为：" + rootLink.getKey());
            System.out.println("上面Local函数调用为" + rootLink.getValue());
        }else{
            System.out.println("追溯源头的定义为：" + rootObject);
        }
        System.out.println("调用情况如下");
        for (Value v : invokeInfo) {
            System.out.println(v);
        }

    }

}
