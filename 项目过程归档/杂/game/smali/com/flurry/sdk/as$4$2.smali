.class Lcom/flurry/sdk/as$4$2;
.super Lcom/flurry/sdk/ff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/as$4;->a(Lcom/flurry/sdk/en;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/as$4;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/as$4;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/flurry/sdk/as$4$2;->a:Lcom/flurry/sdk/as$4;

    invoke-direct {p0}, Lcom/flurry/sdk/ff;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/flurry/sdk/as$4$2;->a:Lcom/flurry/sdk/as$4;

    iget-object v0, v0, Lcom/flurry/sdk/as$4;->c:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->h(Lcom/flurry/sdk/as;)V

    .line 362
    return-void
.end method
