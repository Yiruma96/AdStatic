.class Lcom/apportable/ui/WebView;
.super Lcom/apportable/ui/View;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/WebView$WebViewClient;,
        Lcom/apportable/ui/WebView$JSValueCallback;,
        Lcom/apportable/ui/WebView$JSInterface;
    }
.end annotation


# instance fields
.field private final apportableMainThread:Ljava/lang/Thread;

.field private final handler:Landroid/os/Handler;

.field private mActionMode:Landroid/view/ActionMode;

.field private mCanGoBack:Z

.field private mCanGoForward:Z

.field private mFrame:Landroid/graphics/RectF;

.field private mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mJsResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLoading:Z

.field private mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mCanGoBack:Z

    .line 44
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mCanGoForward:Z

    .line 45
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mLoading:Z

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

    .line 390
    invoke-direct {p0}, Lcom/apportable/ui/WebView;->init()V

    .line 391
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 43
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mCanGoBack:Z

    .line 44
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mCanGoForward:Z

    .line 45
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mLoading:Z

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

    .line 395
    iput-object p3, p0, Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;

    .line 396
    invoke-direct {p0}, Lcom/apportable/ui/WebView;->init()V

    .line 397
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/apportable/ui/WebView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView;->onPageFinished(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/apportable/ui/WebView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView;->onPageStarted(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/apportable/ui/WebView;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apportable/ui/WebView;->onReceivedError(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/apportable/ui/WebView;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView;->onLink(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/apportable/ui/WebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/apportable/ui/WebView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/apportable/ui/WebView;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/apportable/ui/WebView;->initWebView()V

    return-void
.end method

.method static synthetic access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/apportable/ui/WebView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/apportable/ui/WebView;->mLoading:Z

    return p1
.end method

.method static synthetic access$702(Lcom/apportable/ui/WebView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/apportable/ui/WebView;->mCanGoBack:Z

    return p1
.end method

.method static synthetic access$802(Lcom/apportable/ui/WebView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/apportable/ui/WebView;->mCanGoForward:Z

    return p1
.end method

.method static synthetic access$900(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/WebView;
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/apportable/ui/WebView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/WebView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/WebView;
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/apportable/ui/WebView;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/WebView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apportable/ui/WebView;->setClipChildren(Z)V

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 234
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/apportable/ui/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    .line 235
    invoke-direct {p0}, Lcom/apportable/ui/WebView;->initWebView()V

    .line 236
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/WebView;->setContentView(Landroid/view/View;)V

    .line 386
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$3;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3;-><init>(Lcom/apportable/ui/WebView;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initWebView()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 195
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 196
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/apportable/ui/WebView$JSInterface;

    invoke-direct {v1, p0, p0}, Lcom/apportable/ui/WebView$JSInterface;-><init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V

    const-string v2, "_VERDE_JS"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/apportable/ui/WebView$WebViewClient;

    invoke-direct {v0, p0, p0}, Lcom/apportable/ui/WebView$WebViewClient;-><init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V

    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

    .line 199
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/apportable/ui/WebView;->mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 200
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 202
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/apportable/ui/WebView$1;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$1;-><init>(Lcom/apportable/ui/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/apportable/ui/WebView$2;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$2;-><init>(Lcom/apportable/ui/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 228
    return-void
.end method

.method private jsEvaluationRunnable(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 575
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window._VERDE_JS.ReturnValue(eval(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    new-instance v0, Lcom/apportable/ui/WebView$8;

    invoke-direct {v0, p0, v1}, Lcom/apportable/ui/WebView$8;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V

    .line 585
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/apportable/ui/WebView$9;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/WebView$9;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native onLink(ILjava/lang/String;)Z
.end method

.method private native onPageFinished(ILjava/lang/String;)V
.end method

.method private native onPageStarted(ILjava/lang/String;)V
.end method

.method private native onReceivedError(IILjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/apportable/ui/WebView;->mCanGoBack:Z

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/apportable/ui/WebView;->mCanGoForward:Z

    return v0
.end method

.method public getRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 513
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 517
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/apportable/ui/WebView;->mLoading:Z

    return v0
.end method

.method public loadData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    const-string v0, "WebView"

    const-string v1, "aborting loadData, data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v6, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/apportable/ui/WebView$4;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/apportable/ui/WebView$4;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/apportable/ui/WebView$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/apportable/ui/WebView$5;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method

.method public loadRequest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/apportable/ui/WebView$6;

    invoke-direct {v1, p0, p1}, Lcom/apportable/ui/WebView$6;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 493
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public setClipsToBounds(Z)V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 479
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 480
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$7;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$7;-><init>(Lcom/apportable/ui/WebView;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0
.end method

.method public stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 545
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const-string v0, ""

    .line 571
    :goto_0
    return-object v0

    .line 550
    :cond_0
    const-wide/16 v0, 0x2710

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 554
    iget-object v4, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 555
    iget-object v4, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 556
    iget-object v4, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 559
    invoke-direct {p0, p1}, Lcom/apportable/ui/WebView;->jsEvaluationRunnable(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 561
    :cond_1
    iget-object v4, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v2, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 571
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
