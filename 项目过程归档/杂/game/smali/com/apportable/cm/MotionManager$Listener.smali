.class Lcom/apportable/cm/MotionManager$Listener;
.super Ljava/lang/Object;
.source "MotionManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/cm/MotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# static fields
.field private static final EPSILON:F = 0.01f

.field private static final NS2S:F = 1.0E-9f


# instance fields
.field private final deltaRotationVector:[F

.field private mDispatchType:I

.field private mManager:Lcom/apportable/cm/MotionManager;

.field private mRate:I

.field private mRegistered:Z

.field private mType:I

.field private timestamp:F


# direct methods
.method public constructor <init>(Lcom/apportable/cm/MotionManager;II)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mRate:I

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/apportable/cm/MotionManager$Listener;->deltaRotationVector:[F

    .line 62
    iput-object p1, p0, Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;

    .line 63
    iput p3, p0, Lcom/apportable/cm/MotionManager$Listener;->mType:I

    .line 64
    iput p2, p0, Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I

    .line 65
    return-void
.end method

.method static synthetic access$500(Lcom/apportable/cm/MotionManager$Listener;)Lcom/apportable/cm/MotionManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/apportable/cm/MotionManager$Listener;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mDispatchType:I

    return v0
.end method

.method private normalize(Landroid/hardware/SensorEvent;FFF)F
    .locals 2

    .prologue
    .line 84
    const/high16 v0, 0x43b40000    # 360.0f

    div-float v0, p2, v0

    const v1, 0x40c90fdb

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getRate()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mRate:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mType:I

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mRegistered:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    iget v0, p0, Lcom/apportable/cm/MotionManager$Listener;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 91
    :sswitch_0
    # getter for: Lcom/apportable/cm/MotionManager;->pastX:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$000()[F

    move-result-object v0

    # getter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$100()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v0, v1

    .line 92
    # getter for: Lcom/apportable/cm/MotionManager;->pastY:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$200()[F

    move-result-object v0

    # getter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$100()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v0, v1

    .line 93
    # getter for: Lcom/apportable/cm/MotionManager;->pastZ:[F
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$300()[F

    move-result-object v0

    # getter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$100()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    .line 94
    # operator++ for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$108()I

    .line 96
    # getter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$100()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 97
    # setter for: Lcom/apportable/cm/MotionManager;->currentSmooth:I
    invoke-static {v4}, Lcom/apportable/cm/MotionManager;->access$102(I)I

    .line 99
    # getter for: Lcom/apportable/cm/MotionManager;->dataReady:Z
    invoke-static {}, Lcom/apportable/cm/MotionManager;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    # setter for: Lcom/apportable/cm/MotionManager;->dataReady:Z
    invoke-static {v5}, Lcom/apportable/cm/MotionManager;->access$402(Z)Z

    .line 104
    :cond_0
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener$1;

    invoke-direct {v0, p0, p1}, Lcom/apportable/cm/MotionManager$Listener$1;-><init>(Lcom/apportable/cm/MotionManager$Listener;Landroid/hardware/SensorEvent;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 149
    :sswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 150
    new-instance v1, Lcom/apportable/cm/MotionManager$Listener$2;

    invoke-direct {v1, p0, v0}, Lcom/apportable/cm/MotionManager$Listener$2;-><init>(Lcom/apportable/cm/MotionManager$Listener;[F)V

    invoke-static {v1}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 159
    :sswitch_2
    iget-object v1, p0, Lcom/apportable/cm/MotionManager$Listener;->mManager:Lcom/apportable/cm/MotionManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    # setter for: Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F
    invoke-static {v1, v0}, Lcom/apportable/cm/MotionManager;->access$1302(Lcom/apportable/cm/MotionManager;[F)[F

    .line 160
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener$3;

    invoke-direct {v0, p0}, Lcom/apportable/cm/MotionManager$Listener$3;-><init>(Lcom/apportable/cm/MotionManager$Listener;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 168
    :sswitch_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 169
    new-instance v1, Lcom/apportable/cm/MotionManager$Listener$4;

    invoke-direct {v1, p0, v0}, Lcom/apportable/cm/MotionManager$Listener$4;-><init>(Lcom/apportable/cm/MotionManager$Listener;[F)V

    invoke-static {v1}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method public setRate(I)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/apportable/cm/MotionManager$Listener;->mRegistered:Z

    .line 77
    return-void
.end method
