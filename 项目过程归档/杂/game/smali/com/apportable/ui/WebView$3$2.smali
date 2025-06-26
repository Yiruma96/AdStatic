.class Lcom/apportable/ui/WebView$3$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$3;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$2;->this$1:Lcom/apportable/ui/WebView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$2;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$2;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apportable/ui/WebView;->setContentView(Landroid/view/View;)V

    .line 381
    return-void
.end method
