.class Lcom/apportable/cm/MotionManager$Listener$3;
.super Ljava/lang/Object;
.source "MotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/cm/MotionManager$Listener;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/cm/MotionManager$Listener;


# direct methods
.method constructor <init>(Lcom/apportable/cm/MotionManager$Listener;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 163
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v1

    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    move-result v1

    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    move-result v2

    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v3}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v3

    # getter for: Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F
    invoke-static {v3}, Lcom/apportable/cm/MotionManager;->access$1300(Lcom/apportable/cm/MotionManager;)[F

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v4}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v4

    # getter for: Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F
    invoke-static {v4}, Lcom/apportable/cm/MotionManager;->access$1300(Lcom/apportable/cm/MotionManager;)[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/apportable/cm/MotionManager$Listener$3;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v5}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v5

    # getter for: Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F
    invoke-static {v5}, Lcom/apportable/cm/MotionManager;->access$1300(Lcom/apportable/cm/MotionManager;)[F

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    # invokes: Lcom/apportable/cm/MotionManager;->magneticField(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1400(Lcom/apportable/cm/MotionManager;IIFFF)V

    .line 164
    return-void
.end method
