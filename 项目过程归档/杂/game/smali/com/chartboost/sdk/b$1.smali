.class final Lcom/chartboost/sdk/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ba$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/b$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/b$a;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;)V
    .locals 1

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/b$a;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/b$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/b$a;->a()V

    .line 309
    :cond_1
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/b$a;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/b$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/b$a;->a()V

    .line 315
    :cond_0
    return-void
.end method
