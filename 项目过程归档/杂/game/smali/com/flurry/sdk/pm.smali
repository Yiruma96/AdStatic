.class public Lcom/flurry/sdk/pm;
.super Lcom/flurry/sdk/pb;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pb",
        "<",
        "Ljava/lang/Iterable",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;)V
    .locals 7

    .prologue
    .line 21
    const-class v1, Ljava/lang/Iterable;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/pb;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jk;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jz;)Lcom/flurry/sdk/pf;
    .locals 4
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
    .line 26
    new-instance v0, Lcom/flurry/sdk/pm;

    iget-object v1, p0, Lcom/flurry/sdk/pm;->b:Lcom/flurry/sdk/sh;

    iget-boolean v2, p0, Lcom/flurry/sdk/pm;->a:Z

    iget-object v3, p0, Lcom/flurry/sdk/pm;->e:Lcom/flurry/sdk/is;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/flurry/sdk/pm;-><init>(Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;)V

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
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
    const/4 v0, 0x0

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v4, p0, Lcom/flurry/sdk/pm;->c:Lcom/flurry/sdk/jz;

    move-object v1, v0

    .line 40
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 41
    if-nez v5, :cond_2

    .line 42
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/hf;)V

    .line 60
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    :cond_1
    return-void

    .line 45
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 47
    if-ne v2, v0, :cond_3

    move-object v2, v1

    .line 54
    :goto_1
    if-nez v4, :cond_4

    .line 55
    invoke-virtual {v2, v5, p2, p3}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/pm;->e:Lcom/flurry/sdk/is;

    invoke-virtual {p3, v2, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Class;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jk;

    move-result-object v1

    move-object v0, v2

    move-object v2, v1

    .line 52
    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {v2, v5, p2, p3, v4}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V

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
    .line 15
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pm;->a(Ljava/lang/Iterable;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method
