.class Lcom/apportable/cm/MotionManager$Listener$4;
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

.field final synthetic val$rotationVector:[F


# direct methods
.method constructor <init>(Lcom/apportable/cm/MotionManager$Listener;[F)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    iput-object p2, p0, Lcom/apportable/cm/MotionManager$Listener$4;->val$rotationVector:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    new-array v0, v10, [F

    .line 173
    const/16 v0, 0x9

    new-array v11, v0, [F

    .line 174
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 175
    new-array v0, v9, [F

    .line 176
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$4;->val$rotationVector:[F

    invoke-static {v11, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 177
    invoke-static {v11, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 178
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v1

    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    move-result v1

    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    move-result v2

    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v3}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v3

    # getter for: Lcom/apportable/cm/MotionManager;->mGravity:[F
    invoke-static {v3}, Lcom/apportable/cm/MotionManager;->access$700(Lcom/apportable/cm/MotionManager;)[F

    move-result-object v3

    aget v3, v3, v6

    iget-object v4, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v4}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v4

    # getter for: Lcom/apportable/cm/MotionManager;->mGravity:[F
    invoke-static {v4}, Lcom/apportable/cm/MotionManager;->access$700(Lcom/apportable/cm/MotionManager;)[F

    move-result-object v4

    aget v4, v4, v7

    iget-object v5, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v5}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v5

    # getter for: Lcom/apportable/cm/MotionManager;->mGravity:[F
    invoke-static {v5}, Lcom/apportable/cm/MotionManager;->access$700(Lcom/apportable/cm/MotionManager;)[F

    move-result-object v5

    aget v5, v5, v8

    # invokes: Lcom/apportable/cm/MotionManager;->gravity(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1500(Lcom/apportable/cm/MotionManager;IIFFF)V

    .line 179
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v1

    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    move-result v1

    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$4;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    move-result v2

    aget v3, v11, v6

    aget v4, v11, v7

    aget v5, v11, v8

    aget v6, v11, v9

    aget v7, v11, v10

    const/4 v8, 0x5

    aget v8, v11, v8

    const/4 v9, 0x6

    aget v9, v11, v9

    const/4 v10, 0x7

    aget v10, v11, v10

    const/16 v12, 0x8

    aget v11, v11, v12

    # invokes: Lcom/apportable/cm/MotionManager;->rotation(IIFFFFFFFFF)V
    invoke-static/range {v0 .. v11}, Lcom/apportable/cm/MotionManager;->access$1600(Lcom/apportable/cm/MotionManager;IIFFFFFFFFF)V

    .line 183
    return-void
.end method
