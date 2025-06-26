.class public abstract Lcom/chartboost/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/d$a;
    }
.end annotation


# static fields
.field protected static a:Landroid/os/Handler;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/chartboost/sdk/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/d;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private final declared-synchronized s(Lcom/chartboost/sdk/Model/a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->n(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Request already in process for impression with location"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return v0

    .line 166
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->p(Lcom/chartboost/sdk/Model/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 167
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 397
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->q(Lcom/chartboost/sdk/Model/a;)V

    .line 91
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 92
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 93
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 3

    .prologue
    .line 299
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 313
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 304
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 312
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/Model/a$a;

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a$a;)V

    goto :goto_0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 174
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 183
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 184
    return-void

    .line 177
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected final a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 321
    const-string v0, "location"

    iget-object v1, p2, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/a;->f:Z

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "cache"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/ba;->b(Z)V

    .line 326
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getValidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/content/Context;)V

    .line 328
    iput-boolean v2, p2, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 329
    new-instance v0, Lcom/chartboost/sdk/d$2;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/d$2;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 348
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    sget-object v1, Lcom/chartboost/sdk/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/d$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/chartboost/sdk/d$1;-><init>(Lcom/chartboost/sdk/d;Ljava/lang/String;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final b()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected final b(Lcom/chartboost/sdk/Model/a;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/chartboost/sdk/d$a;->h(Lcom/chartboost/sdk/Model/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cbPrefSessionCount"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 104
    if-ne v2, v1, :cond_0

    .line 105
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v1

    .line 106
    goto :goto_0
.end method

.method protected abstract c()Lcom/chartboost/sdk/d$a;
.end method

.method protected c(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->g(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->s(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-nez v0, :cond_2

    .line 126
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->j:Z

    .line 128
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 132
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/a;)V

    .line 141
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Landroid/content/Context;
    .locals 3

    .prologue
    .line 434
    :try_start_0
    const-class v0, Lcom/chartboost/sdk/Chartboost;

    const-string v1, "getValidContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 435
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 436
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-object v0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    const-string v1, "Error encountered getting valid context"

    invoke-static {p0, v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->throwProguardError(Ljava/lang/Exception;)V

    .line 441
    invoke-static {}, Lcom/chartboost/sdk/b;->k()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 383
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->m(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    return-void
.end method

.method protected final f(Lcom/chartboost/sdk/Model/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 211
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 200
    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/az;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 211
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected g(Lcom/chartboost/sdk/Model/a;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 216
    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v3, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v2, v3, :cond_0

    move v2, v0

    .line 217
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/chartboost/sdk/d$a;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    :goto_1
    return-void

    :cond_0
    move v2, v1

    .line 216
    goto :goto_0

    .line 220
    :cond_1
    iget-object v3, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v4, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    if-ne v3, v4, :cond_3

    .line 221
    :goto_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->i(Lcom/chartboost/sdk/Model/a;)V

    .line 223
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v3

    .line 224
    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {v3}, Lcom/chartboost/sdk/e;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 226
    invoke-virtual {v3, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 233
    :cond_2
    if-eqz v2, :cond_5

    .line 234
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->h(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 220
    goto :goto_2

    .line 227
    :cond_4
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->j:Z

    if-eqz v1, :cond_2

    .line 228
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 236
    :cond_5
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_1
.end method

.method protected h(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 243
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 244
    return-void
.end method

.method protected i(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 250
    return-void
.end method

.method public final j(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->h:Z

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->h:Z

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 262
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->k(Lcom/chartboost/sdk/Model/a;)V

    .line 263
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 264
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->e(Ljava/lang/String;)V

    .line 265
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final k(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ba;->a(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/content/Context;)V

    .line 274
    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v3, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    if-ne v2, v3, :cond_3

    .line 275
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->g:Z

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    const-string v0, "cached"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v2, "ad_id"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_2

    .line 280
    const-string v2, "ad_id"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    :cond_2
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ba;->s()V

    .line 283
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void

    .line 274
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
.end method

.method protected final m(Lcom/chartboost/sdk/Model/a;)Z
    .locals 6

    .prologue
    .line 290
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 291
    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized n(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 354
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized o(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 362
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_0
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized p(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 368
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected q(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method public r(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 458
    return-void
.end method
