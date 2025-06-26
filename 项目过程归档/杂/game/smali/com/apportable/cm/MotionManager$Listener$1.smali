.class Lcom/apportable/cm/MotionManager$Listener$1;
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

.field final synthetic val$event:Landroid/hardware/SensorEvent;


# direct methods
.method constructor <init>(Lcom/apportable/cm/MotionManager$Listener;Landroid/hardware/SensorEvent;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    iput-object p2, p0, Lcom/apportable/cm/MotionManager$Listener$1;->val$event:Landroid/hardware/SensorEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const v7, 0x411cf5c3    # 9.81f

    const/high16 v6, 0x40800000    # 4.0f

    .line 112
    move v3, v4

    move v1, v0

    move v2, v0

    .line 116
    :goto_0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_0

    .line 117
    # getter for: Lcom/apportable/cm/MotionManager;->dataReady:Z
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$400()Z

    move-result v5

    if-nez v5, :cond_1

    .line 118
    # getter for: Lcom/apportable/cm/MotionManager;->pastX:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$000()[F

    move-result-object v0

    aget v0, v0, v4

    mul-float v2, v6, v0

    .line 119
    # getter for: Lcom/apportable/cm/MotionManager;->pastY:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$200()[F

    move-result-object v0

    aget v0, v0, v4

    mul-float v1, v6, v0

    .line 120
    # getter for: Lcom/apportable/cm/MotionManager;->pastZ:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$300()[F

    move-result-object v0

    aget v0, v0, v4

    mul-float/2addr v0, v6

    .line 129
    :cond_0
    div-float/2addr v2, v6

    .line 130
    div-float/2addr v1, v6

    .line 131
    div-float/2addr v0, v6

    .line 133
    iget-object v3, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v3}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v3

    # getter for: Lcom/apportable/cm/MotionManager;->isLandscapeDevice:Z
    invoke-static {v3}, Lcom/apportable/cm/MotionManager;->access$600(Lcom/apportable/cm/MotionManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    div-float v4, v2, v7

    .line 135
    neg-float v1, v1

    div-float v3, v1, v7

    .line 136
    neg-float v0, v0

    div-float v5, v0, v7

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v1

    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$1;->val$event:Landroid/hardware/SensorEvent;

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    # setter for: Lcom/apportable/cm/MotionManager;->mGravity:[F
    invoke-static {v1, v0}, Lcom/apportable/cm/MotionManager;->access$702(Lcom/apportable/cm/MotionManager;[F)[F

    .line 144
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v0}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;
    invoke-static {v1}, Lcom/apportable/cm/MotionManager$Listener;->access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;

    move-result-object v1

    # getter for: Lcom/apportable/cm/MotionManager;->mObject:I
    invoke-static {v1}, Lcom/apportable/cm/MotionManager;->access$800(Lcom/apportable/cm/MotionManager;)I

    move-result v1

    iget-object v2, p0, Lcom/apportable/cm/MotionManager$Listener$1;->this$0:Lcom/apportable/cm/MotionManager$Listener;

    # getter for: Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I
    invoke-static {v2}, Lcom/apportable/cm/MotionManager$Listener;->access$900(Lcom/apportable/cm/MotionManager$Listener;)I

    move-result v2

    # invokes: Lcom/apportable/cm/MotionManager;->acceleration(IIFFF)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/cm/MotionManager;->access$1000(Lcom/apportable/cm/MotionManager;IIFFF)V

    .line 145
    return-void

    .line 124
    :cond_1
    # getter for: Lcom/apportable/cm/MotionManager;->pastX:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$000()[F

    move-result-object v5

    aget v5, v5, v3

    add-float/2addr v5, v2

    .line 125
    # getter for: Lcom/apportable/cm/MotionManager;->pastY:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$200()[F

    move-result-object v2

    aget v2, v2, v3

    add-float/2addr v2, v1

    .line 126
    # getter for: Lcom/apportable/cm/MotionManager;->pastZ:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$300()[F

    move-result-object v1

    aget v1, v1, v3

    add-float/2addr v1, v0

    .line 116
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v5

    goto :goto_0

    .line 139
    :cond_2
    neg-float v2, v2

    div-float v3, v2, v7

    .line 140
    neg-float v1, v1

    div-float v4, v1, v7

    .line 141
    neg-float v0, v0

    div-float v5, v0, v7

    goto :goto_1
.end method
