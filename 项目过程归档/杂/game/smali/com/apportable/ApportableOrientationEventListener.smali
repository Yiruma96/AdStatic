.class public abstract Lcom/apportable/ApportableOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "ApportableOrientationEventListener.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final needsKindleCompatibilityAdjustment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "ApportableOrientationEventListener"

    sput-object v0, Lcom/apportable/ApportableOrientationEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/apportable/ApportableOrientationEventListener;->determineCompatibilityAdjustments()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apportable/ApportableOrientationEventListener;->needsKindleCompatibilityAdjustment:Z

    .line 20
    return-void
.end method

.method private determineCompatibilityAdjustments()Z
    .locals 5

    .prologue
    .line 23
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 24
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "KFTT"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "KFJWA"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "KFJWI"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "KFSOWI"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "KFTHWA"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "KFTHWI"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "KFAPWA"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "KFAPWI"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 37
    sget-object v2, Lcom/apportable/ApportableOrientationEventListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceModel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", orientation adjustment = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v1
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/apportable/ApportableOrientationEventListener;->needsKindleCompatibilityAdjustment:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    rsub-int v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apportable/ApportableOrientationEventListener;->onOrientationChangedWithCompatibilityAdjustments(I)V

    .line 47
    return-void
.end method

.method public abstract onOrientationChangedWithCompatibilityAdjustments(I)V
.end method
