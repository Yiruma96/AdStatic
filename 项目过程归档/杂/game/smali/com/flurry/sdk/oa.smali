.class public Lcom/flurry/sdk/oa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jd;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qj;",
            "Lcom/flurry/sdk/jg",
            "<*>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcom/flurry/sdk/qi;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jy;Lcom/flurry/sdk/jg;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qi;",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/is;",
            "Lcom/flurry/sdk/jy;",
            "Lcom/flurry/sdk/jg",
            "<*>;)",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-virtual {p1}, Lcom/flurry/sdk/qi;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/qk;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jy;Lcom/flurry/sdk/jg;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qk;",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/ir;",
            "Lcom/flurry/sdk/is;",
            "Lcom/flurry/sdk/jy;",
            "Lcom/flurry/sdk/jg",
            "<*>;)",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-virtual {p1}, Lcom/flurry/sdk/qk;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/ql;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jy;Lcom/flurry/sdk/jg;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ql;",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/ir;",
            "Lcom/flurry/sdk/is;",
            "Lcom/flurry/sdk/jy;",
            "Lcom/flurry/sdk/jg",
            "<*>;)",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-virtual {p1}, Lcom/flurry/sdk/ql;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/qn;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jl;Lcom/flurry/sdk/jy;Lcom/flurry/sdk/jg;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qn;",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/ir;",
            "Lcom/flurry/sdk/is;",
            "Lcom/flurry/sdk/jl;",
            "Lcom/flurry/sdk/jy;",
            "Lcom/flurry/sdk/jg",
            "<*>;)",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-virtual {p1}, Lcom/flurry/sdk/qn;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/qo;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jl;Lcom/flurry/sdk/jy;Lcom/flurry/sdk/jg;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qo;",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/ir;",
            "Lcom/flurry/sdk/is;",
            "Lcom/flurry/sdk/jl;",
            "Lcom/flurry/sdk/jy;",
            "Lcom/flurry/sdk/jg",
            "<*>;)",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-virtual {p1}, Lcom/flurry/sdk/qo;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/ir;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-virtual {p1}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/ir;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/hh;",
            ">;",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oa;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jg;

    goto :goto_0
.end method
