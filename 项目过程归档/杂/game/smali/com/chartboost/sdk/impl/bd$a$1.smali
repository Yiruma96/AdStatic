.class Lcom/chartboost/sdk/impl/bd$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bd$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Libraries/j$a;

.field final synthetic b:Lcom/chartboost/sdk/impl/bd$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bd$a;Lcom/chartboost/sdk/Libraries/j$a;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bd$a$1;->b:Lcom/chartboost/sdk/impl/bd$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bd$a$1;->a:Lcom/chartboost/sdk/Libraries/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd$a$1;->b:Lcom/chartboost/sdk/impl/bd$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd$a;->a(Lcom/chartboost/sdk/impl/bd$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd$a$1;->b:Lcom/chartboost/sdk/impl/bd$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd$a;->a(Lcom/chartboost/sdk/impl/bd$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd;->a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/bd$a;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bd$a$1;->a:Lcom/chartboost/sdk/Libraries/j$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bd$a$1;->b:Lcom/chartboost/sdk/impl/bd$a;

    if-ne v2, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bd$a$1;->a:Lcom/chartboost/sdk/Libraries/j$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd$a$1;->b:Lcom/chartboost/sdk/impl/bd$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd$a;->b(Lcom/chartboost/sdk/impl/bd$a;)Lcom/chartboost/sdk/impl/bd$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd$a$1;->b:Lcom/chartboost/sdk/impl/bd$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd$a;->b(Lcom/chartboost/sdk/impl/bd$a;)Lcom/chartboost/sdk/impl/bd$b;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bd$a$1;->a:Lcom/chartboost/sdk/Libraries/j$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bd$a$1;->b:Lcom/chartboost/sdk/impl/bd$a;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bd$a;->c(Lcom/chartboost/sdk/impl/bd$a;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/bd$b;->a(Lcom/chartboost/sdk/Libraries/j$a;Landroid/os/Bundle;)V

    .line 230
    :cond_1
    return-void
.end method
