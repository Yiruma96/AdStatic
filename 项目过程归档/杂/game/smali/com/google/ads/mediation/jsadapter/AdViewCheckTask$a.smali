.class final Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final v:I

.field private final w:I

.field private final x:Landroid/webkit/WebView;

.field private y:Landroid/graphics/Bitmap;

.field final synthetic z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;IILandroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p3, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->v:I

    iput p2, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->w:I

    iput-object p4, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->x:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    move v3, v1

    move v0, v1

    :goto_1
    if-ge v3, v4, :cond_4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_3

    :try_start_1
    iget-object v6, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0xa

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v3, 0xa

    move v3, v2

    goto :goto_1

    :cond_4
    int-to-double v2, v0

    mul-int v0, v4, v5

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;

    invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->a(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;

    invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->b(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->sendAdReceivedUpdate()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;

    invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->c(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->n(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Ad not detected, scheduling another run."

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->r(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;

    invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->e(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;

    iget-object v2, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;

    invoke-static {v2}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->d(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "Ad not detected, Not scheduling anymore runs."

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->z:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;

    invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->b(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->sendAdNotReceivedUpdate()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected declared-synchronized onPreExecute()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->w:I

    iget v1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->v:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->y:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->x:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->x:Landroid/webkit/WebView;

    iget v1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->w:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->v:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->measure(II)V

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->x:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->w:I

    iget v4, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->v:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->layout(IIII)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->y:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->x:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask$a;->x:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
