.class Lcom/apportable/ui/WebView$3;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    new-instance v1, Lcom/apportable/ui/WebView$3$1;

    iget-object v2, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    invoke-virtual {v2}, Lcom/apportable/ui/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/apportable/ui/WebView$3$1;-><init>(Lcom/apportable/ui/WebView$3;Landroid/content/Context;)V

    # setter for: Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView;->access$1402(Lcom/apportable/ui/WebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 375
    iget-object v0, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # invokes: Lcom/apportable/ui/WebView;->initWebView()V
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$2300(Lcom/apportable/ui/WebView;)V

    .line 377
    iget-object v0, p0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1600(Lcom/apportable/ui/WebView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$3$2;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3$2;-><init>(Lcom/apportable/ui/WebView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method
