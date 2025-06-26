.class public Lcom/flurry/sdk/gq$m;
.super Lcom/flurry/sdk/gq;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/gq;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/flurry/sdk/gq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>([Lcom/flurry/sdk/gq;)V
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/flurry/sdk/gq$i;->c:Lcom/flurry/sdk/gq$i;

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/gq;-><init>(Lcom/flurry/sdk/gq$i;[Lcom/flurry/sdk/gq;)V

    .line 270
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$1;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gq$m;-><init>([Lcom/flurry/sdk/gq;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/flurry/sdk/gq$m;->b:[Lcom/flurry/sdk/gq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/gq$m;->a([Lcom/flurry/sdk/gq;I)I

    move-result v0

    return v0
.end method

.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gq$m;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$m;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gq$m;",
            "Lcom/flurry/sdk/gq$m;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gq$m;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gq$f;",
            ">;>;)",
            "Lcom/flurry/sdk/gq$m;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gq$m;

    .line 305
    if-nez v0, :cond_1

    .line 306
    new-instance v6, Lcom/flurry/sdk/gq$m;

    invoke-virtual {p0}, Lcom/flurry/sdk/gq$m;->a()I

    move-result v0

    new-array v0, v0, [Lcom/flurry/sdk/gq;

    invoke-direct {v6, v0}, Lcom/flurry/sdk/gq$m;-><init>([Lcom/flurry/sdk/gq;)V

    .line 307
    invoke-interface {p1, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/flurry/sdk/gq$m;->b:[Lcom/flurry/sdk/gq;

    iget-object v2, v6, Lcom/flurry/sdk/gq$m;->b:[Lcom/flurry/sdk/gq;

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/gq$m;->a([Lcom/flurry/sdk/gq;I[Lcom/flurry/sdk/gq;ILjava/util/Map;Ljava/util/Map;)V

    .line 313
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gq$f;

    .line 314
    iget-object v3, v6, Lcom/flurry/sdk/gq$m;->b:[Lcom/flurry/sdk/gq;

    iget-object v4, v0, Lcom/flurry/sdk/gq$f;->a:[Lcom/flurry/sdk/gq;

    iget v0, v0, Lcom/flurry/sdk/gq$f;->b:I

    iget-object v5, v6, Lcom/flurry/sdk/gq$m;->b:[Lcom/flurry/sdk/gq;

    array-length v5, v5

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-interface {p2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    .line 319
    :cond_1
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/sdk/gq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/flurry/sdk/gq$m$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gq$m$1;-><init>(Lcom/flurry/sdk/gq$m;)V

    return-object v0
.end method
