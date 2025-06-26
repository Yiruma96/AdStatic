.class Lcom/apportable/ui/WebView$WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClient"
.end annotation


# instance fields
.field private mOwner:Lcom/apportable/ui/WebView;

.field final synthetic this$0:Lcom/apportable/ui/WebView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/apportable/ui/WebView$WebViewClient;->this$0:Lcom/apportable/ui/WebView;

    .line 100
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    .line 102
    return-void
.end method

.method static synthetic access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    return-object v0
.end method

.method private dispatchEvent(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$WebViewClient;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {p1}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private newEmailIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    const-string v0, "WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    .line 117
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/apportable/ui/WebView;->access$400(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    new-instance v2, Lcom/apportable/ui/WebView$WebViewClient$1;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/apportable/ui/WebView$WebViewClient$1;-><init>(Lcom/apportable/ui/WebView$WebViewClient;ZZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/apportable/ui/WebView$WebViewClient;->dispatchEvent(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 133
    const-string v0, "WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    .line 135
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    .line 136
    new-instance v2, Lcom/apportable/ui/WebView$WebViewClient$2;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/apportable/ui/WebView$WebViewClient$2;-><init>(Lcom/apportable/ui/WebView$WebViewClient;ZZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/apportable/ui/WebView$WebViewClient;->dispatchEvent(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 150
    const-string v0, "WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    .line 152
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    .line 154
    new-instance v0, Lcom/apportable/ui/WebView$WebViewClient$3;

    move-object v1, p0

    move-object v4, p4

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/apportable/ui/WebView$WebViewClient$3;-><init>(Lcom/apportable/ui/WebView$WebViewClient;ZZLjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/apportable/ui/WebView$WebViewClient;->dispatchEvent(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 168
    const-string v0, "WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/apportable/ui/WebView$WebViewClient;->newEmailIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apportable/activity/VerdeActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    iget-object v1, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    iget v1, v1, Lcom/apportable/ui/WebView;->mObject:I

    # invokes: Lcom/apportable/ui/WebView;->onLink(ILjava/lang/String;)Z
    invoke-static {v0, v1, p2}, Lcom/apportable/ui/WebView;->access$1300(Lcom/apportable/ui/WebView;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    goto :goto_0
.end method
