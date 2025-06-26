.class Lcom/apportable/cm/MotionManager$Listener$2;
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

.field final synthetic val$gyroVector:[F


# direct methods
.method constructor <init>(Lcom/apportable/cm/MotionManager$Listener;[F)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    iput-object p2, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v1

    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    move-result v1

    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    move-result v2

    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    aget v5, v5, v8

    # invokes: Lcom/apportable/cm/MotionManager;->gyroscope(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1100(Lcom/apportable/cm/MotionManager;IIFFF)V

    .line 154
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$2;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v1

    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/apportable/cm/MotionManager$Listener$2;->val$gyroVector:[F

    aget v5, v5, v8

    # invokes: Lcom/apportable/cm/MotionManager;->orientation(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1200(Lcom/apportable/cm/MotionManager;IIFFF)V

    .line 155
    return-void
.end method
