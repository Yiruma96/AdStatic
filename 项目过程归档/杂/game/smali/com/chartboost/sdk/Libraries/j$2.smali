.class Lcom/chartboost/sdk/Libraries/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Libraries/j;->a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Libraries/j;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/j$2;->d:Lcom/chartboost/sdk/Libraries/j;

    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/j$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/Libraries/j$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/chartboost/sdk/Libraries/j$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 211
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->a()Lcom/chartboost/sdk/impl/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/j$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/j$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/j$2;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/j;->b(Lcom/chartboost/sdk/Libraries/j;)Lcom/chartboost/sdk/impl/bd$b;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/Libraries/j$2;->c:Landroid/os/Bundle;

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/bd$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    .line 213
    return-void

    .line 211
    :cond_0
    iget-object v5, p0, Lcom/chartboost/sdk/Libraries/j$2;->c:Landroid/os/Bundle;

    goto :goto_0
.end method
