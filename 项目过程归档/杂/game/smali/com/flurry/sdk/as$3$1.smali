.class Lcom/flurry/sdk/as$3$1;
.super Lcom/flurry/sdk/ff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/as$3;->a(Lcom/flurry/sdk/el;Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/as$3;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/as$3;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/flurry/sdk/as$3$1;->a:Lcom/flurry/sdk/as$3;

    invoke-direct {p0}, Lcom/flurry/sdk/ff;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/flurry/sdk/as$3$1;->a:Lcom/flurry/sdk/as$3;

    iget-object v0, v0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->h(Lcom/flurry/sdk/as;)V

    .line 220
    return-void
.end method
