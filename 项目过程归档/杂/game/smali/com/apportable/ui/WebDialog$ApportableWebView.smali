.class Lcom/apportable/ui/WebDialog$ApportableWebView;
.super Landroid/webkit/WebView;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApportableWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebDialog;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/WebDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$ApportableWebView;->this$0:Lcom/apportable/ui/WebDialog;

    .line 45
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$ApportableWebView;->this$0:Lcom/apportable/ui/WebDialog;

    # invokes: Lcom/apportable/ui/WebDialog;->_dismiss()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$000(Lcom/apportable/ui/WebDialog;)V

    .line 52
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$ApportableWebView;->this$0:Lcom/apportable/ui/WebDialog;

    # invokes: Lcom/apportable/ui/WebDialog;->onClose()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$100(Lcom/apportable/ui/WebDialog;)V

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
