.class Lcom/apportable/ui/MediaPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/MediaPlayer;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/apportable/ui/MediaPlayer;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/apportable/ui/MediaPlayer$2;->this$0:Lcom/apportable/ui/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer$2;->this$0:Lcom/apportable/ui/MediaPlayer;

    # getter for: Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;
    invoke-static {v0}, Lcom/apportable/ui/MediaPlayer;->access$100(Lcom/apportable/ui/MediaPlayer;)Lcom/apportable/ui/VideoView;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/MediaPlayer$2$1;

    invoke-direct {v1, p0}, Lcom/apportable/ui/MediaPlayer$2$1;-><init>(Lcom/apportable/ui/MediaPlayer$2;)V

    invoke-virtual {v0, v1}, Lcom/apportable/ui/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 147
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer$2;->this$0:Lcom/apportable/ui/MediaPlayer;

    # getter for: Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;
    invoke-static {v0}, Lcom/apportable/ui/MediaPlayer;->access$100(Lcom/apportable/ui/MediaPlayer;)Lcom/apportable/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->start()V

    .line 148
    return-void
.end method
