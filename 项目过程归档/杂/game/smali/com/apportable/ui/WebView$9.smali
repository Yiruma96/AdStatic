.class Lcom/apportable/ui/WebView$9;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView;->jsEvaluationRunnable(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebView;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    iput-object p2, p0, Lcom/apportable/ui/WebView$9;->val$js:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 590
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "evaluateJavascript"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/apportable/ui/WebView$9;->val$js:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/apportable/ui/WebView$JSValueCallback;

    iget-object v5, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    iget-object v6, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    invoke-direct {v4, v5, v6}, Lcom/apportable/ui/WebView$JSValueCallback;-><init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    iget-object v0, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$000(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$100(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/apportable/ui/WebView$9;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$200(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
