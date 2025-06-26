.class Lcom/apportable/ui/WebView$4$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$4;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$4;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 429
    iget-object v0, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    iget-object v0, v0, Lcom/apportable/ui/WebView$4;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    iget-object v0, v0, Lcom/apportable/ui/WebView$4;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    iget-object v1, v1, Lcom/apportable/ui/WebView$4;->val$baseURL:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    iget-object v3, v3, Lcom/apportable/ui/WebView$4;->val$data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iget-object v3, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    iget-object v3, v3, Lcom/apportable/ui/WebView$4;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/apportable/ui/WebView$4$1;->this$1:Lcom/apportable/ui/WebView$4;

    iget-object v4, v4, Lcom/apportable/ui/WebView$4;->val$encodingName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    return-void
.end method
