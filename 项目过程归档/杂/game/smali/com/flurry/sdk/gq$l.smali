.class public Lcom/flurry/sdk/gq$l;
.super Lcom/flurry/sdk/gq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method private varargs constructor <init>([Lcom/flurry/sdk/gq;)V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/flurry/sdk/gq$i;->b:Lcom/flurry/sdk/gq$i;

    invoke-static {p1}, Lcom/flurry/sdk/gq$l;->c([Lcom/flurry/sdk/gq;)[Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gq;-><init>(Lcom/flurry/sdk/gq$i;[Lcom/flurry/sdk/gq;)V

    .line 255
    iget-object v0, p0, Lcom/flurry/sdk/gq$l;->b:[Lcom/flurry/sdk/gq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 256
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$1;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gq$l;-><init>([Lcom/flurry/sdk/gq;)V

    return-void
.end method

.method private static c([Lcom/flurry/sdk/gq;)[Lcom/flurry/sdk/gq;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-static {p0, v1}, Lcom/flurry/sdk/gq$l;->a([Lcom/flurry/sdk/gq;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Lcom/flurry/sdk/gq;

    .line 260
    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/gq$l;->a([Lcom/flurry/sdk/gq;I[Lcom/flurry/sdk/gq;ILjava/util/Map;Ljava/util/Map;)V

    .line 263
    return-object v2
.end method
