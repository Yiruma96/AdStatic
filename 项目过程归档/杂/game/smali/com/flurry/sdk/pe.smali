.class public Lcom/flurry/sdk/pe;
.super Lcom/flurry/sdk/pb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pb",
        "<",
        "Ljava/util/Collection",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jk;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/sh;",
            "Z",
            "Lcom/flurry/sdk/jz;",
            "Lcom/flurry/sdk/is;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    const-class v1, Ljava/util/Collection;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/pb;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jk;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jz;)Lcom/flurry/sdk/pf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jz;",
            ")",
            "Lcom/flurry/sdk/pf",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/flurry/sdk/pe;

    iget-object v1, p0, Lcom/flurry/sdk/pe;->b:Lcom/flurry/sdk/sh;

    iget-boolean v2, p0, Lcom/flurry/sdk/pe;->a:Z

    iget-object v4, p0, Lcom/flurry/sdk/pe;->e:Lcom/flurry/sdk/is;

    iget-object v5, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/jk;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/pe;-><init>(Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jk;)V

    return-object v0
.end method

.method public a(Ljava/util/Collection;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/jk;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/jk;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/pe;->a(Ljava/util/Collection;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jk;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/flurry/sdk/pe;->f:Lcom/flurry/sdk/ov;

    .line 50
    iget-object v4, p0, Lcom/flurry/sdk/pe;->c:Lcom/flurry/sdk/jz;

    .line 52
    const/4 v1, 0x0

    .line 55
    :cond_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 56
    if-nez v5, :cond_3

    .line 57
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/hf;)V

    .line 77
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 60
    invoke-virtual {v0, v6}, Lcom/flurry/sdk/ov;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jk;

    move-result-object v2

    .line 61
    if-nez v2, :cond_4

    .line 63
    iget-object v2, p0, Lcom/flurry/sdk/pe;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {v2}, Lcom/flurry/sdk/sh;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    iget-object v2, p0, Lcom/flurry/sdk/pe;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {p3, v2, v6}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/sh;Ljava/lang/Class;)Lcom/flurry/sdk/sh;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lcom/flurry/sdk/pe;->a(Lcom/flurry/sdk/ov;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 69
    :goto_2
    iget-object v2, p0, Lcom/flurry/sdk/pe;->f:Lcom/flurry/sdk/ov;

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    .line 71
    :cond_4
    if-nez v4, :cond_6

    .line 72
    invoke-virtual {v2, v5, p2, p3}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/sdk/pe;->a(Lcom/flurry/sdk/jw;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 67
    :cond_5
    :try_start_1
    invoke-virtual {p0, v0, v6, p3}, Lcom/flurry/sdk/pe;->a(Lcom/flurry/sdk/ov;Ljava/lang/Class;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jk;

    move-result-object v0

    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {v2, v5, p2, p3, v4}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Ljava/util/Collection;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v3, p0, Lcom/flurry/sdk/pe;->c:Lcom/flurry/sdk/jz;

    .line 92
    const/4 v0, 0x0

    .line 94
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 96
    if-nez v1, :cond_2

    .line 97
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/hf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 110
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    :cond_1
    return-void

    .line 99
    :cond_2
    if-nez v3, :cond_3

    .line 100
    :try_start_1
    invoke-virtual {p4, v1, p2, p3}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/flurry/sdk/pe;->a(Lcom/flurry/sdk/jw;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 102
    :cond_3
    :try_start_2
    invoke-virtual {p4, v1, p2, p3, v3}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pe;->a(Ljava/util/Collection;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method
