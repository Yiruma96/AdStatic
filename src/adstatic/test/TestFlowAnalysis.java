package adstatic.test;

import soot.Local;
import soot.Unit;
import soot.Value;
import soot.jimple.AssignStmt;
import soot.jimple.CastExpr;
import soot.jimple.Constant;
import soot.jimple.ReturnStmt;
import soot.jimple.internal.JimpleLocal;
import soot.toolkits.graph.DirectedGraph;
import soot.toolkits.scalar.ForwardFlowAnalysis;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class TestFlowAnalysis extends ForwardFlowAnalysis<Unit, Map<Local, Constant>> {
    private static final Local RETURN_LOCAL = new JimpleLocal("@return", null);
    DirectedGraph<Unit> graph;

    public TestFlowAnalysis(DirectedGraph<Unit> graph) {

        super(graph);
        this.graph=graph;
        doAnalysis();
    }

    private void assign(Local lhs, Value rhs, Map<Local, Constant> input, Map<Local, Constant> output) {
        // First remove casts, if any.
        if (rhs instanceof CastExpr) {
            rhs = ((CastExpr) rhs).getOp();
        }
        if (rhs instanceof Constant) {
            output.put(lhs, (Constant) rhs);
        } else if (rhs instanceof Local) {
            if(input.containsKey(rhs)) {
                output.put(lhs, input.get(rhs));
            }
        } else {
            output.put(lhs, null);
        }
    }

    @Override
    protected void flowThrough(Map<Local, Constant> inValue, Unit unit, Map<Local, Constant> outValue) {
        outValue.putAll(inValue);

        if (unit instanceof AssignStmt) {
            // Get operands
            Value lhsOp = ((AssignStmt) unit).getLeftOp();
            Value rhsOp = ((AssignStmt) unit).getRightOp();
            if (lhsOp instanceof Local) {
                assign((Local) lhsOp, rhsOp, inValue, outValue);
            }
        }else if (unit instanceof ReturnStmt) {
            Value rhsOp = ((ReturnStmt) unit).getOp();
            assign(RETURN_LOCAL, rhsOp, inValue, outValue);
        }


        System.out.println("===================");
        System.out.println("flowThrough");
        System.out.println("语句是："+unit);
        System.out.println();
        System.out.println("inValue");
        Map.Entry<Local, Constant> temp = null;
        Iterator<Map.Entry<Local, Constant>> it = inValue.entrySet().iterator();
        while(it.hasNext()){
            temp = it.next();
            System.out.println(temp.getKey() + "   ||   " + temp.getValue());
        }
        System.out.println();
        System.out.println("OutValue:");
        it = outValue.entrySet().iterator();
        while(it.hasNext()){
            temp = it.next();
            System.out.println(temp.getKey() + "   ||   " + temp.getValue());
        }
        System.out.println("===================");
    }

    @Override
    protected Map<Local, Constant> newInitialFlow() {
        System.out.println("newInitialFlow");
        Map<Local, Constant> map = new HashMap<Local, Constant>();
        map.put(new JimpleLocal("test1", null), null);
        return map;
    }

    protected Map<Local, Constant> entryInitialFlow(){
        System.out.println("entryInitialFlow");
        Map<Local, Constant> map = new HashMap<Local, Constant>();
        map.put(new JimpleLocal("test", null), null);
        return map;
    }

    @Override
    protected void merge(Map<Local, Constant> op1, Map<Local, Constant> op2, Map<Local, Constant> out) {
        out.clear();
        out.putAll(op1);
        out.putAll(op2);
        System.out.println("===================");
        System.out.println("merge");
        System.out.println("op1");
        Map.Entry<Local, Constant> temp = null;
        Iterator<Map.Entry<Local, Constant>> it = op1.entrySet().iterator();
        while(it.hasNext()){
            temp = it.next();
            System.out.println(temp.getKey() + "   ||   " + temp.getValue());
        }
        System.out.println();
        System.out.println("op2:");
        it = op2.entrySet().iterator();
        while(it.hasNext()){
            temp = it.next();
            System.out.println(temp.getKey() + "   ||   " + temp.getValue());
        }
        System.out.println("===================");
    }

    @Override
    protected void copy(Map<Local, Constant> source, Map<Local, Constant> dest) {
        dest.clear();
        dest.putAll(source);

        System.out.println("===================");
        System.out.println("copy");
        System.out.println("source");
        Map.Entry<Local, Constant> temp = null;
        Iterator<Map.Entry<Local, Constant>> it = source.entrySet().iterator();
        while(it.hasNext()){
            temp = it.next();
            System.out.println(temp.getKey() + "   ||   " + temp.getValue());
        }
        System.out.println();
        System.out.println("dest:");
        it = dest.entrySet().iterator();
        while(it.hasNext()){
            temp = it.next();
            System.out.println(temp.getKey() + "   ||   " + temp.getValue());
        }
        System.out.println("===================");
    }
}
