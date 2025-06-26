.class Lcom/flurry/sdk/g$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/g;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/g$1;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g$b;-><init>(Lcom/flurry/sdk/g;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadResource: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 153
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->c(Lcom/flurry/sdk/g;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->d(Lcom/flurry/sdk/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    const-string v1, "mraid.js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Z)Z

    .line 184
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->e(Lcom/flurry/sdk/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->f(Lcom/flurry/sdk/g;)V

    .line 187
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->g(Lcom/flurry/sdk/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->h(Lcom/flurry/sdk/g;)V

    .line 189
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->i(Lcom/flurry/sdk/g;)V

    .line 190
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->j(Lcom/flurry/sdk/g;)V

    .line 191
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->k(Lcom/flurry/sdk/g;)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->g(Lcom/flurry/sdk/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->l(Lcom/flurry/sdk/g;)V

    .line 197
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getCurrentBinding()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->m(Lcom/flurry/sdk/g;)V

    goto/16 :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 230
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->c(Lcom/flurry/sdk/g;)V

    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->p(Lcom/flurry/sdk/g;)V

    .line 246
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->q(Lcom/flurry/sdk/g;)V

    .line 248
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    iget-object v1, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/g;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getCurrentBinding()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getCurrentBinding()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adding WebView to AdUnityView"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    iget-object v1, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/g;->addView(Landroid/view/View;)V

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0, v3}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;Z)Z

    .line 256
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->e(Lcom/flurry/sdk/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->d(Lcom/flurry/sdk/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->h(Lcom/flurry/sdk/g;)V

    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->i(Lcom/flurry/sdk/g;)V

    .line 260
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->j(Lcom/flurry/sdk/g;)V

    .line 261
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->k(Lcom/flurry/sdk/g;)V

    goto :goto_0

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->d(Lcom/flurry/sdk/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->l(Lcom/flurry/sdk/g;)V

    .line 267
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getCurrentBinding()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 269
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->m(Lcom/flurry/sdk/g;)V

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->n(Lcom/flurry/sdk/g;)V

    .line 221
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->o(Lcom/flurry/sdk/g;)V

    .line 223
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0, v4}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;Z)Z

    .line 224
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0, v4}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Z)Z

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 350
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->q(Lcom/flurry/sdk/g;)V

    .line 356
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 357
    const-string v1, "market"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 365
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->t(Lcom/flurry/sdk/g;)V

    .line 374
    :goto_0
    return-void

    .line 367
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 368
    const-string v0, "errorCode"

    sget-object v1, Lcom/flurry/sdk/b;->q:Lcom/flurry/sdk/b;

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v0, "webViewErrorCode"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v0, "failingUrl"

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    const-string v1, "renderFailed"

    iget-object v3, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 278
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 280
    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/flurry/sdk/cf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading: target url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 302
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 303
    const-string v1, "flurry"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 304
    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_3

    .line 306
    iget-object v2, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v2}, Lcom/flurry/sdk/g;->r(Lcom/flurry/sdk/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fe;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 310
    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    iget-object v3, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    .line 312
    iget-object v4, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v4

    .line 313
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 314
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 321
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    iget-object v3, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    goto :goto_1

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->s(Lcom/flurry/sdk/g;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/g;->c(Lcom/flurry/sdk/g;Z)Z

    .line 325
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    const-string v1, "clicked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 329
    invoke-static {p2}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_8

    .line 331
    const/4 v0, 0x0

    .line 332
    invoke-static {v1}, Lcom/flurry/sdk/cf;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 333
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v2}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/flurry/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 335
    :cond_7
    if-nez v0, :cond_8

    .line 336
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 343
    :cond_8
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 340
    :cond_9
    iget-object v0, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v1}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/flurry/sdk/g$b;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v2}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v4

    const/4 v5, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V

    goto :goto_2
.end method
