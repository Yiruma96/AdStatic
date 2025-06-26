.class public Lcom/apportable/media/AndroidAudioManager;
.super Ljava/lang/Object;
.source "AndroidAudioManager.java"


# static fields
.field static final AUDIO_SESSION_CATEGORY_AMBIENT:I = 0x1

.field static final AUDIO_SESSION_CATEGORY_AUDIOPROCESSING:I = 0x6

.field static final AUDIO_SESSION_CATEGORY_MULTIROUTE:I = 0x7

.field static final AUDIO_SESSION_CATEGORY_PLAYANDRECORD:I = 0x5

.field static final AUDIO_SESSION_CATEGORY_PLAYBACK:I = 0x3

.field static final AUDIO_SESSION_CATEGORY_RECORD:I = 0x4

.field static final AUDIO_SESSION_CATEGORY_SOLOAMBIENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AndroidAudioManager"

.field private static instance:Lcom/apportable/media/AndroidAudioManager;


# instance fields
.field private afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManagerService:Lcom/apportable/media/AudioManagerService;

.field private audioManagerServiceFailed:Z

.field private mAM:Landroid/media/AudioManager;

.field private mActive:Z

.field private mAudioFocusDisabled:Z

.field private mCategory:I

.field mCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsOtherMusicActive:Z

.field private mSilenceOnSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/media/AndroidAudioManager;->instance:Lcom/apportable/media/AndroidAudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerServiceFailed:Z

    .line 38
    iput-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mIsOtherMusicActive:Z

    .line 39
    iput-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mActive:Z

    .line 40
    iput-object v1, p0, Lcom/apportable/media/AndroidAudioManager;->mContext:Landroid/content/Context;

    .line 41
    iput v5, p0, Lcom/apportable/media/AndroidAudioManager;->mCategory:I

    .line 42
    iput-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mAudioFocusDisabled:Z

    .line 43
    iput-boolean v4, p0, Lcom/apportable/media/AndroidAudioManager;->mSilenceOnSuspend:Z

    .line 44
    iput-object v1, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    .line 46
    new-instance v0, Lcom/apportable/media/AndroidAudioManager$1;

    invoke-direct {v0, p0}, Lcom/apportable/media/AndroidAudioManager$1;-><init>(Lcom/apportable/media/AndroidAudioManager;)V

    iput-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 54
    new-instance v0, Lcom/apportable/media/AndroidAudioManager$2;

    invoke-direct {v0, p0}, Lcom/apportable/media/AndroidAudioManager$2;-><init>(Lcom/apportable/media/AndroidAudioManager;)V

    iput-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mConnection:Landroid/content/ServiceConnection;

    .line 67
    iput-object p1, p0, Lcom/apportable/media/AndroidAudioManager;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mAM:Landroid/media/AudioManager;

    .line 69
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/apportable/media/AndroidAudioManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/apportable/media/AudioManagerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/apportable/media/AndroidAudioManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    .line 72
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    const-string v1, "AVAudioSessionCategoryAmbient"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    const-string v1, "AVAudioSessionCategorySoloAmbient"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    const-string v1, "AVAudioSessionCategoryPlayback"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    const-string v1, "AVAudioSessionCategoryRecord"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    const-string v1, "AVAudioSessionCategoryPlayAndRecord"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    const-string v1, "AVAudioSessionCategoryAudioProcessing"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    const-string v1, "AVAudioSessionCategoryMultiRoute"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method static synthetic access$000()Lcom/apportable/media/AndroidAudioManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/apportable/media/AndroidAudioManager;->instance:Lcom/apportable/media/AndroidAudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/media/AndroidAudioManager;)Lcom/apportable/media/AudioManagerService;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/apportable/media/AndroidAudioManager;Lcom/apportable/media/AudioManagerService;)Lcom/apportable/media/AudioManagerService;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/apportable/media/AndroidAudioManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/apportable/media/AndroidAudioManager;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/apportable/media/AndroidAudioManager;->instance:Lcom/apportable/media/AndroidAudioManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/apportable/media/AndroidAudioManager;

    invoke-direct {v0, p0}, Lcom/apportable/media/AndroidAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apportable/media/AndroidAudioManager;->instance:Lcom/apportable/media/AndroidAudioManager;

    .line 87
    :cond_0
    sget-object v0, Lcom/apportable/media/AndroidAudioManager;->instance:Lcom/apportable/media/AndroidAudioManager;

    return-object v0
.end method

.method private waitOnConnection()V
    .locals 4

    .prologue
    .line 148
    const/16 v0, 0x190

    .line 149
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerServiceFailed:Z

    if-nez v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "AndroidAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioManagerService success with remaining attemps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_1
    return-void

    .line 155
    :cond_0
    const-wide/16 v2, 0x5

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerServiceFailed:Z

    .line 161
    const-string v0, "AndroidAudioManager"

    const-string v1, "Failed waiting for AudioManagerService!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mAudioFocusDisabled:Z

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/apportable/media/AndroidAudioManager;->waitOnConnection()V

    .line 225
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    invoke-virtual {v0}, Lcom/apportable/media/AudioManagerService;->abandonAudioFocus()V

    goto :goto_0
.end method

.method public native audioFocusChange(I)V
.end method

.method public getNativeFramesPerBuffer()I
    .locals 4

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 133
    const/16 v0, 0x400

    .line 135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 136
    iget-object v1, p0, Lcom/apportable/media/AndroidAudioManager;->mAM:Landroid/media/AudioManager;

    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_0
    if-eqz v1, :cond_1

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 143
    :cond_1
    return v0
.end method

.method public getNativeSampleRate()F
    .locals 4

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 115
    const v0, 0x472c4400    # 44100.0f

    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 118
    iget-object v1, p0, Lcom/apportable/media/AndroidAudioManager;->mAM:Landroid/media/AudioManager;

    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_0
    if-eqz v1, :cond_1

    .line 122
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 125
    :cond_1
    return v0
.end method

.method public isAudioFocusDisabled()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mAudioFocusDisabled:Z

    return v0
.end method

.method public isInputAvailable()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .locals 1

    .prologue
    .line 165
    .line 166
    iget-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mIsOtherMusicActive:Z

    .line 167
    return v0
.end method

.method public lifecycleResume()V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/apportable/media/AndroidAudioManager;->resumeAudio()V

    .line 243
    return-void
.end method

.method public lifecycleSuspend()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/apportable/media/AndroidAudioManager;->abandonAudioFocus()V

    .line 234
    iget v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategory:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategory:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mSilenceOnSuspend:Z

    if-ne v0, v2, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/apportable/media/AndroidAudioManager;->suspendAudio()V

    .line 239
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/apportable/media/AndroidAudioManager;->updateOtherMusicState()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/apportable/media/AndroidAudioManager;->updateOtherMusicState()V

    .line 102
    iget v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategory:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/apportable/media/AndroidAudioManager;->requestAudioFocusPermanent()Z

    .line 106
    :cond_0
    return-void
.end method

.method public requestAudioFocusPermanent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-boolean v1, p0, Lcom/apportable/media/AndroidAudioManager;->mAudioFocusDisabled:Z

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/apportable/media/AndroidAudioManager;->waitOnConnection()V

    .line 214
    iget-object v1, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    if-eqz v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    invoke-virtual {v0}, Lcom/apportable/media/AudioManagerService;->requestAudioFocusPermanent()Z

    move-result v0

    goto :goto_0
.end method

.method public native resumeAudio()V
.end method

.method public setActive(Z)Z
    .locals 1

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/apportable/media/AndroidAudioManager;->mActive:Z

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public setActive(ZI)Z
    .locals 1

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/apportable/media/AndroidAudioManager;->mActive:Z

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public setAudioFocusDisabled(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/apportable/media/AndroidAudioManager;->mAudioFocusDisabled:Z

    .line 207
    return-void
.end method

.method public setBackgroundAudio(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 246
    if-ne p1, v0, :cond_0

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mSilenceOnSuspend:Z

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iput-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mSilenceOnSuspend:Z

    goto :goto_0
.end method

.method public setCategory(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "AndroidAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category not found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategory:I

    .line 188
    iget v0, p0, Lcom/apportable/media/AndroidAudioManager;->mCategory:I

    if-ne v0, v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/apportable/media/AndroidAudioManager;->abandonAudioFocus()V

    :goto_1
    move v0, v1

    .line 193
    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/apportable/media/AndroidAudioManager;->requestAudioFocusPermanent()Z

    goto :goto_1
.end method

.method public native suspendAudio()V
.end method

.method public updateOtherMusicState()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/apportable/media/AndroidAudioManager;->mAM:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apportable/media/AndroidAudioManager;->mIsOtherMusicActive:Z

    .line 94
    return-void
.end method
