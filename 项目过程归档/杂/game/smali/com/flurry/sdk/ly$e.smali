.class final Lcom/flurry/sdk/ly$e;
.super Lcom/flurry/sdk/ly$a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ly$a",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 543
    const-class v0, [D

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ly$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final c(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hm;->h:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/flurry/sdk/iy$a;->q:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x0

    .line 580
    :goto_0
    return-object v0

    .line 577
    :cond_0
    sget-object v0, Lcom/flurry/sdk/iy$a;->o:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/flurry/sdk/ly$e;->q:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 580
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ly$e;->A(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ly$e;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)[D

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)[D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 549
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ly$e;->c(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)[D

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    .line 552
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->h()Lcom/flurry/sdk/qw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/qw;->g()Lcom/flurry/sdk/qw$d;

    move-result-object v4

    .line 553
    invoke-virtual {v4}, Lcom/flurry/sdk/qw$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move-object v2, v0

    move v0, v1

    .line 556
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v3

    sget-object v5, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    if-eq v3, v5, :cond_1

    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ly$e;->A(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)D

    move-result-wide v6

    .line 558
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 559
    invoke-virtual {v4, v2, v0}, Lcom/flurry/sdk/qw$d;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move v3, v1

    move-object v2, v0

    .line 562
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-wide v6, v2, v3

    goto :goto_1

    .line 564
    :cond_1
    invoke-virtual {v4, v2, v0}, Lcom/flurry/sdk/qw$d;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_2
.end method
