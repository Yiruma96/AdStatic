.class Lcom/apportable/ui/WebView$WebViewClient$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$WebViewClient;

.field final synthetic val$canGoBack:Z

.field final synthetic val$canGoForward:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$WebViewClient;ZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    iput-boolean p2, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->val$canGoBack:Z

    iput-boolean p3, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->val$canGoForward:Z

    iput-object p4, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    move-result-object v0

    const/4 v1, 0x1

    # setter for: Lcom/apportable/ui/WebView;->mLoading:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView;->access$602(Lcom/apportable/ui/WebView;Z)Z

    .line 140
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->val$canGoBack:Z

    # setter for: Lcom/apportable/ui/WebView;->mCanGoBack:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView;->access$702(Lcom/apportable/ui/WebView;Z)Z

    .line 141
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->val$canGoForward:Z

    # setter for: Lcom/apportable/ui/WebView;->mCanGoForward:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView;->access$802(Lcom/apportable/ui/WebView;Z)Z

    .line 142
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    move-result-object v0

    # getter for: Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$900(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v0}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->this$1:Lcom/apportable/ui/WebView$WebViewClient;

    # getter for: Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;
    invoke-static {v1}, Lcom/apportable/ui/WebView$WebViewClient;->access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;

    move-result-object v1

    iget v1, v1, Lcom/apportable/ui/WebView;->mObject:I

    iget-object v2, p0, Lcom/apportable/ui/WebView$WebViewClient$2;->val$url:Ljava/lang/String;

    # invokes: Lcom/apportable/ui/WebView;->onPageStarted(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/WebView;->access$1100(Lcom/apportable/ui/WebView;ILjava/lang/String;)V

    .line 144
    return-void
.end method
