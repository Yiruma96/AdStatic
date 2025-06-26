.class public Lcom/apportable/activity/BackgroundLibraryLoader;
.super Ljava/lang/Object;
.source "BackgroundLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/activity/BackgroundLibraryLoader$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

.field private mLoadError:Ljava/lang/Throwable;

.field private mLoadFinished:Z

.field private mOnConfigurationChangedAction:Ljava/lang/Runnable;

.field private mOnCreateAction:Ljava/lang/Runnable;

.field private mOnNewIntentAction:Ljava/lang/Runnable;

.field private mOnResumeAction:Ljava/lang/Runnable;

.field private mOnStartAction:Ljava/lang/Runnable;

.field private mPausedNotLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/activity/BackgroundLibraryLoader;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/apportable/activity/BackgroundLibraryLoader;->loadFinished(Ljava/lang/Throwable;)V

    return-void
.end method

.method private loadFinished(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadError:Ljava/lang/Throwable;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadFinished:Z

    .line 118
    iget-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mPausedNotLoaded:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    .line 121
    :cond_0
    return-void
.end method

.method private replayActions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadFinished:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

    iget-object v1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadError:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader$Callback;->onFinished(Ljava/lang/Throwable;)V

    .line 127
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnCreateAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnCreateAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnCreateAction:Ljava/lang/Runnable;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnStartAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 137
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnStartAction:Ljava/lang/Runnable;

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnNewIntentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnNewIntentAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 141
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnNewIntentAction:Ljava/lang/Runnable;

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnResumeAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnResumeAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 145
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnResumeAction:Ljava/lang/Runnable;

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnConfigurationChangedAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnConfigurationChangedAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 149
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnConfigurationChangedAction:Ljava/lang/Runnable;

    .line 152
    :cond_5
    return-void
.end method


# virtual methods
.method public isLoaded()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadError:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mPausedNotLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/app/Activity;Lcom/apportable/activity/BackgroundLibraryLoader$Callback;)V
    .locals 2

    .prologue
    .line 29
    iput-object p2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

    .line 30
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apportable/activity/BackgroundLibraryLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/apportable/activity/BackgroundLibraryLoader$1;-><init>(Lcom/apportable/activity/BackgroundLibraryLoader;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method public onConfigurationChanged(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnConfigurationChangedAction:Ljava/lang/Runnable;

    .line 110
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    .line 111
    return-void
.end method

.method public onCreate(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnCreateAction:Ljava/lang/Runnable;

    .line 63
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    .line 64
    return-void
.end method

.method public onDestroy(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 106
    :cond_0
    return-void
.end method

.method public onNewIntent(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnNewIntentAction:Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    .line 74
    return-void
.end method

.method public onPause(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mPausedNotLoaded:Z

    goto :goto_0
.end method

.method public onRestart(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 100
    :cond_0
    return-void
.end method

.method public onResume(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mPausedNotLoaded:Z

    .line 78
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnResumeAction:Ljava/lang/Runnable;

    .line 79
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    .line 80
    return-void
.end method

.method public onStart(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnStartAction:Ljava/lang/Runnable;

    .line 68
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    .line 69
    return-void
.end method

.method public onStop(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 94
    :cond_0
    return-void
.end method
