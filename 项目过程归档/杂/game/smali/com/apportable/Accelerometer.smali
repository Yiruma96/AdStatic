.class public Lcom/apportable/Accelerometer;
.super Ljava/lang/Object;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DELAY:J = 0xfL

.field private static final SMOOTHING_DISTANCE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Accelerometer"

.field private static currentSmooth:I

.field private static dataReady:Z

.field private static pastX:[F

.field private static pastY:[F

.field private static pastZ:[F


# instance fields
.field private isLandscapeDevice:Z

.field private lastEvent:J

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 28
    new-array v0, v1, [F

    sput-object v0, Lcom/apportable/Accelerometer;->pastX:[F

    .line 29
    new-array v0, v1, [F

    sput-object v0, Lcom/apportable/Accelerometer;->pastY:[F

    .line 30
    new-array v0, v1, [F

    sput-object v0, Lcom/apportable/Accelerometer;->pastZ:[F

    .line 31
    sput-boolean v2, Lcom/apportable/Accelerometer;->dataReady:Z

    .line 32
    sput v2, Lcom/apportable/Accelerometer;->currentSmooth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apportable/Accelerometer;->lastEvent:J

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/Accelerometer;->isLandscapeDevice:Z

    .line 35
    iput-object p1, p0, Lcom/apportable/Accelerometer;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/apportable/Accelerometer;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/apportable/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 39
    iget-object v0, p0, Lcom/apportable/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/Accelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 42
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 43
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 46
    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    :cond_0
    if-ne v1, v2, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 49
    :cond_1
    iput-boolean v2, p0, Lcom/apportable/Accelerometer;->isLandscapeDevice:Z

    .line 51
    :cond_2
    return-void
.end method

.method private native onSensorChanged(FFFJ)V
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/apportable/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 59
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/apportable/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/apportable/Accelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 55
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const v11, 0x411ce80a

    const/high16 v10, 0x40400000    # 3.0f

    .line 63
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eq v1, v8, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 69
    sget-object v1, Lcom/apportable/Accelerometer;->pastX:[F

    sget v5, Lcom/apportable/Accelerometer;->currentSmooth:I

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    aput v6, v1, v5

    .line 70
    sget-object v1, Lcom/apportable/Accelerometer;->pastY:[F

    sget v5, Lcom/apportable/Accelerometer;->currentSmooth:I

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    aput v6, v1, v5

    .line 71
    sget-object v1, Lcom/apportable/Accelerometer;->pastZ:[F

    sget v5, Lcom/apportable/Accelerometer;->currentSmooth:I

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v1, v5

    .line 72
    sget v1, Lcom/apportable/Accelerometer;->currentSmooth:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/apportable/Accelerometer;->currentSmooth:I

    .line 74
    sget v1, Lcom/apportable/Accelerometer;->currentSmooth:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    .line 75
    sput v4, Lcom/apportable/Accelerometer;->currentSmooth:I

    .line 77
    sget-boolean v1, Lcom/apportable/Accelerometer;->dataReady:Z

    if-nez v1, :cond_2

    .line 78
    sput-boolean v8, Lcom/apportable/Accelerometer;->dataReady:Z

    .line 82
    :cond_2
    iget-wide v6, p0, Lcom/apportable/Accelerometer;->lastEvent:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0xf

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 87
    iput-wide v2, p0, Lcom/apportable/Accelerometer;->lastEvent:J

    move v3, v4

    move v1, v0

    move v2, v0

    .line 93
    :goto_1
    const/4 v5, 0x3

    if-ge v3, v5, :cond_3

    .line 94
    sget-boolean v5, Lcom/apportable/Accelerometer;->dataReady:Z

    if-nez v5, :cond_4

    .line 95
    sget-object v0, Lcom/apportable/Accelerometer;->pastX:[F

    aget v0, v0, v4

    mul-float v2, v10, v0

    .line 96
    sget-object v0, Lcom/apportable/Accelerometer;->pastY:[F

    aget v0, v0, v4

    mul-float v1, v10, v0

    .line 97
    sget-object v0, Lcom/apportable/Accelerometer;->pastZ:[F

    aget v0, v0, v4

    mul-float/2addr v0, v10

    .line 106
    :cond_3
    div-float/2addr v2, v10

    .line 107
    div-float v3, v1, v10

    .line 108
    div-float/2addr v0, v10

    .line 110
    iget-boolean v1, p0, Lcom/apportable/Accelerometer;->isLandscapeDevice:Z

    if-eqz v1, :cond_5

    .line 111
    div-float/2addr v2, v11

    .line 112
    neg-float v1, v3

    div-float/2addr v1, v11

    .line 113
    neg-float v0, v0

    div-float v3, v0, v11

    .line 120
    :goto_2
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/apportable/Accelerometer;->onSensorChanged(FFFJ)V

    goto :goto_0

    .line 101
    :cond_4
    sget-object v5, Lcom/apportable/Accelerometer;->pastX:[F

    aget v5, v5, v3

    add-float/2addr v5, v2

    .line 102
    sget-object v2, Lcom/apportable/Accelerometer;->pastY:[F

    aget v2, v2, v3

    add-float/2addr v2, v1

    .line 103
    sget-object v1, Lcom/apportable/Accelerometer;->pastZ:[F

    aget v1, v1, v3

    add-float/2addr v1, v0

    .line 93
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v5

    goto :goto_1

    .line 115
    :cond_5
    neg-float v1, v2

    div-float/2addr v1, v11

    .line 116
    neg-float v2, v3

    div-float/2addr v2, v11

    .line 117
    neg-float v0, v0

    div-float v3, v0, v11

    goto :goto_2
.end method
