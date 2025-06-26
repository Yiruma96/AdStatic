.class Lcom/apportable/media/AudioPlayerItem;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field apportableAudioPlayer:Lcom/apportable/media/AudioPlayer;

.field id:I

.field loops:I

.field player:Landroid/media/MediaPlayer;

.field seekTarget:I

.field suspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "AudioPlayerItem"

    sput-object v0, Lcom/apportable/media/AudioPlayerItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaPlayer;Lcom/apportable/media/AudioPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/apportable/media/AudioPlayerItem;->suspended:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/apportable/media/AudioPlayerItem;->seekTarget:I

    .line 35
    iput-object p2, p0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    .line 36
    iput-object p3, p0, Lcom/apportable/media/AudioPlayerItem;->apportableAudioPlayer:Lcom/apportable/media/AudioPlayer;

    .line 37
    iput v1, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    .line 38
    iput p1, p0, Lcom/apportable/media/AudioPlayerItem;->id:I

    .line 40
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 41
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public native nativeOnComplete(I)V
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/apportable/media/AudioPlayerItem$1;

    invoke-direct {v0, p0}, Lcom/apportable/media/AudioPlayerItem$1;-><init>(Lcom/apportable/media/AudioPlayerItem;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 56
    iget v0, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    if-lez v0, :cond_0

    .line 57
    iget v0, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    .line 58
    iget-object v0, p0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 59
    iget-object v0, p0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/apportable/media/AudioPlayerItem;->apportableAudioPlayer:Lcom/apportable/media/AudioPlayer;

    iget v1, p0, Lcom/apportable/media/AudioPlayerItem;->id:I

    invoke-virtual {v0, v1}, Lcom/apportable/media/AudioPlayer;->lazyReleaseAudio(I)V

    goto :goto_0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setLooping(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    .line 46
    return-void
.end method
