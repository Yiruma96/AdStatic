.class public Lcom/apportable/cm/MotionManager;
.super Ljava/lang/Object;
.source "MotionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/cm/MotionManager$Listener;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER:I = 0x1

.field private static final DEVICE_MOTION:I = 0x4

.field private static final GRAVITY_ACCELERATION:F = 9.81f

.field private static final GYRO:I = 0x2

.field private static final MAGNETOMETER:I = 0x3

.field private static final SMOOTHING_DISTANCE:I = 0x4

.field private static currentSmooth:I

.field private static dataReady:Z

.field private static pastX:[F

.field private static pastY:[F

.field private static pastZ:[F


# instance fields
.field private accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

.field private deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

.field private deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

.field private deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

.field private gravityListener:Lcom/apportable/cm/MotionManager$Listener;

.field private gyroListener:Lcom/apportable/cm/MotionManager$Listener;

.field private isLandscapeDevice:Z

.field private mGeomagnetic:[F

.field private mGravity:[F

.field private mObject:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

.field private orientationListener:Lcom/apportable/cm/MotionManager$Listener;

.field private rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 42
    new-array v0, v1, [F

    sput-object v0, Lcom/apportable/cm/MotionManager;->pastX:[F

    .line 43
    new-array v0, v1, [F

    sput-object v0, Lcom/apportable/cm/MotionManager;->pastY:[F

    .line 44
    new-array v0, v1, [F

    sput-object v0, Lcom/apportable/cm/MotionManager;->pastZ:[F

    .line 45
    sput-boolean v2, Lcom/apportable/cm/MotionManager;->dataReady:Z

    .line 46
    sput v2, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/apportable/cm/MotionManager;->mObject:I

    .line 21
    iput-boolean v0, p0, Lcom/apportable/cm/MotionManager;->isLandscapeDevice:Z

    .line 40
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->mGravity:[F

    .line 41
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F

    .line 213
    iput p1, p0, Lcom/apportable/cm/MotionManager;->mObject:I

    .line 214
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v1

    .line 215
    const-string v0, "sensor"

    invoke-virtual {v1, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 217
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {v0, p0, v4, v4}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 218
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {v0, p0, v5, v3}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 219
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {v0, p0, v6, v5}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 221
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {v0, p0, v3, v4}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 222
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {v0, p0, v3, v3}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 223
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {v0, p0, v3, v5}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 224
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v3, v2}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 225
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    const/16 v2, 0xb

    invoke-direct {v0, p0, v3, v2}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 226
    new-instance v0, Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {v0, p0, v3, v6}, Lcom/apportable/cm/MotionManager$Listener;-><init>(Lcom/apportable/cm/MotionManager;II)V

    iput-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 228
    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 229
    const-string v0, "window"

    invoke-virtual {v1, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 230
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 233
    if-ne v2, v5, :cond_0

    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_1

    :cond_0
    if-ne v2, v4, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v6, :cond_2

    .line 236
    :cond_1
    iput-boolean v4, p0, Lcom/apportable/cm/MotionManager;->isLandscapeDevice:Z

    .line 238
    :cond_2
    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private native acceleration(IIFFF)V
.end method

.method static synthetic access$000()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/apportable/cm/MotionManager;->pastX:[F

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/apportable/cm/MotionManager;IIFFF)V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->acceleration(IIFFF)V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0

    .prologue
    .line 18
    sput p0, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    return p0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/apportable/cm/MotionManager;->currentSmooth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/apportable/cm/MotionManager;IIFFF)V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->gyroscope(IIFFF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/apportable/cm/MotionManager;IIFFF)V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->orientation(IIFFF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/apportable/cm/MotionManager;)[F
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F

    return-object v0
.end method

.method static synthetic access$1302(Lcom/apportable/cm/MotionManager;[F)[F
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/apportable/cm/MotionManager;->mGeomagnetic:[F

    return-object p1
.end method

.method static synthetic access$1400(Lcom/apportable/cm/MotionManager;IIFFF)V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->magneticField(IIFFF)V

    return-void
.end method

.method static synthetic access$1500(Lcom/apportable/cm/MotionManager;IIFFF)V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/apportable/cm/MotionManager;->gravity(IIFFF)V

    return-void
.end method

.method static synthetic access$1600(Lcom/apportable/cm/MotionManager;IIFFFFFFFFF)V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p11}, Lcom/apportable/cm/MotionManager;->rotation(IIFFFFFFFFF)V

    return-void
.end method

.method static synthetic access$200()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/apportable/cm/MotionManager;->pastY:[F

    return-object v0
.end method

.method static synthetic access$300()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/apportable/cm/MotionManager;->pastZ:[F

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/apportable/cm/MotionManager;->dataReady:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .prologue
    .line 18
    sput-boolean p0, Lcom/apportable/cm/MotionManager;->dataReady:Z

    return p0
.end method

.method static synthetic access$600(Lcom/apportable/cm/MotionManager;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/apportable/cm/MotionManager;->isLandscapeDevice:Z

    return v0
.end method

.method static synthetic access$700(Lcom/apportable/cm/MotionManager;)[F
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mGravity:[F

    return-object v0
.end method

.method static synthetic access$702(Lcom/apportable/cm/MotionManager;[F)[F
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/apportable/cm/MotionManager;->mGravity:[F

    return-object p1
.end method

.method static synthetic access$800(Lcom/apportable/cm/MotionManager;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/apportable/cm/MotionManager;->mObject:I

    return v0
.end method

.method private native gravity(IIFFF)V
.end method

.method private native gyroscope(IIFFF)V
.end method

.method private isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native magneticField(IIFFF)V
.end method

.method private native orientation(IIFFF)V
.end method

.method private native rotation(IIFFFFFFFFF)V
.end method

.method private setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const/4 v0, 0x1

    .line 262
    invoke-direct {p0, p1}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 264
    :cond_0
    invoke-virtual {p1, p2}, Lcom/apportable/cm/MotionManager$Listener;->setRate(I)V

    .line 265
    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0, p1}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 268
    :cond_1
    return-void
.end method

.method private startListener(Lcom/apportable/cm/MotionManager$Listener;)V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/apportable/cm/MotionManager$Listener;->setRegistered(Z)V

    .line 247
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->getRate()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 249
    :cond_0
    return-void
.end method

.method private stopListener(Lcom/apportable/cm/MotionManager$Listener;)V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/apportable/cm/MotionManager$Listener;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apportable/cm/MotionManager$Listener;->setRegistered(Z)V

    .line 254
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public isAccelerometerAvailable()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceMotionAvailable()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 300
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 301
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 302
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 303
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    .line 304
    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGyroAvailable()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMagnetometerAvailable()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->isSensorAvailable(Lcom/apportable/cm/MotionManager$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccelerometerUpdateInterval(I)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 322
    return-void
.end method

.method public setDeviceMotionUpdateInterval(I)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 367
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 368
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 369
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 370
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 371
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 372
    return-void
.end method

.method public setGyroUpdateInterval(I)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 334
    return-void
.end method

.method public setMagnetometerUpdateInterval(I)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0, p1}, Lcom/apportable/cm/MotionManager;->setListenerRate(Lcom/apportable/cm/MotionManager$Listener;I)V

    .line 346
    return-void
.end method

.method public setObject(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/apportable/cm/MotionManager;->mObject:I

    .line 242
    return-void
.end method

.method public startAccelerometerUpdates()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 314
    return-void
.end method

.method public startDeviceMotionUpdates()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 350
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 351
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 352
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 353
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 354
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 355
    return-void
.end method

.method public startGyroUpdates()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 326
    return-void
.end method

.method public startMagnetometerUpdates()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->startListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 338
    return-void
.end method

.method public stopAccelerometerUpdates()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->accelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 318
    return-void
.end method

.method public stopDeviceMotionUpdates()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionAccelerometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 358
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionGyroListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 359
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->deviceMotionMagnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 360
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gravityListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 361
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->rotationVectorListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 362
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->orientationListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 363
    return-void
.end method

.method public stopGyroUpdates()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->gyroListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 330
    return-void
.end method

.method public stopMagnetometerUpdates()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/apportable/cm/MotionManager;->magnetometerListener:Lcom/apportable/cm/MotionManager$Listener;

    invoke-direct {p0, v0}, Lcom/apportable/cm/MotionManager;->stopListener(Lcom/apportable/cm/MotionManager$Listener;)V

    .line 342
    return-void
.end method
