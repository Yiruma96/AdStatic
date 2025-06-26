.class Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MoreGamesWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noodlecake/noodlenews/MoreGamesWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreGamesWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noodlecake/noodlenews/MoreGamesWebView;


# direct methods
.method private constructor <init>(Lcom/noodlecake/noodlenews/MoreGamesWebView;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;->this$0:Lcom/noodlecake/noodlenews/MoreGamesWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/noodlecake/noodlenews/MoreGamesWebView;Lcom/noodlecake/noodlenews/MoreGamesWebView$1;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;-><init>(Lcom/noodlecake/noodlenews/MoreGamesWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;->this$0:Lcom/noodlecake/noodlenews/MoreGamesWebView;

    # getter for: Lcom/noodlecake/noodlenews/MoreGamesWebView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/noodlecake/noodlenews/MoreGamesWebView;->access$100(Lcom/noodlecake/noodlenews/MoreGamesWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;->this$0:Lcom/noodlecake/noodlenews/MoreGamesWebView;

    # getter for: Lcom/noodlecake/noodlenews/MoreGamesWebView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/noodlecake/noodlenews/MoreGamesWebView;->access$100(Lcom/noodlecake/noodlenews/MoreGamesWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;->this$0:Lcom/noodlecake/noodlenews/MoreGamesWebView;

    # getter for: Lcom/noodlecake/noodlenews/MoreGamesWebView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/noodlecake/noodlenews/MoreGamesWebView;->access$100(Lcom/noodlecake/noodlenews/MoreGamesWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 127
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;->this$0:Lcom/noodlecake/noodlenews/MoreGamesWebView;

    const-string v1, "Other games cannot currently be viewed.  Please try again later."

    const/16 v2, 0xfa0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 91
    if-eqz p2, :cond_0

    const-string v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    const-string v1, "amzn://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    const/4 v0, 0x1

    .line 113
    :cond_2
    :goto_1
    return v0

    .line 95
    :catch_0
    move-exception v1

    .line 98
    :try_start_1
    const-string v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://play.google.com/store/apps/developer?id=Noodlecake+Studios+Inc"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :catch_1
    move-exception v1

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.noodlecake.com/games/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method
