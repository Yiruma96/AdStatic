.class Lcom/apportable/ui/MediaPlayer;
.super Lcom/apportable/ui/View;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDeferredFrame:Landroid/graphics/RectF;

.field private mHasDeferredFrame:Z

.field private mMediaPlayer:Lcom/apportable/ui/VideoView;

.field private mPlaybackPossible:Z

.field private mResumePosition:I

.field private mUriString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 22
    const-string v0, "MediaPlayer/Video"

    iput-object v0, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/apportable/ui/MediaPlayer;->init(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 22
    const-string v0, "MediaPlayer/Video"

    iput-object v0, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/apportable/ui/MediaPlayer;->init(Landroid/app/Activity;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mDeferredFrame:Landroid/graphics/RectF;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mHasDeferredFrame:Z

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/apportable/ui/MediaPlayer;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/apportable/ui/MediaPlayer;)Lcom/apportable/ui/VideoView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    return-object v0
.end method

.method public static create(Landroid/app/Activity;I)Lcom/apportable/ui/MediaPlayer;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/apportable/ui/MediaPlayer;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/MediaPlayer;-><init>(Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static create(Landroid/app/Activity;ILandroid/graphics/RectF;)Lcom/apportable/ui/MediaPlayer;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/apportable/ui/MediaPlayer;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/MediaPlayer;-><init>(Landroid/app/Activity;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    .line 57
    new-instance v0, Lcom/apportable/ui/VideoView;

    invoke-direct {v0, p1}, Lcom/apportable/ui/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    .line 58
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0, p0}, Lcom/apportable/ui/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 59
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/MediaPlayer;->setContentView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method private native playbackCompleted(I)V
.end method


# virtual methods
.method public getCurrentPosition()D
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/apportable/ui/MediaPlayer;->mObject:I

    invoke-direct {p0, v0}, Lcom/apportable/ui/MediaPlayer;->playbackCompleted(I)V

    .line 178
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 182
    invoke-super/range {p0 .. p5}, Lcom/apportable/ui/View;->onLayout(ZIIII)V

    .line 185
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    .line 187
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->getPaddingTop()I

    move-result v2

    sub-int v3, p4, p2

    .line 188
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 191
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    .line 192
    invoke-virtual {v3}, Lcom/apportable/ui/VideoView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v4}, Lcom/apportable/ui/VideoView;->getMeasuredHeight()I

    move-result v4

    .line 191
    invoke-static {v2, v3, v4, v0, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 194
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/apportable/ui/VideoView;->layout(IIII)V

    .line 198
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    .line 157
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->pause()V

    .line 158
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    .line 129
    iget-object v1, p0, Lcom/apportable/ui/MediaPlayer;->mUriString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apportable/ui/MediaPlayer;->setContentURI(Ljava/lang/String;)V

    .line 130
    iget-boolean v1, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v1, v0}, Lcom/apportable/ui/VideoView;->seekTo(I)V

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    if-eqz v0, :cond_2

    .line 135
    iget-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mHasDeferredFrame:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mDeferredFrame:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/MediaPlayer;->setFrame(Landroid/graphics/RectF;)V

    .line 138
    :cond_1
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/MediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/apportable/ui/MediaPlayer$2;-><init>(Lcom/apportable/ui/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apportable/ui/MediaPlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public setContentURI(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    iput v7, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    .line 64
    iput-object p1, p0, Lcom/apportable/ui/MediaPlayer;->mUriString:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 69
    iput-boolean v7, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeVideo: checking first in path:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :try_start_1
    iget-object v2, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeVideo: file stream found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v0

    move-object v6, v3

    .line 96
    :goto_0
    iget-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    new-instance v2, Lcom/apportable/ui/MediaPlayer$1;

    invoke-direct {v2, p0}, Lcom/apportable/ui/MediaPlayer$1;-><init>(Lcom/apportable/ui/MediaPlayer;)V

    invoke-virtual {v0, v2}, Lcom/apportable/ui/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 105
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/apportable/ui/VideoView;->setVideoSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 78
    :goto_2
    :try_start_3
    const-string v1, "^/"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apportable/activity/VerdeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 80
    iget-object v4, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeVideo: using asset path:\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' desc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v1

    move-object v6, v3

    move-object v1, v2

    .line 94
    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v3

    move-object v3, v9

    .line 83
    iget-object v4, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeVideo: error loading from APK:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apportable/ExpansionFileManager;->hasExpansionFiles()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/apportable/ExpansionFileManager;->openAssetFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 88
    :cond_1
    if-nez v0, :cond_2

    .line 89
    iget-object v3, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeVideo: could not find any file with path:\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    move-object v6, v1

    move-object v1, v2

    goto/16 :goto_0

    .line 91
    :cond_2
    iget-object v3, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeVideo: using asset path:\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from expansion files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-boolean v8, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    move-object v4, v0

    move-object v6, v1

    move-object v1, v2

    goto/16 :goto_0

    .line 107
    :cond_3
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/apportable/ui/VideoView;->setVideoSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 113
    :catch_2
    move-exception v0

    .line 114
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeAudio: could not setVideoSource with asset path:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-boolean v7, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    goto/16 :goto_1

    .line 110
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeVideo: could not setVideoSource with asset path:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 75
    :catch_3
    move-exception v2

    move-object v2, v1

    goto/16 :goto_2
.end method

.method public setFrame(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mHasDeferredFrame:Z

    .line 123
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->setFrame(Landroid/graphics/RectF;)V

    .line 124
    return-void
.end method

.method public setShouldAutoplay(Z)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->play()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->stopPlayback()V

    .line 162
    return-void
.end method
