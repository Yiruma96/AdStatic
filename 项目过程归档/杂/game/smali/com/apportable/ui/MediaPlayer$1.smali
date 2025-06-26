.class Lcom/apportable/ui/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/MediaPlayer;->setContentURI(Ljava/lang/String;)V
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
    .line 97
    iput-object p1, p0, Lcom/apportable/ui/MediaPlayer$1;->this$0:Lcom/apportable/ui/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer$1;->this$0:Lcom/apportable/ui/MediaPlayer;

    const/4 v1, 0x0

    # setter for: Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/MediaPlayer;->access$002(Lcom/apportable/ui/MediaPlayer;Z)Z

    .line 101
    const/4 v0, 0x1

    return v0
.end method
