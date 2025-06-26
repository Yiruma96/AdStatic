.class Lcom/apportable/ui/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/VideoView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/VideoView;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/16 v6, 0x1d

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    const/4 v3, 0x2

    # setter for: Lcom/apportable/ui/VideoView;->mCurrentState:I
    invoke-static {v0, v3}, Lcom/apportable/ui/VideoView;->access$202(Lcom/apportable/ui/VideoView;I)I

    .line 286
    # invokes: Lcom/apportable/ui/VideoView;->getMetadata(Landroid/media/MediaPlayer;ZZ)Ljava/lang/Object;
    invoke-static {p1, v1, v1}, Lcom/apportable/ui/VideoView;->access$300(Landroid/media/MediaPlayer;ZZ)Ljava/lang/Object;

    move-result-object v3

    .line 288
    if-eqz v3, :cond_a

    .line 289
    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # invokes: Lcom/apportable/ui/VideoView;->metadataHas(Ljava/lang/Object;I)Z
    invoke-static {v3, v6}, Lcom/apportable/ui/VideoView;->access$500(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    # invokes: Lcom/apportable/ui/VideoView;->metadataGetBoolean(Ljava/lang/Object;I)Z
    invoke-static {v3, v6}, Lcom/apportable/ui/VideoView;->access$600(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    move v0, v2

    .line 289
    :goto_0
    # setter for: Lcom/apportable/ui/VideoView;->mCanPause:Z
    invoke-static {v4, v0}, Lcom/apportable/ui/VideoView;->access$402(Lcom/apportable/ui/VideoView;Z)Z

    .line 291
    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # invokes: Lcom/apportable/ui/VideoView;->metadataHas(Ljava/lang/Object;I)Z
    invoke-static {v3, v7}, Lcom/apportable/ui/VideoView;->access$500(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    # invokes: Lcom/apportable/ui/VideoView;->metadataGetBoolean(Ljava/lang/Object;I)Z
    invoke-static {v3, v7}, Lcom/apportable/ui/VideoView;->access$600(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    move v0, v2

    .line 291
    :goto_1
    # setter for: Lcom/apportable/ui/VideoView;->mCanSeekBack:Z
    invoke-static {v4, v0}, Lcom/apportable/ui/VideoView;->access$702(Lcom/apportable/ui/VideoView;Z)Z

    .line 293
    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    const/16 v0, 0x1f

    # invokes: Lcom/apportable/ui/VideoView;->metadataHas(Ljava/lang/Object;I)Z
    invoke-static {v3, v0}, Lcom/apportable/ui/VideoView;->access$500(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    .line 294
    # invokes: Lcom/apportable/ui/VideoView;->metadataGetBoolean(Ljava/lang/Object;I)Z
    invoke-static {v3, v0}, Lcom/apportable/ui/VideoView;->access$600(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v0, v2

    .line 293
    :goto_2
    # setter for: Lcom/apportable/ui/VideoView;->mCanSeekForward:Z
    invoke-static {v4, v0}, Lcom/apportable/ui/VideoView;->access$802(Lcom/apportable/ui/VideoView;Z)Z

    .line 299
    :goto_3
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$900(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$900(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$1000(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    # setter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v0, v2}, Lcom/apportable/ui/VideoView;->access$002(Lcom/apportable/ui/VideoView;I)I

    .line 306
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    # setter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v0, v2}, Lcom/apportable/ui/VideoView;->access$102(Lcom/apportable/ui/VideoView;I)I

    .line 308
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mSeekWhenPrepared:I
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1200(Lcom/apportable/ui/VideoView;)I

    move-result v0

    .line 309
    if-eqz v0, :cond_5

    .line 310
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    invoke-virtual {v2, v0}, Lcom/apportable/ui/VideoView;->seekTo(I)V

    .line 312
    :cond_5
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 314
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    invoke-virtual {v2}, Lcom/apportable/ui/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v4}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 315
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mSurfaceWidth:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$1300(Lcom/apportable/ui/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mSurfaceHeight:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$1400(Lcom/apportable/ui/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 319
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mTargetState:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$1500(Lcom/apportable/ui/VideoView;)I

    move-result v2

    if-ne v2, v5, :cond_b

    .line 320
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->start()V

    .line 321
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 322
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 339
    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v1

    .line 290
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 292
    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 294
    goto/16 :goto_2

    .line 296
    :cond_a
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # setter for: Lcom/apportable/ui/VideoView;->mCanSeekForward:Z
    invoke-static {v4, v2}, Lcom/apportable/ui/VideoView;->access$802(Lcom/apportable/ui/VideoView;Z)Z

    move-result v4

    # setter for: Lcom/apportable/ui/VideoView;->mCanSeekBack:Z
    invoke-static {v3, v4}, Lcom/apportable/ui/VideoView;->access$702(Lcom/apportable/ui/VideoView;Z)Z

    move-result v3

    # setter for: Lcom/apportable/ui/VideoView;->mCanPause:Z
    invoke-static {v0, v3}, Lcom/apportable/ui/VideoView;->access$402(Lcom/apportable/ui/VideoView;Z)Z

    goto/16 :goto_3

    .line 324
    :cond_b
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    invoke-virtual {v2}, Lcom/apportable/ui/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    .line 325
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_6

    .line 326
    :cond_c
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 328
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_4

    .line 335
    :cond_d
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    # getter for: Lcom/apportable/ui/VideoView;->mTargetState:I
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1500(Lcom/apportable/ui/VideoView;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 336
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->start()V

    goto :goto_4
.end method
