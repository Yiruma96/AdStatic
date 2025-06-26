.class public Lcom/apportable/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/Lifecycle$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final EVENT_ACTIVITY_CREATED:I = 0x1

.field public static final EVENT_ACTIVITY_DESTROYED:I = 0x7

.field public static final EVENT_ACTIVITY_PAUSED:I = 0x5

.field public static final EVENT_ACTIVITY_RESTARTED:I = 0x3

.field public static final EVENT_ACTIVITY_RESUMED:I = 0x4

.field public static final EVENT_ACTIVITY_STARTED:I = 0x2

.field public static final EVENT_ACTIVITY_STOPPED:I = 0x6

.field public static final EVENT_APPLICATION_CREATED:I

.field private static TAG:Ljava/lang/String;

.field private static didNotReceiveUnfocus:Z

.field private static sActivity:Lcom/apportable/activity/VerdeActivity;

.field private static sActivityPaused:Z

.field private static sActivityWasCreated:Z

.field private static sActivityWasInited:Z

.field private static sActivityWasRestarted:Z

.field private static sActivityWasResumed:Z

.field private static sActivityWasStarted:Z

.field private static sActivityWasStopped:Z

.field private static sApplication:Lcom/apportable/app/VerdeApplication;

.field private static sApplicationWasConstructed:Z

.field private static sApplicationWasCreated:Z

.field private static sApplicationWasInited:Z

.field private static sContextChanged:Z

.field private static sContextHasSurface:Z

.field private static sContextIsValid:Z

.field private static sLibrariesWereLoaded:Z

.field private static sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apportable/Lifecycle$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static sNativeApplicationInBackground:Z

.field private static sNativeApplicationStarted:Z

.field private static sOrientation:I

.field private static sWindowHasFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    .line 56
    sput-boolean v1, Lcom/apportable/Lifecycle;->sApplicationWasConstructed:Z

    .line 57
    sput-boolean v1, Lcom/apportable/Lifecycle;->sApplicationWasInited:Z

    .line 58
    sput-boolean v1, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    .line 60
    sput-boolean v1, Lcom/apportable/Lifecycle;->sLibrariesWereLoaded:Z

    .line 62
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasInited:Z

    .line 63
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasCreated:Z

    .line 64
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    .line 65
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasRestarted:Z

    .line 66
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasResumed:Z

    .line 67
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    .line 68
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    .line 70
    sput-boolean v1, Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z

    .line 72
    sput-boolean v1, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    .line 74
    sput-boolean v1, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    .line 75
    sput-boolean v1, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    .line 76
    sput-boolean v1, Lcom/apportable/Lifecycle;->sContextChanged:Z

    .line 78
    sput-boolean v1, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    .line 79
    sput-boolean v1, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    .line 87
    const-string v0, "Lifecycle.java"

    sput-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 44
    sput-boolean p0, Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z

    return p0
.end method

.method public static addLifecycleListener(Lcom/apportable/Lifecycle$Listener;)V
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    .line 437
    :cond_0
    sget-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method private static native applicationDidBecomeActive()V
.end method

.method private static native applicationDidEnterBackground()V
.end method

.method private static native applicationDidReceiveMemoryWarning()V
.end method

.method private static native applicationWillEnterForeground()V
.end method

.method private static native applicationWillResignActive()V
.end method

.method private static native applicationWillTerminate()V
.end method

.method private static native contextDidBecomeInvalid()V
.end method

.method private static native contextDidBecomeValid()V
.end method

.method private static expectGainFocus(Lcom/apportable/activity/VerdeActivity;)V
    .locals 4

    .prologue
    .line 416
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 418
    new-instance v1, Lcom/apportable/Lifecycle$3;

    invoke-direct {v1, p0}, Lcom/apportable/Lifecycle$3;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    return-void
.end method

.method private static expectLoseFocus(Lcom/apportable/activity/VerdeActivity;)V
    .locals 4

    .prologue
    .line 398
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 400
    new-instance v1, Lcom/apportable/Lifecycle$2;

    invoke-direct {v1, p0}, Lcom/apportable/Lifecycle$2;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    return-void
.end method

.method public static isCreated()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    return v0
.end method

.method public static isInBackground()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    return v0
.end method

.method public static isNativeApplicationStarted()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    return v0
.end method

.method private static logState(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sApplicationWasConstructed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sApplicationWasConstructed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sApplicationWasInited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sApplicationWasInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sApplicationWasCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sLibrariesWereLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sLibrariesWereLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sActivityWasInited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sActivityWasCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sActivityWasStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sActivityWasRestarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasRestarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sActivityWasResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sActivityPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sActivityWasStopped = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sWindowHasFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sContextHasSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sContextIsValid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sContextChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sContextChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sNativeApplicationStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sNativeApplicationInBackground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public static onActivityCreate(Lcom/apportable/activity/VerdeActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/apportable/activity/VerdeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    const-string v1, "appIsActive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    const-string v2, "wasLifecycleInterrupted"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    sput-boolean v3, Lcom/apportable/Lifecycle;->sActivityWasCreated:Z

    .line 207
    invoke-static {v3}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    .line 208
    return-void
.end method

.method public static onActivityDestroy(Lcom/apportable/activity/VerdeActivity;)V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    .line 261
    return-void
.end method

.method public static onActivityInit(Lcom/apportable/activity/VerdeActivity;)V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasInited:Z

    .line 188
    sput-object p0, Lcom/apportable/Lifecycle;->sActivity:Lcom/apportable/activity/VerdeActivity;

    .line 192
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    .line 193
    return-void
.end method

.method public static onActivityNewIntent(Lcom/apportable/activity/VerdeActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public static onActivityPause(Lcom/apportable/activity/VerdeActivity;)V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasResumed:Z

    .line 240
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    .line 244
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    .line 245
    invoke-static {p0}, Lcom/apportable/Lifecycle;->expectLoseFocus(Lcom/apportable/activity/VerdeActivity;)V

    .line 246
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    .line 247
    return-void
.end method

.method public static onActivityRestart(Lcom/apportable/activity/VerdeActivity;)V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasRestarted:Z

    .line 223
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    .line 224
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    .line 225
    return-void
.end method

.method public static onActivityResult(Lcom/apportable/activity/VerdeActivity;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public static onActivityResume(Lcom/apportable/activity/VerdeActivity;)V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasResumed:Z

    .line 233
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    .line 234
    invoke-static {p0}, Lcom/apportable/Lifecycle;->expectGainFocus(Lcom/apportable/activity/VerdeActivity;)V

    .line 235
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    .line 236
    return-void
.end method

.method public static onActivityStart(Lcom/apportable/activity/VerdeActivity;)V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    .line 212
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    .line 213
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    .line 214
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    .line 215
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    .line 216
    return-void
.end method

.method public static onActivityStop(Lcom/apportable/activity/VerdeActivity;)V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    .line 251
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    .line 255
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    .line 256
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    .line 257
    return-void
.end method

.method public static onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V
    .locals 2

    .prologue
    .line 272
    if-nez p1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z

    .line 273
    :cond_0
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    .line 274
    sput-boolean p1, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    .line 275
    if-eq v0, p1, :cond_1

    .line 279
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/Lifecycle$1;

    invoke-direct {v1}, Lcom/apportable/Lifecycle$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    .line 286
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    .line 288
    :cond_1
    return-void
.end method

.method public static onApplicationConfigurationChanged(Lcom/apportable/app/VerdeApplication;Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 171
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/apportable/Lifecycle;->sOrientation:I

    .line 172
    return-void
.end method

.method public static onApplicationConstruct()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasConstructed:Z

    .line 150
    return-void
.end method

.method public static onApplicationCreate(Lcom/apportable/app/VerdeApplication;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    .line 166
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    .line 168
    return-void
.end method

.method public static onApplicationInit(Lcom/apportable/app/VerdeApplication;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasInited:Z

    .line 154
    sput-object p0, Lcom/apportable/Lifecycle;->sApplication:Lcom/apportable/app/VerdeApplication;

    .line 158
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    .line 159
    return-void
.end method

.method public static onApplicationLowMemory(Lcom/apportable/app/VerdeApplication;)V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationDidReceiveMemoryWarning()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v1, "Lifecycle"

    const-string v2, "Native code not loaded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onApplicationTerminate(Lcom/apportable/app/VerdeApplication;)V
    .locals 0

    .prologue
    .line 183
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationWillTerminate()V

    .line 184
    return-void
.end method

.method public static onContextSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextChanged:Z

    .line 304
    return-void
.end method

.method public static onContextSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    .line 295
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    .line 296
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    .line 297
    return-void
.end method

.method public static onContextSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    .line 308
    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextChanged:Z

    .line 312
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    .line 313
    return-void
.end method

.method public static onLibrariesFinishedLoading()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sLibrariesWereLoaded:Z

    .line 369
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    .line 370
    return-void
.end method

.method private static raiseLifecycleStateChange(I)V
    .locals 4

    .prologue
    .line 441
    sget-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 448
    :cond_0
    return-void

    .line 445
    :cond_1
    sget-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/Lifecycle$Listener;

    .line 446
    sget-object v2, Lcom/apportable/Lifecycle;->sApplication:Lcom/apportable/app/VerdeApplication;

    sget-object v3, Lcom/apportable/Lifecycle;->sActivity:Lcom/apportable/activity/VerdeActivity;

    invoke-interface {v0, p0, v2, v3}, Lcom/apportable/Lifecycle$Listener;->OnLifecycleStateChanged(ILandroid/app/Application;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static startNativeApplication()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 373
    sput-boolean v1, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    .line 374
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    if-eqz v0, :cond_0

    :cond_2
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    if-eqz v0, :cond_0

    .line 383
    sput-boolean v1, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    goto :goto_0
.end method

.method private static testHasValidContext()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 316
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextChanged:Z

    if-eqz v0, :cond_2

    .line 318
    :cond_0
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    if-eq v0, v1, :cond_1

    .line 319
    sput-boolean v1, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    .line 320
    invoke-static {}, Lcom/apportable/Lifecycle;->contextDidBecomeValid()V

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Lcom/apportable/Lifecycle;->contextDidBecomeInvalid()V

    .line 325
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    goto :goto_0
.end method

.method private static testInBackground()V
    .locals 1

    .prologue
    .line 331
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    if-eqz v0, :cond_1

    .line 336
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    .line 337
    invoke-static {}, Lcom/apportable/Lifecycle;->testHasValidContext()V

    .line 338
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationWillEnterForeground()V

    .line 339
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationDidBecomeActive()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    if-eqz v0, :cond_0

    :cond_2
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    .line 344
    invoke-static {}, Lcom/apportable/Lifecycle;->testHasValidContext()V

    .line 345
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationWillResignActive()V

    .line 346
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationDidEnterBackground()V

    goto :goto_0
.end method

.method private static testLaunched()V
    .locals 1

    .prologue
    .line 351
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasInited:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasInited:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apportable/Lifecycle;->sLibrariesWereLoaded:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/apportable/Lifecycle;->startNativeApplication()V

    .line 362
    :cond_0
    return-void
.end method
