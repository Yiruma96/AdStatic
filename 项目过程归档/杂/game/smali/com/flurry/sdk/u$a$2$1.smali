.class Lcom/flurry/sdk/u$a$2$1;
.super Lcom/flurry/sdk/ff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u$a$2;->a(Lcom/flurry/sdk/el;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/u$a$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u$a$2;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/flurry/sdk/u$a$2$1;->a:Lcom/flurry/sdk/u$a$2;

    invoke-direct {p0}, Lcom/flurry/sdk/ff;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/flurry/sdk/u$a$2$1;->a:Lcom/flurry/sdk/u$a$2;

    iget-object v0, v0, Lcom/flurry/sdk/u$a$2;->d:Lcom/flurry/sdk/u$a;

    invoke-static {v0}, Lcom/flurry/sdk/u$a;->e(Lcom/flurry/sdk/u$a;)V

    .line 715
    return-void
.end method
