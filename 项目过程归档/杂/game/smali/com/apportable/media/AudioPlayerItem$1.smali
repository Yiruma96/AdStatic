.class Lcom/apportable/media/AudioPlayerItem$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/media/AudioPlayerItem;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/media/AudioPlayerItem;


# direct methods
.method constructor <init>(Lcom/apportable/media/AudioPlayerItem;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/apportable/media/AudioPlayerItem$1;->this$0:Lcom/apportable/media/AudioPlayerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/apportable/media/AudioPlayerItem$1;->this$0:Lcom/apportable/media/AudioPlayerItem;

    iget-object v1, p0, Lcom/apportable/media/AudioPlayerItem$1;->this$0:Lcom/apportable/media/AudioPlayerItem;

    iget v1, v1, Lcom/apportable/media/AudioPlayerItem;->id:I

    invoke-virtual {v0, v1}, Lcom/apportable/media/AudioPlayerItem;->nativeOnComplete(I)V

    .line 54
    return-void
.end method
