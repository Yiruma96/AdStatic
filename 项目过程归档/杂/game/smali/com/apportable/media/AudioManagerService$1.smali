.class Lcom/apportable/media/AudioManagerService$1;
.super Ljava/lang/Object;
.source "AudioManagerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/media/AudioManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/media/AudioManagerService;


# direct methods
.method constructor <init>(Lcom/apportable/media/AudioManagerService;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/apportable/media/AudioManagerService$1;->this$0:Lcom/apportable/media/AudioManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService$1;->this$0:Lcom/apportable/media/AudioManagerService;

    # getter for: Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v0}, Lcom/apportable/media/AudioManagerService;->access$000(Lcom/apportable/media/AudioManagerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService$1;->this$0:Lcom/apportable/media/AudioManagerService;

    # getter for: Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v0}, Lcom/apportable/media/AudioManagerService;->access$000(Lcom/apportable/media/AudioManagerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 30
    :cond_0
    return-void
.end method
