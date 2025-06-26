.class public Lcom/flurry/sdk/gq$n;
.super Lcom/flurry/sdk/gq$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public final z:Lcom/flurry/sdk/gq;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/gq;)V
    .locals 2

    .prologue
    .line 443
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gq$g;-><init>(ZLcom/flurry/sdk/gq$1;)V

    .line 444
    iput-object p1, p0, Lcom/flurry/sdk/gq$n;->z:Lcom/flurry/sdk/gq;

    .line 445
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gq$n;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$n;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$n;
    .locals 2
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
            "Lcom/flurry/sdk/gq$n;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lcom/flurry/sdk/gq$n;

    iget-object v1, p0, Lcom/flurry/sdk/gq$n;->z:Lcom/flurry/sdk/gq;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/gq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$n;-><init>(Lcom/flurry/sdk/gq;)V

    return-object v0
.end method
