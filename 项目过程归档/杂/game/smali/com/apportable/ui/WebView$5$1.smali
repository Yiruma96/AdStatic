.class Lcom/apportable/ui/WebView$5$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$5;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$5;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 445
    iget-object v0, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    iget-object v0, v0, Lcom/apportable/ui/WebView$5;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    iget-object v0, v0, Lcom/apportable/ui/WebView$5;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    iget-object v1, v1, Lcom/apportable/ui/WebView$5;->val$baseURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/apportable/ui/WebView$5$1;->this$1:Lcom/apportable/ui/WebView$5;

    iget-object v2, v2, Lcom/apportable/ui/WebView$5;->val$html:Ljava/lang/String;

    const-string v3, "text/html"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    return-void
.end method
