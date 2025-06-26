.class public Lcom/flurry/sdk/gq$p;
.super Lcom/flurry/sdk/gq$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field public final B:Lcom/flurry/sdk/gq;

.field public final z:I


# direct methods
.method public constructor <init>(ILcom/flurry/sdk/gq;)V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gq$g;-><init>(Lcom/flurry/sdk/gq$1;)V

    .line 482
    iput p1, p0, Lcom/flurry/sdk/gq$p;->z:I

    .line 483
    iput-object p2, p0, Lcom/flurry/sdk/gq$p;->B:Lcom/flurry/sdk/gq;

    .line 484
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gq$p;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$p;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq$p;
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
            "Lcom/flurry/sdk/gq$p;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Lcom/flurry/sdk/gq$p;

    iget v1, p0, Lcom/flurry/sdk/gq$p;->z:I

    iget-object v2, p0, Lcom/flurry/sdk/gq$p;->B:Lcom/flurry/sdk/gq;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/sdk/gq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gq$p;-><init>(ILcom/flurry/sdk/gq;)V

    return-object v0
.end method
