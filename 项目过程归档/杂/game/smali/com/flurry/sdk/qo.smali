.class public final Lcom/flurry/sdk/qo;
.super Lcom/flurry/sdk/qn;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/sh;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/qn;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/qo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/sh;",
            ")",
            "Lcom/flurry/sdk/qo;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/flurry/sdk/qo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lcom/flurry/sdk/qn;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qo;->g(Ljava/lang/Object;)Lcom/flurry/sdk/qo;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Lcom/flurry/sdk/sh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/sh;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v2, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    iget-object v3, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    iget-object v4, p0, Lcom/flurry/sdk/qo;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/sdk/qo;->g:Ljava/lang/Object;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/flurry/sdk/qn;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qo;->h(Ljava/lang/Object;)Lcom/flurry/sdk/qo;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/sdk/sh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/sh;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 44
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v1, p0, Lcom/flurry/sdk/qo;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    iget-object v3, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {v3, p1}, Lcom/flurry/sdk/sh;->f(Ljava/lang/Class;)Lcom/flurry/sdk/sh;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/qo;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/sdk/qo;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public synthetic c(Ljava/lang/Object;)Lcom/flurry/sdk/qn;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qo;->i(Ljava/lang/Object;)Lcom/flurry/sdk/qo;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lcom/flurry/sdk/sh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/sh;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 54
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v1, p0, Lcom/flurry/sdk/qo;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    iget-object v3, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {v3, p1}, Lcom/flurry/sdk/sh;->h(Ljava/lang/Class;)Lcom/flurry/sdk/sh;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/qo;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/sdk/qo;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public d(Ljava/lang/Class;)Lcom/flurry/sdk/sh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/sh;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 65
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v1, p0, Lcom/flurry/sdk/qo;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/sh;->f(Ljava/lang/Class;)Lcom/flurry/sdk/sh;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    iget-object v4, p0, Lcom/flurry/sdk/qo;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/sdk/qo;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public synthetic d(Ljava/lang/Object;)Lcom/flurry/sdk/sh;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qo;->i(Ljava/lang/Object;)Lcom/flurry/sdk/qo;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Class;)Lcom/flurry/sdk/sh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/sh;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 79
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v1, p0, Lcom/flurry/sdk/qo;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/sh;->h(Ljava/lang/Class;)Lcom/flurry/sdk/sh;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    iget-object v4, p0, Lcom/flurry/sdk/qo;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/sdk/qo;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public synthetic e(Ljava/lang/Object;)Lcom/flurry/sdk/sh;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qo;->h(Ljava/lang/Object;)Lcom/flurry/sdk/qo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Ljava/lang/Object;)Lcom/flurry/sdk/sh;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qo;->g(Ljava/lang/Object;)Lcom/flurry/sdk/qo;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Lcom/flurry/sdk/qo;
    .locals 6

    .prologue
    .line 86
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v1, p0, Lcom/flurry/sdk/qo;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    iget-object v3, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    iget-object v4, p0, Lcom/flurry/sdk/qo;->f:Ljava/lang/Object;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Lcom/flurry/sdk/qo;
    .locals 6

    .prologue
    .line 93
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v1, p0, Lcom/flurry/sdk/qo;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    iget-object v3, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {v3, p1}, Lcom/flurry/sdk/sh;->f(Ljava/lang/Object;)Lcom/flurry/sdk/sh;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/qo;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/sdk/qo;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public i(Ljava/lang/Object;)Lcom/flurry/sdk/qo;
    .locals 6

    .prologue
    .line 100
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v1, p0, Lcom/flurry/sdk/qo;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    iget-object v3, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    iget-object v5, p0, Lcom/flurry/sdk/qo;->g:Ljava/lang/Object;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/qo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/sh;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/qo;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/qo;->a:Lcom/flurry/sdk/sh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/qo;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
