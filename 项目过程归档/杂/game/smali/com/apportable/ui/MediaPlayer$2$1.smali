.class Lcom/apportable/ui/MediaPlayer$2$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/MediaPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/MediaPlayer$2;


# direct methods
.method constructor <init>(Lcom/apportable/ui/MediaPlayer$2;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/apportable/ui/MediaPlayer$2$1;->this$1:Lcom/apportable/ui/MediaPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer$2$1;->this$1:Lcom/apportable/ui/MediaPlayer$2;

    iget-object v0, v0, Lcom/apportable/ui/MediaPlayer$2;->this$0:Lcom/apportable/ui/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apportable/ui/MediaPlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method
