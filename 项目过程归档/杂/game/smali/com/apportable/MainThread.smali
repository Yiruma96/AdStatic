.class public Lcom/apportable/MainThread;
.super Ljava/lang/Object;
.source "MainThread.java"


# static fields
.field private static final STACK_SIZE:I = 0x500000

.field private static mHandler:Landroid/os/Handler;

.field private static mInNative:Z

.field private static mStarted:Z

.field private static mThread:Ljava/lang/Thread;

.field private static mTickActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 15
    sput-object p0, Lcom/apportable/MainThread;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/apportable/MainThread;->nativeRun()V

    return-void
.end method

.method public static addTickAction(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 97
    sget-object v1, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/apportable/MainThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/apportable/MainThread;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static declared-synchronized goNative()V
    .locals 3

    .prologue
    .line 71
    const-class v1, Lcom/apportable/MainThread;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/apportable/MainThread;->mStarted:Z

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "thread is not running"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 75
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/apportable/MainThread;->mInNative:Z

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "thread already running in native"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/MainThread;->mInNative:Z

    .line 80
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/apportable/MainThread$2;

    invoke-direct {v2}, Lcom/apportable/MainThread$2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized isStarted()Z
    .locals 2

    .prologue
    .line 64
    const-class v0, Lcom/apportable/MainThread;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/apportable/MainThread;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native nativeRun()V
.end method

.method public static removeTickAction(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 103
    sget-object v1, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static runTickActions()V
    .locals 3

    .prologue
    .line 123
    sget-object v1, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    monitor-enter v1

    .line 124
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 128
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 134
    :cond_0
    return-void
.end method

.method public static declared-synchronized start()V
    .locals 7

    .prologue
    .line 28
    const-class v6, Lcom/apportable/MainThread;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/apportable/MainThread;->mStarted:Z

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "thread is already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 32
    :cond_0
    :try_start_1
    new-instance v2, Lcom/apportable/MainThread$1;

    invoke-direct {v2}, Lcom/apportable/MainThread$1;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    const-string v3, "MainThread"

    const-wide/32 v4, 0x500000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    sput-object v0, Lcom/apportable/MainThread;->mThread:Ljava/lang/Thread;

    .line 50
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    sget-object v0, Lcom/apportable/MainThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    const/4 v0, 0x1

    :try_start_5
    sput-boolean v0, Lcom/apportable/MainThread;->mStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    monitor-exit v6

    return-void

    .line 58
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static tick()V
    .locals 1

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lcom/apportable/MainThread;->runTickActions()V

    .line 114
    invoke-static {}, Lcom/apportable/utils/RunLoop;->processMessages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
