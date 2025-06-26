.class public Lcom/flurry/sdk/jq;
.super Lcom/flurry/sdk/hn;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/flurry/sdk/iu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/iu",
            "<+",
            "Lcom/flurry/sdk/ir;",
            ">;"
        }
    .end annotation
.end field

.field protected static final b:Lcom/flurry/sdk/iq;

.field protected static final c:Lcom/flurry/sdk/ne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ne",
            "<*>;"
        }
    .end annotation
.end field

.field private static final n:Lcom/flurry/sdk/sh;


# instance fields
.field protected final d:Lcom/flurry/sdk/hd;

.field protected e:Lcom/flurry/sdk/ng;

.field protected f:Lcom/flurry/sdk/qs;

.field protected g:Lcom/flurry/sdk/jf;

.field protected h:Lcom/flurry/sdk/ju;

.field protected i:Lcom/flurry/sdk/jw;

.field protected j:Lcom/flurry/sdk/jv;

.field protected k:Lcom/flurry/sdk/iy;

.field protected l:Lcom/flurry/sdk/jc;

.field protected final m:Ljava/util/concurrent/ConcurrentHashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const-class v0, Lcom/flurry/sdk/hh;

    invoke-static {v0}, Lcom/flurry/sdk/qp;->d(Ljava/lang/Class;)Lcom/flurry/sdk/qp;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jq;->n:Lcom/flurry/sdk/sh;

    .line 188
    sget-object v0, Lcom/flurry/sdk/mx;->i:Lcom/flurry/sdk/mx;

    sput-object v0, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/iu;

    .line 191
    new-instance v0, Lcom/flurry/sdk/my;

    invoke-direct {v0}, Lcom/flurry/sdk/my;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jq;->b:Lcom/flurry/sdk/iq;

    .line 196
    invoke-static {}, Lcom/flurry/sdk/ne$a;->a()Lcom/flurry/sdk/ne$a;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jq;->c:Lcom/flurry/sdk/ne;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0, v0, v0}, Lcom/flurry/sdk/jq;-><init>(Lcom/flurry/sdk/hd;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jc;)V

    .line 329
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/hd;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p1, v0, v0}, Lcom/flurry/sdk/jq;-><init>(Lcom/flurry/sdk/hd;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jc;)V

    .line 339
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/hd;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jc;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/jq;-><init>(Lcom/flurry/sdk/hd;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ju;Lcom/flurry/sdk/iy;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/hd;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ju;Lcom/flurry/sdk/iy;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 374
    invoke-direct {p0}, Lcom/flurry/sdk/hn;-><init>()V

    .line 305
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/flurry/sdk/jq;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 381
    if-nez p1, :cond_3

    .line 382
    new-instance v0, Lcom/flurry/sdk/jo;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jo;-><init>(Lcom/flurry/sdk/jq;)V

    iput-object v0, p0, Lcom/flurry/sdk/jq;->d:Lcom/flurry/sdk/hd;

    .line 390
    :cond_0
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/qs;->a()Lcom/flurry/sdk/qs;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jq;->f:Lcom/flurry/sdk/qs;

    .line 391
    if-eqz p4, :cond_4

    :goto_1
    iput-object p4, p0, Lcom/flurry/sdk/jq;->h:Lcom/flurry/sdk/ju;

    .line 394
    if-eqz p5, :cond_5

    :goto_2
    iput-object p5, p0, Lcom/flurry/sdk/jq;->k:Lcom/flurry/sdk/iy;

    .line 397
    if-nez p2, :cond_1

    new-instance p2, Lcom/flurry/sdk/or;

    invoke-direct {p2}, Lcom/flurry/sdk/or;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/flurry/sdk/jq;->i:Lcom/flurry/sdk/jw;

    .line 398
    if-nez p3, :cond_2

    new-instance p3, Lcom/flurry/sdk/kv;

    invoke-direct {p3}, Lcom/flurry/sdk/kv;-><init>()V

    :cond_2
    iput-object p3, p0, Lcom/flurry/sdk/jq;->l:Lcom/flurry/sdk/jc;

    .line 401
    sget-object v0, Lcom/flurry/sdk/ol;->e:Lcom/flurry/sdk/ol;

    iput-object v0, p0, Lcom/flurry/sdk/jq;->j:Lcom/flurry/sdk/jv;

    .line 402
    return-void

    .line 384
    :cond_3
    iput-object p1, p0, Lcom/flurry/sdk/jq;->d:Lcom/flurry/sdk/hd;

    .line 385
    invoke-virtual {p1}, Lcom/flurry/sdk/hd;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/flurry/sdk/jq;->d:Lcom/flurry/sdk/hd;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/hd;->a(Lcom/flurry/sdk/hn;)Lcom/flurry/sdk/hd;

    goto :goto_0

    .line 391
    :cond_4
    new-instance v0, Lcom/flurry/sdk/ju;

    sget-object v1, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/iu;

    sget-object v2, Lcom/flurry/sdk/jq;->b:Lcom/flurry/sdk/iq;

    sget-object v3, Lcom/flurry/sdk/jq;->c:Lcom/flurry/sdk/ne;

    iget-object v6, p0, Lcom/flurry/sdk/jq;->f:Lcom/flurry/sdk/qs;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ju;-><init>(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iq;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ng;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/je;)V

    move-object p4, v0

    goto :goto_1

    .line 394
    :cond_5
    new-instance v0, Lcom/flurry/sdk/iy;

    sget-object v1, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/iu;

    sget-object v2, Lcom/flurry/sdk/jq;->b:Lcom/flurry/sdk/iq;

    sget-object v3, Lcom/flurry/sdk/jq;->c:Lcom/flurry/sdk/ne;

    iget-object v6, p0, Lcom/flurry/sdk/jq;->f:Lcom/flurry/sdk/qs;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/iy;-><init>(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iq;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ng;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/je;)V

    move-object p5, v0

    goto :goto_2
.end method

.method private final a(Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/ju;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2623
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    .line 2625
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/jq;->i:Lcom/flurry/sdk/jw;

    iget-object v3, p0, Lcom/flurry/sdk/jq;->j:Lcom/flurry/sdk/jv;

    invoke-virtual {v1, p3, p1, p2, v3}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/ju;Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/jv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2627
    const/4 v1, 0x0

    .line 2628
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2630
    const/4 v3, 0x0

    .line 2631
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2636
    if-eqz v2, :cond_0

    .line 2638
    :try_start_3
    invoke-virtual {v1}, Lcom/flurry/sdk/hf;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2641
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 2643
    :try_start_4
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2647
    :cond_1
    :goto_1
    return-void

    .line 2636
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz p1, :cond_2

    .line 2638
    :try_start_5
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2641
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 2643
    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2644
    :cond_3
    :goto_4
    throw v0

    .line 2639
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2644
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2639
    :catch_2
    move-exception v2

    goto :goto_3

    .line 2644
    :catch_3
    move-exception v1

    goto :goto_4

    .line 2636
    :catchall_1
    move-exception v1

    move-object p1, v2

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object p1, v2

    goto :goto_2
.end method

.method private final b(Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/ju;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 2656
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    .line 2658
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/jq;->i:Lcom/flurry/sdk/jw;

    iget-object v2, p0, Lcom/flurry/sdk/jq;->j:Lcom/flurry/sdk/jv;

    invoke-virtual {v1, p3, p1, p2, v2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/ju;Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/jv;)V

    .line 2659
    sget-object v1, Lcom/flurry/sdk/ju$a;->p:Lcom/flurry/sdk/ju$a;

    invoke-virtual {p3, v1}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ju$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2660
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2663
    :cond_0
    const/4 v1, 0x0

    .line 2664
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2666
    if-eqz v1, :cond_1

    .line 2668
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2672
    :cond_1
    :goto_0
    return-void

    .line 2666
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 2668
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2669
    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 2666
    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/hh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/flurry/sdk/jq;->b()Lcom/flurry/sdk/iy;

    move-result-object v0

    .line 1337
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    .line 1338
    if-nez v1, :cond_1

    .line 1339
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v1

    .line 1340
    if-nez v1, :cond_1

    .line 1341
    const/4 v0, 0x0

    .line 1345
    :cond_0
    :goto_0
    return-object v0

    .line 1344
    :cond_1
    sget-object v1, Lcom/flurry/sdk/jq;->n:Lcom/flurry/sdk/sh;

    invoke-virtual {p0, v0, p1, v1}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/hj;Lcom/flurry/sdk/sh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hh;

    .line 1345
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/jq;->c()Lcom/flurry/sdk/rs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/rs;->a()Lcom/flurry/sdk/ru;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iy;)Lcom/flurry/sdk/iz;
    .locals 3

    .prologue
    .line 2839
    new-instance v0, Lcom/flurry/sdk/ku;

    iget-object v1, p0, Lcom/flurry/sdk/jq;->l:Lcom/flurry/sdk/jc;

    iget-object v2, p0, Lcom/flurry/sdk/jq;->g:Lcom/flurry/sdk/jf;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/flurry/sdk/ku;-><init>(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/hj;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/jf;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
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
    .line 2824
    iget-object v0, p0, Lcom/flurry/sdk/jq;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    .line 2825
    if-eqz v0, :cond_0

    .line 2834
    :goto_0
    return-object v0

    .line 2829
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jq;->l:Lcom/flurry/sdk/jc;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/jc;->b(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    .line 2830
    if-nez v0, :cond_1

    .line 2831
    new-instance v0, Lcom/flurry/sdk/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/jh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2833
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/jq;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/ju$a;Z)Lcom/flurry/sdk/jq;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/flurry/sdk/jq;->h:Lcom/flurry/sdk/ju;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ju$a;Z)V

    .line 1104
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/ju;
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/flurry/sdk/jq;->h:Lcom/flurry/sdk/ju;

    iget-object v1, p0, Lcom/flurry/sdk/jq;->e:Lcom/flurry/sdk/ng;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ng;)Lcom/flurry/sdk/ju;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/sh;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 2718
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jq;->b(Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 2719
    sget-object v1, Lcom/flurry/sdk/hm;->m:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/flurry/sdk/jq;->k:Lcom/flurry/sdk/iy;

    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jg;->b()Ljava/lang/Object;

    move-result-object v0

    .line 2736
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2741
    :goto_1
    return-object v0

    .line 2723
    :cond_0
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/flurry/sdk/hm;->c:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_2

    .line 2724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2726
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/jq;->b()Lcom/flurry/sdk/iy;

    move-result-object v0

    .line 2727
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iy;)Lcom/flurry/sdk/iz;

    move-result-object v1

    .line 2728
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;

    move-result-object v2

    .line 2729
    sget-object v3, Lcom/flurry/sdk/iy$a;->p:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2730
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/jg;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2732
    :cond_3
    invoke-virtual {v2, p1, v1}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2739
    :catchall_0
    move-exception v0

    .line 2740
    :try_start_3
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2741
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/jg;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hj;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/flurry/sdk/jq;->l:Lcom/flurry/sdk/jc;

    invoke-virtual {p3}, Lcom/flurry/sdk/iz;->a()Lcom/flurry/sdk/iy;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/flurry/sdk/jc;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/im;

    move-result-object v0

    .line 2786
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/hm;->b:Lcom/flurry/sdk/hm;

    if-eq v1, v2, :cond_0

    .line 2787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token not START_OBJECT (needed to unwrap root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 2790
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    if-eq v1, v2, :cond_1

    .line 2791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token not FIELD_NAME (to contain expected root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 2794
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->g()Ljava/lang/String;

    move-result-object v1

    .line 2795
    invoke-virtual {v0}, Lcom/flurry/sdk/im;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not match expected (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 2800
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    .line 2802
    invoke-virtual {p4, p1, p3}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v1

    .line 2804
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v2

    sget-object v3, Lcom/flurry/sdk/hm;->c:Lcom/flurry/sdk/hm;

    if-eq v2, v3, :cond_3

    .line 2805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token not END_OBJECT (to match wrapper object with root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 2808
    :cond_3
    return-object v1
.end method

.method protected a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/hj;Lcom/flurry/sdk/sh;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 2691
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/jq;->b(Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 2692
    sget-object v1, Lcom/flurry/sdk/hm;->m:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_0

    .line 2694
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jg;->b()Ljava/lang/Object;

    move-result-object v0

    .line 2708
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/sdk/hj;->f()V

    .line 2709
    return-object v0

    .line 2695
    :cond_0
    sget-object v1, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/flurry/sdk/hm;->c:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_2

    .line 2696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2698
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iy;)Lcom/flurry/sdk/iz;

    move-result-object v0

    .line 2699
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jg;

    move-result-object v1

    .line 2701
    sget-object v2, Lcom/flurry/sdk/iy$a;->p:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2702
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/jg;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2704
    :cond_3
    invoke-virtual {v1, p2, v0}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/flurry/sdk/jq;->d:Lcom/flurry/sdk/hd;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/hd;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/hj;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jq;->f:Lcom/flurry/sdk/qs;

    invoke-virtual {v1, p2}, Lcom/flurry/sdk/qs;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/sh;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/sh;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 2096
    new-instance v0, Lcom/flurry/sdk/il;

    iget-object v1, p0, Lcom/flurry/sdk/jq;->d:Lcom/flurry/sdk/hd;

    invoke-virtual {v1}, Lcom/flurry/sdk/hd;->b()Lcom/flurry/sdk/si;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/il;-><init>(Lcom/flurry/sdk/si;)V

    .line 2097
    iget-object v1, p0, Lcom/flurry/sdk/jq;->d:Lcom/flurry/sdk/hd;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/hd;->a(Ljava/io/Writer;)Lcom/flurry/sdk/hf;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/flurry/sdk/jq;->b(Lcom/flurry/sdk/hf;Ljava/lang/Object;)V

    .line 2098
    invoke-virtual {v0}, Lcom/flurry/sdk/il;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hf;Lcom/flurry/sdk/hh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/ju;

    move-result-object v0

    .line 1650
    iget-object v1, p0, Lcom/flurry/sdk/jq;->i:Lcom/flurry/sdk/jw;

    iget-object v2, p0, Lcom/flurry/sdk/jq;->j:Lcom/flurry/sdk/jv;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/ju;Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/jv;)V

    .line 1651
    sget-object v1, Lcom/flurry/sdk/ju$a;->p:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ju$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->g()V

    .line 1654
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/hf;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/ju;

    move-result-object v0

    .line 1610
    sget-object v1, Lcom/flurry/sdk/ju$a;->o:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ju$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 1611
    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/sdk/jq;->b(Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/ju;)V

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1613
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/jq;->i:Lcom/flurry/sdk/jw;

    iget-object v2, p0, Lcom/flurry/sdk/jq;->j:Lcom/flurry/sdk/jv;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/ju;Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/jv;)V

    .line 1614
    sget-object v1, Lcom/flurry/sdk/ju$a;->p:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ju$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->g()V

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/jp;)V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p1}, Lcom/flurry/sdk/jp;->a()Ljava/lang/String;

    move-result-object v0

    .line 443
    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Module without defined name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jp;->b()Lcom/flurry/sdk/hq;

    move-result-object v0

    .line 447
    if-nez v0, :cond_1

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Module without defined version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_1
    new-instance v0, Lcom/flurry/sdk/jq$1;

    invoke-direct {v0, p0, p0}, Lcom/flurry/sdk/jq$1;-><init>(Lcom/flurry/sdk/jq;Lcom/flurry/sdk/jq;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jp;->a(Lcom/flurry/sdk/jp$a;)V

    .line 562
    return-void
.end method

.method public a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/flurry/sdk/jq;->d:Lcom/flurry/sdk/hd;

    sget-object v1, Lcom/flurry/sdk/hc;->a:Lcom/flurry/sdk/hc;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/hd;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/hc;)Lcom/flurry/sdk/hf;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/jq;->b(Lcom/flurry/sdk/hf;Ljava/lang/Object;)V

    .line 2066
    return-void
.end method

.method protected b(Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/hm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 2767
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 2768
    if-nez v0, :cond_0

    .line 2770
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 2771
    if-nez v0, :cond_0

    .line 2775
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "No content to map to Object due to end of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2778
    :cond_0
    return-object v0
.end method

.method public b()Lcom/flurry/sdk/iy;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/flurry/sdk/jq;->k:Lcom/flurry/sdk/iy;

    iget-object v1, p0, Lcom/flurry/sdk/jq;->e:Lcom/flurry/sdk/ng;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/ng;)Lcom/flurry/sdk/iy;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jq;->h:Lcom/flurry/sdk/ju;

    iget v1, v1, Lcom/flurry/sdk/ju;->i:I

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/iy;->a(I)Lcom/flurry/sdk/iy;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/flurry/sdk/hf;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;,
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 2563
    invoke-virtual {p0}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/ju;

    move-result-object v0

    .line 2565
    sget-object v1, Lcom/flurry/sdk/ju$a;->k:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ju$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2566
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->a()Lcom/flurry/sdk/hf;

    .line 2569
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ju$a;->o:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ju$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 2570
    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/ju;)V

    .line 2588
    :goto_0
    return-void

    .line 2573
    :cond_1
    const/4 v1, 0x0

    .line 2575
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/jq;->i:Lcom/flurry/sdk/jw;

    iget-object v3, p0, Lcom/flurry/sdk/jq;->j:Lcom/flurry/sdk/jv;

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/ju;Lcom/flurry/sdk/hf;Ljava/lang/Object;Lcom/flurry/sdk/jv;)V

    .line 2576
    const/4 v1, 0x1

    .line 2577
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2582
    :catchall_0
    move-exception v0

    if-nez v1, :cond_2

    .line 2584
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2585
    :cond_2
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public c()Lcom/flurry/sdk/rs;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/flurry/sdk/jq;->k:Lcom/flurry/sdk/iy;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy;->h()Lcom/flurry/sdk/rs;

    move-result-object v0

    return-object v0
.end method
