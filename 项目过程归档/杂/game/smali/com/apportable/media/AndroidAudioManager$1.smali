.class Lcom/apportable/media/AndroidAudioManager$1;
.super Ljava/lang/Object;
.source "AndroidAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 46
    iput-object p1, p0, Lcom/apportable/media/AndroidAudioManager$1;->this$0:Lcom/apportable/media/AndroidAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 49
    # getter for: Lcom/apportable/media/AndroidAudioManager;->instance:Lcom/apportable/media/AndroidAudioManager;
    invoke-static {}, Lcom/apportable/media/AndroidAudioManager;->access$000()Lcom/apportable/media/AndroidAudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    # getter for: Lcom/apportable/media/AndroidAudioManager;->instance:Lcom/apportable/media/AndroidAudioManager;
    invoke-static {}, Lcom/apportable/media/AndroidAudioManager;->access$000()Lcom/apportable/media/AndroidAudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apportable/media/AndroidAudioManager;->audioFocusChange(I)V

    .line 52
    :cond_0
    return-void
.end method
