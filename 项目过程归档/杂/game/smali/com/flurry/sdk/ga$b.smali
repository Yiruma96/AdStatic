.class Lcom/flurry/sdk/ga$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/gb$a;

.field private final b:Lcom/flurry/sdk/gb;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lcom/flurry/sdk/gb;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/gb;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/sdk/ga$b;->b:Lcom/flurry/sdk/gb;

    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/ga$b;->b:Lcom/flurry/sdk/gb;

    invoke-virtual {v0}, Lcom/flurry/sdk/gb;->a()Lcom/flurry/sdk/gb$a;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ga$b;->a:Lcom/flurry/sdk/gb$a;

    .line 202
    return-void
.end method
