.class public Lcom/noodlecake/noodlenews/MoreGamesWebView;
.super Landroid/app/Activity;
.source "MoreGamesWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;
    }
.end annotation


# static fields
.field public static final MORE_GAMES_URI:Ljava/lang/String; = "http://news.noodlecake.net/more_games/"

.field public static final PLATFORM_KEY:Ljava/lang/String; = "com.noodlecake.noodlenews.MoreGamesWebView.key_platform"


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/noodlecake/noodlenews/MoreGamesWebView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "android"

    .line 47
    invoke-virtual {p0}, Lcom/noodlecake/noodlenews/MoreGamesWebView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    const-string v3, "com.noodlecake.noodlenews.MoreGamesWebView.key_platform"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v3, "com.noodlecake.noodlenews.MoreGamesWebView.key_platform"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 51
    if-ne v2, v6, :cond_0

    .line 52
    const-string v0, "amazon"

    .line 56
    :cond_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    .line 57
    iget-object v2, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;

    invoke-direct {v3, p0, v7}, Lcom/noodlecake/noodlenews/MoreGamesWebView$MoreGamesWebViewClient;-><init>(Lcom/noodlecake/noodlenews/MoreGamesWebView;Lcom/noodlecake/noodlenews/MoreGamesWebView$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 59
    iget-object v2, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->progressBar:Landroid/widget/ProgressBar;

    .line 63
    iget-object v2, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    iget-object v3, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v2, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 70
    iget-object v2, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/noodlecake/noodlenews/MoreGamesWebView;->setContentView(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://news.noodlecake.net/more_games/?bundle_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apportable/activity/VerdeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&platform="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&amzn=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 83
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 84
    iget-object v0, p0, Lcom/noodlecake/noodlenews/MoreGamesWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 86
    :cond_0
    return-void
.end method
