.class Lcom/flurry/sdk/gr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/flurry/sdk/fn;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/fn;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/gr$a;->b:Lcom/flurry/sdk/fn;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    instance-of v1, p1, Lcom/flurry/sdk/gr$a;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/gr$a;->b:Lcom/flurry/sdk/fn;

    check-cast p1, Lcom/flurry/sdk/gr$a;

    iget-object v2, p1, Lcom/flurry/sdk/gr$a;->b:Lcom/flurry/sdk/fn;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/sdk/gr$a;->b:Lcom/flurry/sdk/fn;

    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->hashCode()I

    move-result v0

    return v0
.end method
