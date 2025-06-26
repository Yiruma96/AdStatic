.class public Lcom/apportable/media/AudioManagerService;
.super Landroid/app/Service;
.source "AudioManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private am:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/Binder;

.field private mObject:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "AudioManagerService"

    sput-object v0, Lcom/apportable/media/AudioManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    .line 20
    new-instance v0, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;

    invoke-direct {v0, p0}, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;-><init>(Lcom/apportable/media/AudioManagerService;)V

    iput-object v0, p0, Lcom/apportable/media/AudioManagerService;->mBinder:Landroid/os/Binder;

    .line 22
    iput-object v1, p0, Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 24
    new-instance v0, Lcom/apportable/media/AudioManagerService$1;

    invoke-direct {v0, p0}, Lcom/apportable/media/AudioManagerService$1;-><init>(Lcom/apportable/media/AudioManagerService;)V

    iput-object v0, p0, Lcom/apportable/media/AudioManagerService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/media/AudioManagerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/apportable/media/AudioManagerService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 71
    return-void
.end method

.method public isMusicActive()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/Binder;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/apportable/media/AudioManagerService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    .line 48
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/apportable/media/AudioManagerService;->onBind(Landroid/content/Intent;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/apportable/media/AudioManagerService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method public requestAudioFocusPermanent()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 61
    .line 63
    iget-object v2, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/apportable/media/AudioManagerService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 66
    :goto_0
    if-ne v2, v0, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public setListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 53
    const/4 v0, 0x1

    return v0
.end method
