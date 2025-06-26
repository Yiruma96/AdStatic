.class Lcom/apportable/ui/WebView$6$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$6;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$6;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/apportable/ui/WebView$6$1;->this$1:Lcom/apportable/ui/WebView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/apportable/ui/WebView$6$1;->this$1:Lcom/apportable/ui/WebView$6;

    iget-object v0, v0, Lcom/apportable/ui/WebView$6;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/apportable/ui/WebView$6$1;->this$1:Lcom/apportable/ui/WebView$6;

    iget-object v0, v0, Lcom/apportable/ui/WebView$6;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$6$1;->this$1:Lcom/apportable/ui/WebView$6;

    iget-object v1, v1, Lcom/apportable/ui/WebView$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void
.end method
