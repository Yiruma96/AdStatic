.class Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;
.super Ljava/lang/Object;
.source "ChartBoostShim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/chartboost/ChartBoostShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HasCacheRunnable"
.end annotation


# instance fields
.field private bDone:Z

.field private loc:Ljava/lang/String;

.field private result:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->loc:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->result:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->bDone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/apportable/chartboost/ChartBoostShim$1;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public done()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->bDone:Z

    return v0
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->result:Z

    return v0
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->loc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    const-string v0, ""

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->result:Z

    .line 97
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->bDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->loc:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->result:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->loc:Ljava/lang/String;

    .line 84
    return-void
.end method
