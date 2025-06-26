.class public Lcom/apportable/chartboost/ChartBoostShim;
.super Ljava/lang/Object;
.source "ChartBoostShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChartBoostShim"

.field private static final shim:Lcom/apportable/chartboost/ChartBoostShim;


# instance fields
.field private chartboostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim;

    invoke-direct {v0}, Lcom/apportable/chartboost/ChartBoostShim;-><init>()V

    sput-object v0, Lcom/apportable/chartboost/ChartBoostShim;->shim:Lcom/apportable/chartboost/ChartBoostShim;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$9;

    invoke-direct {v0, p0}, Lcom/apportable/chartboost/ChartBoostShim$9;-><init>(Lcom/apportable/chartboost/ChartBoostShim;)V

    iput-object v0, p0, Lcom/apportable/chartboost/ChartBoostShim;->chartboostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;

    return-void
.end method

.method static synthetic access$000()Lcom/apportable/chartboost/ChartBoostShim;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/apportable/chartboost/ChartBoostShim;->shim:Lcom/apportable/chartboost/ChartBoostShim;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/chartboost/ChartBoostShim;)Lcom/chartboost/sdk/ChartboostDelegate;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apportable/chartboost/ChartBoostShim;->chartboostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;

    return-object v0
.end method

.method public static cacheInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$6;

    invoke-direct {v0, p1}, Lcom/apportable/chartboost/ChartBoostShim$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public static cacheMoreApps(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$8;

    invoke-direct {v0, p1}, Lcom/apportable/chartboost/ChartBoostShim$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public static close(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$3;

    invoke-direct {v0}, Lcom/apportable/chartboost/ChartBoostShim$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public static hasCachedInterstitial(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 103
    new-instance v1, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;-><init>(Lcom/apportable/chartboost/ChartBoostShim$1;)V

    .line 104
    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    :goto_0
    invoke-virtual {v1}, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->done()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 110
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_1
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->getResult()Z

    move-result v0

    goto :goto_1
.end method

.method public static hasCachedInterstitial(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 120
    new-instance v1, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;-><init>(Lcom/apportable/chartboost/ChartBoostShim$1;)V

    .line 121
    invoke-virtual {v1, p1}, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->setLocation(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    :goto_0
    invoke-virtual {v1}, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->done()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 131
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_1
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/apportable/chartboost/ChartBoostShim$HasCacheRunnable;->getResult()Z

    move-result v0

    goto :goto_1
.end method

.method public static native nativeDidCacheInterstitial(Ljava/lang/String;)V
.end method

.method public static native nativeDidCacheMoreApps(Ljava/lang/String;)V
.end method

.method public static native nativeDidClickInterstitial(Ljava/lang/String;)V
.end method

.method public static native nativeDidClickMoreApps(Ljava/lang/String;)V
.end method

.method public static native nativeDidCloseInterstitial(Ljava/lang/String;)V
.end method

.method public static native nativeDidCloseMoreApps(Ljava/lang/String;)V
.end method

.method public static native nativeDidDismissInterstitial(Ljava/lang/String;)V
.end method

.method public static native nativeDidDismissMoreApps(Ljava/lang/String;)V
.end method

.method public static native nativeDidDisplayInterstitial(Ljava/lang/String;)V
.end method

.method public static native nativeDidFailToLoadInterstitial(Ljava/lang/String;I)V
.end method

.method public static native nativeDidFailToLoadMoreApps(Ljava/lang/String;I)V
.end method

.method public static native nativeDidFailToRecordClick(Ljava/lang/String;)V
.end method

.method public static native nativeDidPauseClickForConfirmation()Z
.end method

.method public static native nativeShouldDisplayInterstitial(Ljava/lang/String;)Z
.end method

.method public static native nativeShouldDisplayMoreApps(Ljava/lang/String;)Z
.end method

.method public static native nativeShouldRequestInterstitial(Ljava/lang/String;)Z
.end method

.method public static native nativeShouldRequestMoreApps(Ljava/lang/String;)Z
.end method

.method public static onCreate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/chartboost/ChartBoostShim$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$5;

    invoke-direct {v0, p1}, Lcom/apportable/chartboost/ChartBoostShim$5;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public static showInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$4;

    invoke-direct {v0, p1}, Lcom/apportable/chartboost/ChartBoostShim$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public static showMoreApps(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$7;

    invoke-direct {v0, p1}, Lcom/apportable/chartboost/ChartBoostShim$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public static startSession(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/apportable/chartboost/ChartBoostShim$2;

    invoke-direct {v0, p0}, Lcom/apportable/chartboost/ChartBoostShim$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method
