.class Lcom/apportable/ui/WebDialog$1$1;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebDialog$1;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebDialog$1;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    .line 133
    invoke-virtual {p1}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 136
    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 109
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$400(Lcom/apportable/ui/WebDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "WebDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView overriding url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # invokes: Lcom/apportable/ui/WebDialog;->_dismiss()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$000(Lcom/apportable/ui/WebDialog;)V

    .line 114
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # invokes: Lcom/apportable/ui/WebDialog;->onOverrideURL(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/apportable/ui/WebDialog;->access$500(Lcom/apportable/ui/WebDialog;Ljava/lang/String;)V

    move v0, v1

    .line 119
    :goto_0
    if-nez v0, :cond_1

    .line 120
    const-string v0, "WebDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView loading url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
