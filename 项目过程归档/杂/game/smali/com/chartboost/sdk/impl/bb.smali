.class public Lcom/chartboost/sdk/impl/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bb$b;,
        Lcom/chartboost/sdk/impl/bb$a;,
        Lcom/chartboost/sdk/impl/bb$c;
    }
.end annotation


# static fields
.field private static b:Lcom/chartboost/sdk/impl/bb;

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/chartboost/sdk/impl/ba;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/chartboost/sdk/impl/ba;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/chartboost/sdk/impl/az;

.field private c:Lcom/chartboost/sdk/impl/m;

.field private d:Lcom/chartboost/sdk/Libraries/h;

.field private h:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bb;->g:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/az;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ad;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/m;

    .line 89
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/az;

    .line 90
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "CBRequestManager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Libraries/h;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bb;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bb;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/az;->addObserver(Ljava/util/Observer;)V

    .line 94
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/ba;
    .locals 2

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 506
    if-eqz v1, :cond_0

    .line 507
    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 509
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/bb;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/impl/bb;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Lcom/chartboost/sdk/impl/bb;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/impl/bb;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/chartboost/sdk/impl/bb;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/impl/bb;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/impl/bb;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bb;)Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/m;

    return-object v0
.end method

.method private a(Lcom/chartboost/sdk/impl/ba;)V
    .locals 3

    .prologue
    .line 485
    if-eqz p1, :cond_2

    .line 486
    const/4 v0, 0x0

    .line 487
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    instance-of v1, p1, Lcom/chartboost/sdk/impl/ba;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->t()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;

    move-result-object v0

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->k()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 494
    sget-object v1, Lcom/chartboost/sdk/impl/bb;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_2
    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 107
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/chartboost/sdk/Libraries/e$b;

    const/4 v0, 0x0

    const-string v2, "endpoint"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v4, "statuscode"

    if-nez p2, :cond_1

    const-string v0, "None"

    :goto_1
    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const-string v4, "error"

    if-nez p3, :cond_2

    const-string v0, "None"

    :goto_2
    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x3

    const-string v4, "errorDescription"

    if-nez p3, :cond_3

    const-string v0, "None"

    :goto_3
    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "retryCount"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    .line 118
    const-string v0, "request_manager"

    const-string v1, "request"

    if-eqz p4, :cond_4

    const-string v2, "success"

    :goto_4
    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v6

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 111
    :cond_1
    iget v0, p2, Lcom/chartboost/sdk/impl/i;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->a()Lcom/chartboost/sdk/Model/CBError$a;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 118
    :cond_4
    const-string v2, "failure"

    goto :goto_4
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bb;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bb;)Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    const-class v1, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v1

    .line 184
    :try_start_0
    sget-object v2, Lcom/chartboost/sdk/impl/bb;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    sget-object v2, Lcom/chartboost/sdk/impl/bb;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 188
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 190
    :cond_0
    return-void
.end method

.method public static declared-synchronized d()V
    .locals 8

    .prologue
    .line 419
    const-class v2, Lcom/chartboost/sdk/impl/bb;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/h;->c()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v3

    .line 420
    const/4 v0, 0x0

    .line 421
    if-eqz v3, :cond_2

    .line 422
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 423
    :goto_0
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 424
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 425
    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    .line 426
    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 427
    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 428
    invoke-static {v6}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v5

    .line 429
    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/ba;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    :try_start_1
    const-string v1, "CBRequestManager"

    const-string v3, "Error executing saved requests"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :cond_1
    monitor-exit v2

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static declared-synchronized h()Z
    .locals 2

    .prologue
    .line 546
    const-class v1, Lcom/chartboost/sdk/impl/bb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/bb;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x1

    .line 548
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic k()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/m;

    return-object v0
.end method

.method protected a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/ba$c;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/ba;->d(Z)V

    .line 141
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/ba;->c(Z)V

    .line 144
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/ba;)V

    .line 146
    :cond_2
    invoke-direct {p0, p1, v3, v0, v2}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V

    .line 147
    if-eqz p2, :cond_0

    .line 148
    invoke-interface {p2, v3, p1, v0}, Lcom/chartboost/sdk/impl/ba$c;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->h()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ba;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/ba;->c(Z)V

    .line 155
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/ba;)V

    .line 160
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/impl/bb$c;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/bb$c;-><init>(Lcom/chartboost/sdk/impl/bb;Lcom/chartboost/sdk/impl/ba;)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bb;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    const-class v1, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v1

    .line 169
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->c()Lcom/chartboost/sdk/Libraries/c$a;

    move-result-object v2

    .line 170
    sget-object v3, Lcom/chartboost/sdk/Libraries/c$a;->a:Lcom/chartboost/sdk/Libraries/c$a;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/chartboost/sdk/Libraries/c$a;->b:Lcom/chartboost/sdk/Libraries/c$a;

    if-ne v2, v3, :cond_2

    .line 171
    :cond_0
    sget-object v2, Lcom/chartboost/sdk/impl/bb;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 178
    :cond_1
    return-void

    .line 173
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 387
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/bb;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/chartboost/sdk/impl/bb;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ba;

    .line 389
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->q()Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->o()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(I)V

    .line 392
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->r()Lcom/chartboost/sdk/impl/ba$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_3

    .line 399
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 400
    invoke-direct {p0, v3}, Lcom/chartboost/sdk/impl/bb;->a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v4

    .line 401
    if-eqz v4, :cond_2

    .line 402
    sget-object v5, Lcom/chartboost/sdk/impl/bb;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v6, v3}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/impl/ba;->c(Z)V

    .line 404
    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ba;->o()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/impl/ba;->a(I)V

    .line 405
    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ba;->r()Lcom/chartboost/sdk/impl/ba$c;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bb;->e()V

    .line 411
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bb;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    monitor-exit p0

    return-void
.end method

.method public e()V
    .locals 10

    .prologue
    .line 443
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v2

    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    :try_start_1
    invoke-virtual {v2}, Lcom/chartboost/sdk/Tracking/a;->m()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v3

    .line 449
    const/4 v0, 0x0

    .line 450
    if-eqz v3, :cond_4

    .line 451
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 452
    :goto_0
    if-eqz v1, :cond_1

    .line 453
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 454
    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 455
    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    .line 456
    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 457
    const-string v7, "CBRequestManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### Flushing out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "track events from cache to server..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v2, v6}, Lcom/chartboost/sdk/Tracking/a;->a(Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v6

    .line 459
    sget-object v7, Lcom/chartboost/sdk/impl/bb;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/ba;->s()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    :try_start_2
    const-string v1, "CBRequestManager"

    const-string v2, "Error executing saved requests"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    :cond_1
    monitor-exit p0

    .line 479
    return-void

    .line 469
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ba;

    .line 470
    if-eqz v0, :cond_3

    .line 471
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->q()Z

    move-result v2

    if-nez v2, :cond_3

    .line 472
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->o()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(I)V

    .line 473
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->r()Lcom/chartboost/sdk/impl/ba$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    goto :goto_2

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public f()V
    .locals 6

    .prologue
    .line 515
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->h:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Lcom/chartboost/sdk/impl/bb$1;

    const-wide/32 v2, 0x3a980

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$1;-><init>(Lcom/chartboost/sdk/impl/bb;JJ)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->h:Landroid/os/CountDownTimer;

    .line 524
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 527
    const-string v0, "CBRequestManager"

    const-string v1, "Timer stopped:"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->h:Landroid/os/CountDownTimer;

    .line 532
    :cond_0
    return-void
.end method

.method public i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/chartboost/sdk/impl/ba;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public j()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bb;->g()V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bb;->c()V

    .line 539
    return-void
.end method
