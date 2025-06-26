.class public Lcom/flurry/sdk/kv;
.super Lcom/flurry/sdk/jc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/kv$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/flurry/sdk/rh;

.field protected d:Lcom/flurry/sdk/jb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/flurry/sdk/kq;->h:Lcom/flurry/sdk/kq;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kv;-><init>(Lcom/flurry/sdk/jb;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/jb;)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/flurry/sdk/jc;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/flurry/sdk/kv;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    .line 84
    iput-object p1, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    .line 85
    new-instance v0, Lcom/flurry/sdk/rh;

    invoke-direct {v0}, Lcom/flurry/sdk/rh;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kv;->c:Lcom/flurry/sdk/rh;

    .line 86
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/im;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/sdk/kv;->c:Lcom/flurry/sdk/rh;

    invoke-virtual {v0, p2, p1}, Lcom/flurry/sdk/rh;->a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/jn;)Lcom/flurry/sdk/im;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jc;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/jb;)Lcom/flurry/sdk/kv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jc;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/jb;)Lcom/flurry/sdk/kv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jm;)Lcom/flurry/sdk/jc;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jm;)Lcom/flurry/sdk/jb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/jb;)Lcom/flurry/sdk/kv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/ky;)Lcom/flurry/sdk/jc;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/ky;)Lcom/flurry/sdk/jb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/jb;)Lcom/flurry/sdk/kv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 152
    instance-of v1, v0, Lcom/flurry/sdk/iv;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Lcom/flurry/sdk/iv;

    invoke-interface {v0, p1, p3}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/kv;->d(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    .line 160
    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/kv;->b(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;

    move-result-object v0

    .line 168
    :cond_2
    instance-of v1, v0, Lcom/flurry/sdk/iv;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Lcom/flurry/sdk/iv;

    invoke-interface {v0, p1, p3}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/sh;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kv;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jb;)Lcom/flurry/sdk/kv;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/sdk/kv;

    if-eq v0, v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeserializerProvider of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not override \'withFactory()\' method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    new-instance v0, Lcom/flurry/sdk/kv;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/kv;-><init>(Lcom/flurry/sdk/jb;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/js;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 407
    invoke-interface {p2, p1, p0}, Lcom/flurry/sdk/js;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;)V

    .line 408
    return-void
.end method

.method public b(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v1

    .line 181
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/jb;->b(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jy;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_0

    .line 183
    new-instance v0, Lcom/flurry/sdk/kv$a;

    invoke-direct {v0, v2, v1}, Lcom/flurry/sdk/kv$a;-><init>(Lcom/flurry/sdk/jy;Lcom/flurry/sdk/jg;)V

    .line 185
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected b(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/sh;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    .line 421
    invoke-static {v0}, Lcom/flurry/sdk/qy;->d(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lcom/flurry/sdk/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for abstract type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/jh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    new-instance v0, Lcom/flurry/sdk/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/jh;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jl;

    move-result-object v0

    .line 195
    instance-of v1, v0, Lcom/flurry/sdk/iw;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Lcom/flurry/sdk/iw;

    invoke-interface {v0, p1, p3}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jl;

    move-result-object v0

    .line 198
    :cond_0
    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/kv;->c(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jl;

    move-result-object v0

    .line 201
    :cond_1
    return-object v0
.end method

.method protected c(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Lcom/flurry/sdk/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a (Map) Key deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/jh;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v1, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 276
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    monitor-exit v1

    .line 294
    :goto_0
    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 282
    if-lez v2, :cond_1

    .line 283
    iget-object v0, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    .line 284
    if-eqz v0, :cond_1

    .line 285
    monitor-exit v1

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 290
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/kv;->e(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 293
    if-nez v2, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 293
    :catchall_1
    move-exception v0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 294
    iget-object v2, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected e(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 310
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/kv;->f(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 317
    if-nez v1, :cond_1

    move-object v1, v0

    .line 358
    :cond_0
    :goto_0
    return-object v1

    .line 311
    :catch_0
    move-exception v1

    .line 315
    new-instance v2, Lcom/flurry/sdk/jh;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/flurry/sdk/jh;-><init>(Ljava/lang/String;Lcom/flurry/sdk/hg;Ljava/lang/Throwable;)V

    throw v2

    .line 324
    :cond_1
    instance-of v3, v1, Lcom/flurry/sdk/js;

    .line 325
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/flurry/sdk/ko;

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    .line 326
    :goto_1
    if-nez v2, :cond_2

    .line 328
    sget-object v4, Lcom/flurry/sdk/iy$a;->a:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p1, v4}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 329
    invoke-virtual {p1}, Lcom/flurry/sdk/iy;->a()Lcom/flurry/sdk/iq;

    move-result-object v4

    .line 331
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lcom/flurry/sdk/mn;->a(Ljava/lang/Class;Lcom/flurry/sdk/iq;Lcom/flurry/sdk/iu$a;)Lcom/flurry/sdk/mn;

    move-result-object v0

    .line 332
    invoke-virtual {v4, v0}, Lcom/flurry/sdk/iq;->a(Lcom/flurry/sdk/mn;)Ljava/lang/Boolean;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v0

    .line 350
    :cond_2
    if-eqz v3, :cond_3

    .line 351
    iget-object v0, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 352
    check-cast v0, Lcom/flurry/sdk/js;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/js;)V

    .line 353
    iget-object v0, p0, Lcom/flurry/sdk/kv;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_3
    if-eqz v2, :cond_0

    .line 356
    iget-object v0, p0, Lcom/flurry/sdk/kv;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 325
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected f(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p2}, Lcom/flurry/sdk/sh;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jb;->b(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/sh;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    invoke-virtual {p2}, Lcom/flurry/sdk/sh;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    check-cast p2, Lcom/flurry/sdk/qi;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/qi;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/sdk/sh;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    check-cast p2, Lcom/flurry/sdk/qn;

    .line 379
    invoke-virtual {p2}, Lcom/flurry/sdk/qn;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    check-cast p2, Lcom/flurry/sdk/qo;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/qo;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/qn;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_3
    invoke-virtual {p2}, Lcom/flurry/sdk/sh;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    check-cast p2, Lcom/flurry/sdk/qk;

    .line 388
    invoke-virtual {p2}, Lcom/flurry/sdk/qk;->a_()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    check-cast p2, Lcom/flurry/sdk/ql;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ql;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/qk;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_5
    const-class v0, Lcom/flurry/sdk/hh;

    invoke-virtual {p2}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jb;->c(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/kv;->d:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    goto :goto_0
.end method
