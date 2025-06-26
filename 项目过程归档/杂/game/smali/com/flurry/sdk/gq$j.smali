.class public Lcom/flurry/sdk/gq$j;
.super Lcom/flurry/sdk/gq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public final z:Lcom/flurry/sdk/gq;


# direct methods
.method private varargs constructor <init>(Lcom/flurry/sdk/gq;[Lcom/flurry/sdk/gq;)V
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/flurry/sdk/gq$i;->d:Lcom/flurry/sdk/gq$i;

    invoke-static {p2}, Lcom/flurry/sdk/gq$j;->c([Lcom/flurry/sdk/gq;)[Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gq;-><init>(Lcom/flurry/sdk/gq$i;[Lcom/flurry/sdk/gq;)V

    .line 333
    iput-object p1, p0, Lcom/flurry/sdk/gq$j;->z:Lcom/flurry/sdk/gq;

    .line 334
    iget-object v0, p0, Lcom/flurry/sdk/gq$j;->b:[Lcom/flurry/sdk/gq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gq;[Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$1;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gq$j;-><init>(Lcom/flurry/sdk/gq;[Lcom/flurry/sdk/gq;)V

    return-void
.end method

.method private static c([Lcom/flurry/sdk/gq;)[Lcom/flurry/sdk/gq;
    .locals 4

    .prologue
    .line 338
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/flurry/sdk/gq;

    .line 339
    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gq$j;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$j;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$j;
    .locals 7
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
            "Lcom/flurry/sdk/gq$j;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 346
    new-instance v6, Lcom/flurry/sdk/gq$j;

    iget-object v0, p0, Lcom/flurry/sdk/gq$j;->z:Lcom/flurry/sdk/gq;

    iget-object v2, p0, Lcom/flurry/sdk/gq$j;->b:[Lcom/flurry/sdk/gq;

    invoke-static {v2, v1}, Lcom/flurry/sdk/gq$j;->a([Lcom/flurry/sdk/gq;I)I

    move-result v2

    new-array v2, v2, [Lcom/flurry/sdk/gq;

    invoke-direct {v6, v0, v2}, Lcom/flurry/sdk/gq$j;-><init>(Lcom/flurry/sdk/gq;[Lcom/flurry/sdk/gq;)V

    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/gq$j;->b:[Lcom/flurry/sdk/gq;

    iget-object v2, v6, Lcom/flurry/sdk/gq$j;->b:[Lcom/flurry/sdk/gq;

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/gq$j;->a([Lcom/flurry/sdk/gq;I[Lcom/flurry/sdk/gq;ILjava/util/Map;Ljava/util/Map;)V

    .line 349
    return-object v6
.end method
