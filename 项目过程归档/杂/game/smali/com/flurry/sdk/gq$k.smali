.class public Lcom/flurry/sdk/gq$k;
.super Lcom/flurry/sdk/gq$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final B:Lcom/flurry/sdk/gq;

.field public final z:Lcom/flurry/sdk/gq;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq;)V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gq$g;-><init>(Lcom/flurry/sdk/gq$1;)V

    .line 427
    iput-object p1, p0, Lcom/flurry/sdk/gq$k;->z:Lcom/flurry/sdk/gq;

    .line 428
    iput-object p2, p0, Lcom/flurry/sdk/gq$k;->B:Lcom/flurry/sdk/gq;

    .line 429
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$1;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gq$k;-><init>(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gq$k;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$k;
    .locals 3
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
            "Lcom/flurry/sdk/gq$k;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/flurry/sdk/gq$k;

    iget-object v1, p0, Lcom/flurry/sdk/gq$k;->z:Lcom/flurry/sdk/gq;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/gq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gq$k;->B:Lcom/flurry/sdk/gq;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/sdk/gq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gq$k;-><init>(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq;)V

    return-object v0
.end method
