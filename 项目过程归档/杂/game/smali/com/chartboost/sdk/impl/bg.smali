.class public Lcom/chartboost/sdk/impl/bg;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/chartboost/sdk/impl/bh$a;


# instance fields
.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/Surface;

.field private j:Landroid/media/MediaPlayer;

.field private k:I

.field private l:I

.field private m:Landroid/media/MediaPlayer$OnCompletionListener;

.field private n:Landroid/media/MediaPlayer$OnPreparedListener;

.field private o:I

.field private p:Landroid/media/MediaPlayer$OnErrorListener;

.field private q:I

.field private r:Landroid/media/MediaPlayer$OnCompletionListener;

.field private s:Landroid/media/MediaPlayer$OnErrorListener;

.field private t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v0, "VideoTextureView"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->c:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    .line 73
    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    .line 76
    iput-object v2, p0, Lcom/chartboost/sdk/impl/bg;->i:Landroid/view/Surface;

    .line 77
    iput-object v2, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    .line 217
    new-instance v0, Lcom/chartboost/sdk/impl/bg$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bg$1;-><init>(Lcom/chartboost/sdk/impl/bg;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 227
    new-instance v0, Lcom/chartboost/sdk/impl/bg$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bg$2;-><init>(Lcom/chartboost/sdk/impl/bg;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 249
    new-instance v0, Lcom/chartboost/sdk/impl/bg$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bg$3;-><init>(Lcom/chartboost/sdk/impl/bg;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 261
    new-instance v0, Lcom/chartboost/sdk/impl/bg$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bg$4;-><init>(Lcom/chartboost/sdk/impl/bg;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->s:Landroid/media/MediaPlayer$OnErrorListener;

    .line 277
    new-instance v0, Lcom/chartboost/sdk/impl/bg$5;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bg$5;-><init>(Lcom/chartboost/sdk/impl/bg;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 89
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->f()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bg;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->k:I

    return v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bg;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bg;->k:I

    return p1
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 323
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    .line 325
    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    .line 326
    if-eqz p1, :cond_0

    .line 327
    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    .line 330
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bg;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->l:I

    return v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bg;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bg;->l:I

    return p1
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/bg;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    return p1
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/bg;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    return p1
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/bg;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->q:I

    return v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/bg;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bg;->o:I

    return p1
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/bg;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->k:I

    .line 104
    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->l:I

    .line 105
    invoke-virtual {p0, p0}, Lcom/chartboost/sdk/impl/bg;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bg;->setFocusable(Z)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bg;->setFocusableInTouchMode(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->requestFocus()Z

    .line 109
    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    .line 110
    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    .line 111
    return-void
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/bg;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    return v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 157
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->i:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    invoke-direct {p0, v5}, Lcom/chartboost/sdk/impl/bg;->a(Z)V

    .line 172
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 174
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->l:I

    .line 179
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :goto_1
    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->f:I

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->s:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 191
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->o:I

    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bg;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bg;->e:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 194
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->i:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 196
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 198
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bg;->a(II)V

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->g:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bg;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    iput v4, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    .line 205
    iput v4, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    .line 206
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->s:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 180
    :catch_1
    move-exception v0

    .line 181
    const-string v1, "play video"

    const-string v2, "read size error"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 208
    :catch_2
    move-exception v0

    .line 209
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bg;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    iput v4, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    .line 211
    iput v4, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->s:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 391
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/chartboost/sdk/impl/bg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 333
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 335
    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    .line 337
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    .line 338
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->q:I

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iput p1, p0, Lcom/chartboost/sdk/impl/bg;->q:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 122
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->k:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->l:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/chartboost/sdk/impl/bg;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lcom/chartboost/sdk/impl/bg;->l:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 126
    iget v1, p0, Lcom/chartboost/sdk/impl/bg;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/chartboost/sdk/impl/bg;->l:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 128
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    int-to-float v3, p1

    div-float/2addr v1, v3

    int-to-float v3, p2

    div-float/2addr v0, v3

    int-to-float v3, p1

    div-float/2addr v3, v5

    int-to-float v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/bg;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bg;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 303
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bg;->p:Landroid/media/MediaPlayer$OnErrorListener;

    .line 315
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bg;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 292
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/bg;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 119
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bg;->d:Landroid/net/Uri;

    .line 139
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bg;->e:Ljava/util/Map;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->q:I

    .line 141
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->g()V

    .line 142
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->requestLayout()V

    .line 143
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->invalidate()V

    .line 144
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 341
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 344
    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->g:I

    .line 347
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    .line 348
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->f:I

    if-lez v0, :cond_0

    .line 354
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->f:I

    .line 360
    :goto_0
    return v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->f:I

    .line 357
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->f:I

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/bg;->f:I

    .line 360
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->f:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 396
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->i:Landroid/view/Surface;

    .line 397
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->g()V

    .line 398
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x1

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->i:Landroid/view/Surface;

    .line 404
    invoke-direct {p0, v1}, Lcom/chartboost/sdk/impl/bg;->a(Z)V

    .line 405
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 410
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 412
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->q:I

    if-eqz v0, :cond_0

    .line 413
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->q:I

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bg;->a(I)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->a()V

    .line 417
    :cond_1
    return-void

    .line 410
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 422
    return-void
.end method
