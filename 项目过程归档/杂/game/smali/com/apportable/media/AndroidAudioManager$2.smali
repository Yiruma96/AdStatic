.class Lcom/apportable/media/AndroidAudioManager$2;
.super Ljava/lang/Object;
.source "AndroidAudioManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/media/AndroidAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/media/AndroidAudioManager;


# direct methods
.method constructor <init>(Lcom/apportable/media/AndroidAudioManager;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/apportable/media/AndroidAudioManager$2;->this$0:Lcom/apportable/media/AndroidAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager$2;->this$0:Lcom/apportable/media/AndroidAudioManager;

    check-cast p2, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;

    invoke-virtual {p2}, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;->getService()Lcom/apportable/media/AudioManagerService;

    move-result-object v1

    # setter for: Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;
    invoke-static {v0, v1}, Lcom/apportable/media/AndroidAudioManager;->access$102(Lcom/apportable/media/AndroidAudioManager;Lcom/apportable/media/AudioManagerService;)Lcom/apportable/media/AudioManagerService;

    .line 57
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager$2;->this$0:Lcom/apportable/media/AndroidAudioManager;

    # getter for: Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;
    invoke-static {v0}, Lcom/apportable/media/AndroidAudioManager;->access$100(Lcom/apportable/media/AndroidAudioManager;)Lcom/apportable/media/AudioManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/media/AndroidAudioManager$2;->this$0:Lcom/apportable/media/AndroidAudioManager;

    # getter for: Lcom/apportable/media/AndroidAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/apportable/media/AndroidAudioManager;->access$200(Lcom/apportable/media/AndroidAudioManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apportable/media/AudioManagerService;->setListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 58
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager$2;->this$0:Lcom/apportable/media/AndroidAudioManager;

    const/4 v1, 0x0

    # setter for: Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;
    invoke-static {v0, v1}, Lcom/apportable/media/AndroidAudioManager;->access$102(Lcom/apportable/media/AndroidAudioManager;Lcom/apportable/media/AudioManagerService;)Lcom/apportable/media/AudioManagerService;

    .line 61
    return-void
.end method
