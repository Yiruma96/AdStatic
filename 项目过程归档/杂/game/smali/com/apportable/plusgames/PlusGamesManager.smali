.class public Lcom/apportable/plusgames/PlusGamesManager;
.super Ljava/lang/Object;
.source "PlusGamesManager.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;
.implements Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;
.implements Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;
.implements Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;
.implements Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/plusgames/PlusGamesManager$AchievementUpdateListener;
    }
.end annotation


# static fields
.field public static LOG:Ljava/lang/String; = null

.field public static final NOTIFICATION_ID_BASE:I = 0x5208

.field public static final NOT_LOGGED_IN_ERROR:I = -0x2

.field public static final REQUEST_ACHIEVEMENTS:I = 0x53a

.field public static final REQUEST_HANDLE_ERROR:I = 0x539

.field public static final REQUEST_LEADERBOARDS:I = 0x53b

.field public static final REQUEST_SELECTPLAYERS:I = 0x53c

.field public static final REQUEST_SHOWINVITATIONINBOX:I = 0x53e

.field public static final REQUEST_WAITING_ROOM:I = 0x53d

.field public static final SEND_DATA_MODE_RELIABLE:I = 0x0

.field public static final SEND_DATA_MODE_UNRELIABLE:I = 0x1


# instance fields
.field private mAchievementCurrents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAchievementMaxes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAchievementsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Landroid/app/Activity;

.field private mBuilder:Lcom/google/android/gms/games/GamesClient$Builder;

.field private mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

.field private mGamesClient:Lcom/google/android/gms/games/GamesClient;

.field private mIncomingInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field private mInvitationFromNotification:Z

.field private mInvitationNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitation;",
            ">;"
        }
    .end annotation
.end field

.field private mMyId:Ljava/lang/String;

.field private mNotificationId:I

.field private mObject:I

.field private mParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mRoomId:Ljava/lang/String;

.field private mShouldShowInvitationInbox:Z

.field public playerID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "PlusGamesManager"

    sput-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->playerID:Ljava/lang/String;

    .line 120
    iput p1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    .line 121
    iput-object p2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementMaxes:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementCurrents:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    iput-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mIncomingInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 126
    iput-boolean v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mInvitationFromNotification:Z

    .line 127
    iput-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 128
    iput v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mNotificationId:I

    .line 129
    iput-boolean v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mShouldShowInvitationInbox:Z

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/apportable/plusgames/PlusGamesManager;Lcom/google/android/gms/games/GamesClient;)Lcom/google/android/gms/games/GamesClient;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mBuilder:Lcom/google/android/gms/games/GamesClient$Builder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/apportable/plusgames/PlusGamesManager;Lcom/google/android/gms/games/GamesClient$Builder;)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mBuilder:Lcom/google/android/gms/games/GamesClient$Builder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/apportable/plusgames/PlusGamesManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private native nativeLeaderboardsReceivedCallback(ILjava/lang/String;)V
.end method

.method private native nativeOnConnected(ILjava/lang/String;)V
.end method

.method private native nativeOnConnectionFailed(II)V
.end method

.method private native nativeOnDisconnected(I)V
.end method

.method private native nativeOnDisconnectedFromRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method private native nativeOnInvitationAccepted(ILcom/google/android/gms/games/multiplayer/Invitation;)V
.end method

.method private native nativeOnInvitationReceived(ILcom/google/android/gms/games/multiplayer/Invitation;)V
.end method

.method private native nativeOnLeftRoom(IILjava/lang/String;)V
.end method

.method private native nativeOnPeerJoined(ILcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOnPeerLeft(ILcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOnPeersConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOnPeersDisconnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOnRealTimeMessageReceived(ILjava/lang/String;[B)V
.end method

.method private native nativeRoomConnectedCallback(IILjava/lang/String;)V
.end method

.method private native nativeScoresReceivedCallback(ILjava/lang/String;)V
.end method

.method private native nativeSelectPlayersFailed(II)V
.end method

.method private native nativeUserAchievementsReceivedCallback(ILjava/lang/String;)V
.end method

.method private native nativeWaitingRoomResult(II)V
.end method


# virtual methods
.method public acceptInviteToRoom(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 910
    if-nez p1, :cond_0

    .line 911
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "Rejecting null invitation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_2

    .line 916
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accepting invitation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but already have a connected room "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInvitationFromNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mInvitationFromNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-boolean v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mInvitationFromNotification:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 920
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mRoomId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/apportable/plusgames/PlusGamesManager;->nativeRoomConnectedCallback(IILjava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/games/GamesClient;->leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 928
    :cond_2
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accepting invitation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 930
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v1

    .line 931
    invoke-virtual {v1, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v1

    .line 932
    invoke-virtual {v1, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 933
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/GamesClient;->joinRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    goto/16 :goto_0
.end method

.method public awardAchievement(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "User is not logged in to PlusGames"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 411
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementMaxes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p0, p1, v0, v1}, Lcom/apportable/plusgames/PlusGamesManager;->updateAchievement(Ljava/lang/String;D)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/GamesClient;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_2
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "awardAchievement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called before achievements are loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callbackListenerReceivedCallback(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeScoresReceivedCallback(ILjava/lang/String;)V

    .line 526
    return-void
.end method

.method public connect(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 145
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "Connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 147
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/apportable/plusgames/PlusGamesManager$2;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/apportable/plusgames/PlusGamesManager$2;-><init>(Lcom/apportable/plusgames/PlusGamesManager;Landroid/view/View;Lcom/apportable/activity/VerdeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    monitor-enter v1

    .line 175
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 177
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    goto :goto_0

    .line 180
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "PlusGames services disconnect called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/apportable/plusgames/PlusGamesManager$4;

    invoke-direct {v1, p0}, Lcom/apportable/plusgames/PlusGamesManager$4;-><init>(Lcom/apportable/plusgames/PlusGamesManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    :cond_0
    return-void
.end method

.method public getConnectedRoom()Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .locals 2

    .prologue
    .line 958
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "getConnectedRoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    return-object v0
.end method

.method public getCurrentInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 979
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "getCurrentInvitation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mIncomingInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getGamesClient()Lcom/google/android/gms/games/GamesClient;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    return-object v0
.end method

.method public getMyId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 953
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMyID: mMyId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mMyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mMyId:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 3

    .prologue
    .line 988
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParticipant:id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 990
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 994
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoomParticipant(Ljava/lang/String;I)Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 3

    .prologue
    .line 945
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoomParticipant: roomId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " idx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mRoomId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 949
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoomParticipantCount(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 937
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoomParticipantCount: roomId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mRoomId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 941
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShouldShowInvitationInbox()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mShouldShowInvitationInbox:Z

    return v0
.end method

.method public handleInvitationInboxResult(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 641
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInvitationInboxResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 644
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** invitation inbox UI cancelled, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_0
    return-void

    .line 649
    :cond_0
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "Invitation inbox UI succeeded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "invitation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 653
    iget v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v1, v0}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnInvitationAccepted(ILcom/google/android/gms/games/multiplayer/Invitation;)V

    goto :goto_0
.end method

.method public incrementAchievement(Ljava/lang/String;ILcom/apportable/plusgames/PlusGamesManager$AchievementUpdateListener;)V
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    const/4 v0, -0x2

    invoke-virtual {p3, v0, p1}, Lcom/apportable/plusgames/PlusGamesManager$AchievementUpdateListener;->onError(ILjava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/games/GamesClient;->incrementAchievementImmediate(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public isAchievementsLoaded()Z
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvitationFromNotification()Z
    .locals 1

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mInvitationFromNotification:Z

    return v0
.end method

.method public isLoggedIn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 329
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    if-nez v1, :cond_0

    .line 330
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "mGamesClient = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    return v0

    .line 338
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v2}, Lcom/google/android/gms/games/GamesClient;->getCurrentPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->playerID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public leaveConnectedRoom()V
    .locals 2

    .prologue
    .line 963
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "leaveConnectedRoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/games/GamesClient;->leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 968
    :cond_0
    return-void
.end method

.method public leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 971
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaveRoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-ne v0, p1, :cond_0

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/games/GamesClient;->leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method public notificationForInvite(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 263
    if-nez p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.app_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "icon"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 273
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 275
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invites you to play "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 277
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 279
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 281
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 282
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    const-string v1, "notification"

    .line 283
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 284
    iget v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mNotificationId:I

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 286
    iput v7, p0, Lcom/apportable/plusgames/PlusGamesManager;->mNotificationId:I

    goto :goto_0
.end method

.method public onAchievementUpdated(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 539
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achievement updated STATUS CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " argument 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method

.method public onAchievementsLoaded(ILcom/google/android/gms/games/achievement/AchievementBuffer;)V
    .locals 12

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v6, 0x1

    .line 547
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAchievementsLoaded:status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " achievements.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz p1, :cond_0

    .line 549
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load achievements. Status code returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 553
    :cond_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 555
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 557
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 558
    invoke-virtual {p2, v0}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v9

    .line 560
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got achievement name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got achievement id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got achievement state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 564
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got current steps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got total steps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementMaxes:Ljava/util/HashMap;

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementCurrents:Ljava/util/HashMap;

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v1

    int-to-double v2, v1

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v2, v10

    mul-double/2addr v2, v4

    .line 572
    :goto_2
    const-string v1, "achievementID"

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string v1, "name"

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string v1, "progress"

    invoke-virtual {v8, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 577
    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 578
    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v1

    .line 581
    :goto_3
    const-string v2, "totalSteps"

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 582
    const-string v1, "description"

    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 555
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 570
    :cond_1
    invoke-interface {v9}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    move-wide v2, v4

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 587
    :cond_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_4

    .line 590
    iget v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v1, v0}, Lcom/apportable/plusgames/PlusGamesManager;->nativeUserAchievementsReceivedCallback(ILjava/lang/String;)V

    .line 595
    :goto_5
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 593
    :cond_4
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "Could not send achievements JSON to client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 584
    :catch_0
    move-exception v1

    goto :goto_4

    :cond_5
    move v1, v6

    goto :goto_3
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 294
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "PlusGames services connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/GamesClient;->registerInvitationListener(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    .line 298
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v1}, Lcom/google/android/gms/games/GamesClient;->getCurrentPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnConnected(ILjava/lang/String;)V

    .line 300
    if-eqz p1, :cond_0

    .line 301
    const-string v0, "invitation"

    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 304
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionHint: inv:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mIncomingInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mInvitationFromNotification:Z

    .line 314
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mIncomingInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apportable/plusgames/PlusGamesManager;->acceptInviteToRoom(Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 820
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedToRoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 218
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "PlusGames services connection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    .line 220
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :try_start_0
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "Error has resolution"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x539

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "Unable to recover from a connection failure."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_1
    iget v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v1, v0}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnConnectionFailed(II)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "Error is user recoverable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 232
    :cond_1
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "Unable to recover from a connection failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "PlusGames services disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnDisconnected(I)V

    .line 325
    return-void
.end method

.method public onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 826
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectedFromRoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 828
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnDisconnectedFromRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 829
    return-void
.end method

.method public onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 1

    .prologue
    .line 246
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mIncomingInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 248
    invoke-static {}, Lcom/apportable/Lifecycle;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/apportable/plusgames/PlusGamesManager;->notificationForInvite(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mShouldShowInvitationInbox:Z

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnInvitationReceived(ILcom/google/android/gms/games/multiplayer/Invitation;)V

    goto :goto_0
.end method

.method public onInvitationRemoved(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 797
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoinedRoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {p0, p2}, Lcom/apportable/plusgames/PlusGamesManager;->showWaitingRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 801
    return-void
.end method

.method public onLeaderboardMetadataLoaded(ILcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)V
    .locals 6

    .prologue
    .line 478
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeaderboardMetadataLoaded:status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " buffer.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 481
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 482
    invoke-virtual {p2, v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    .line 483
    sget-object v3, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loaded leaderboard \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" with id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 486
    const-string v4, "leaderboardID"

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    const-string v4, "name"

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string v4, "imageURI"

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v4, "scoreOrder"

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    sget-object v3, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Leaderboard JSON oops: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 496
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_1

    .line 498
    iget v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v1, v0}, Lcom/apportable/plusgames/PlusGamesManager;->nativeLeaderboardsReceivedCallback(ILjava/lang/String;)V

    .line 502
    :goto_2
    return-void

    .line 500
    :cond_1
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "Could not send achievements JSON to client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 806
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeftRoom, code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnLeftRoom(IILjava/lang/String;)V

    .line 808
    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 855
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onP2PConnected ! participantId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 860
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onP2PDisconnected ! participantId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return-void
.end method

.method public onPeerDeclined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onPeerDeclined ! arg0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method public onPeerInvitedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 870
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onPeerInvitedToRoom ! arg0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void
.end method

.method public onPeerJoined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onPeerJoined ! arg0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnPeerJoined(ILcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    .line 878
    return-void
.end method

.method public onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 849
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onPeerLeft ! arg0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnPeerLeft(ILcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    .line 851
    return-void
.end method

.method public onPeersConnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onPeersConnected ! arg0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnPeersConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    .line 837
    return-void
.end method

.method public onPeersDisconnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onPeersDisconnected ! arg0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnPeersDisconnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    .line 844
    return-void
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 3

    .prologue
    .line 885
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getSenderParticipantId()Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getMessageData()[B

    move-result-object v1

    .line 888
    iget v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v2, v0, v1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeOnRealTimeMessageReceived(ILjava/lang/String;[B)V

    .line 889
    return-void
.end method

.method public onRealTimeMessageSent(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 894
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onRealTimeMessageSent status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tokenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recipientParticipantId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return-void
.end method

.method public onRoomAutoMatching(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 899
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomAutoMatching("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void
.end method

.method public onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 5

    .prologue
    .line 747
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomConnected, code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-eqz p1, :cond_0

    .line 751
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: onRoomConnected, statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeRoomConnectedCallback(IILjava/lang/String;)V

    .line 776
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mRoomId:Ljava/lang/String;

    .line 759
    iput-object p2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 762
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mParticipants:Ljava/util/ArrayList;

    .line 765
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->getCurrentPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mMyId:Ljava/lang/String;

    .line 767
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Room ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Participants, count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 770
    sget-object v2, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 772
    :cond_1
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mMyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "MATCH READY!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mRoomId:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeRoomConnectedCallback(IILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onRoomConnecting(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 904
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomConnecting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method public onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 812
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomCreated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0, p2}, Lcom/apportable/plusgames/PlusGamesManager;->showWaitingRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 816
    return-void
.end method

.method public onScoreSubmitted(ILcom/google/android/gms/games/leaderboard/SubmitScoreResult;)V
    .locals 3

    .prologue
    .line 599
    if-eqz p1, :cond_0

    .line 600
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not report score for leaderboard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->getLeaderboardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    return-void
.end method

.method public pullAchievements()V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "User must be logged in to PlusGames"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/games/GamesClient;->loadAchievements(Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;Z)V

    goto :goto_0
.end method

.method public pullLeaderboardMetadata()V
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "User must be logged in to PlusGames"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/games/GamesClient;->loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Z)V

    goto :goto_0
.end method

.method public pullScores(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "User is not logged in to PlusGames. Cannot pull scores."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    new-instance v1, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;

    invoke-direct {v1, p0, p1}, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;-><init>(Lcom/apportable/plusgames/PlusGamesManager;Ljava/lang/String;)V

    const/16 v5, 0x19

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/GamesClient;->loadPlayerCenteredScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public pullUserScore(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "User is not logged in to PlusGames. Cannot pull user score."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    new-instance v1, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;

    invoke-direct {v1, p0, p1}, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;-><init>(Lcom/apportable/plusgames/PlusGamesManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/games/GamesClient;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/games/leaderboard/OnPlayerLeaderboardScoreLoadedListener;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public reconnect()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/apportable/plusgames/PlusGamesManager$1;

    invoke-direct {v1, p0}, Lcom/apportable/plusgames/PlusGamesManager$1;-><init>(Lcom/apportable/plusgames/PlusGamesManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method sanityCheckSelectPlayersResponse(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 658
    if-nez p1, :cond_0

    .line 659
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "*** select-players UI gave us null data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_0
    return v0

    .line 662
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 663
    if-nez v1, :cond_1

    .line 664
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "*** select-players UI gave us no extras"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :cond_1
    const-string v1, "players"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 668
    if-nez v1, :cond_2

    .line 669
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "*** select-players UI gave us no invitee list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    :cond_2
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List of invitees ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invitees)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 674
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectPlayers(II)V
    .locals 3

    .prologue
    .line 608
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPlayers:min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GamesClient;->getSelectPlayersIntent(II)Landroid/content/Intent;

    move-result-object v0

    .line 611
    if-nez v0, :cond_0

    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "selectPlayersIntent intent is NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/games/GamesClient;->leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 615
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mConnectedRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 618
    :cond_1
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    .line 619
    const/16 v2, 0x53c

    invoke-virtual {v1, v0, v2}, Lcom/apportable/activity/VerdeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public selectPlayersResult(ILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 680
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPlayersResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 683
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** select players UI cancelled, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeSelectPlayersFailed(II)V

    .line 724
    :goto_0
    return-void

    .line 688
    :cond_0
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "Select-players UI succeeded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p0, p2}, Lcom/apportable/plusgames/PlusGamesManager;->sanityCheckSelectPlayersResponse(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "*** select-players sanity check failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    :cond_1
    const-string v0, "players"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 700
    const-string v0, "min_automatch_players"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 701
    const-string v2, "max_automatch_players"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 702
    sget-object v3, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "automatch players: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-gtz v0, :cond_2

    if-lez v2, :cond_5

    .line 704
    :cond_2
    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v0

    .line 712
    :goto_1
    sget-object v2, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v3, "Creating match..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v2

    .line 714
    if-eqz v1, :cond_3

    .line 715
    invoke-virtual {v2, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 717
    :cond_3
    invoke-virtual {v2, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 718
    invoke-virtual {v2, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 719
    if-eqz v0, :cond_4

    .line 720
    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 722
    :cond_4
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/GamesClient;->createRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    .line 723
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "Match created, waiting for it to be ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public sendData([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/apportable/plusgames/PlusGamesManager;->sendData([BLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public sendData([BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 1000
    if-nez p4, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p0, p1, p3, p2}, Lcom/google/android/gms/games/GamesClient;->sendReliableRealTimeMessage(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1005
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1006
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "sendUnreliableRealTimeMessage:STATUS_REAL_TIME_MESSAGE_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x0

    .line 1009
    :goto_1
    return v0

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/games/GamesClient;->sendUnreliableRealTimeMessage([BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1009
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public showAchievements()V
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v1}, Lcom/google/android/gms/games/GamesClient;->getAchievementsIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x53a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showInvitationInbox()V
    .locals 3

    .prologue
    .line 628
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "showInvitationInbox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mShouldShowInvitationInbox:Z

    .line 630
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->getInvitationInboxIntent()Landroid/content/Intent;

    move-result-object v0

    .line 631
    if-nez v0, :cond_0

    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "showInvitationInboxIntent intent is NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    .line 634
    const/16 v2, 0x53e

    invoke-virtual {v1, v0, v2}, Lcom/apportable/activity/VerdeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showLeaderboard(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "User must b elogged in to view leaderboards"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    return-void

    .line 457
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->getAllLeaderboardsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 462
    :goto_1
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x53b

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/GamesClient;->getLeaderboardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method showWaitingRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .prologue
    .line 779
    if-nez p1, :cond_0

    .line 780
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "waiting room UI is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeWaitingRoomResult(II)V

    .line 793
    :goto_0
    return-void

    .line 785
    :cond_0
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting room getParticipants:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 789
    sget-object v1, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v2, "Launching waiting room UI."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/games/GamesClient;->getRealTimeWaitingRoomIntent(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object v0

    .line 791
    if-nez v0, :cond_1

    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "*** Waiting room intent is NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x53d

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "PlusGames services signOut called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/apportable/plusgames/PlusGamesManager$3;

    invoke-direct {v1, p0}, Lcom/apportable/plusgames/PlusGamesManager$3;-><init>(Lcom/apportable/plusgames/PlusGamesManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    :cond_0
    return-void
.end method

.method public submitLeaderboardScore(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "User is not logged in to PlusGames. Cannot submit score."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/games/GamesClient;->submitScore(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public unlockAchievement(Ljava/lang/String;Lcom/apportable/plusgames/PlusGamesManager$AchievementUpdateListener;)V
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const/4 v0, -0x2

    invoke-virtual {p2, v0, p1}, Lcom/apportable/plusgames/PlusGamesManager$AchievementUpdateListener;->onError(ILjava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/games/GamesClient;->unlockAchievementImmediate(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAchievement(Ljava/lang/String;D)V
    .locals 6

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 383
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    const-string v1, "User is not logged in to PlusGames"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementCurrents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 391
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementMaxes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 396
    div-double v2, p2, v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 398
    if-le v0, v1, :cond_2

    .line 399
    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    sub-int v1, v0, v1

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/games/GamesClient;->incrementAchievement(Ljava/lang/String;I)V

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager;->mAchievementCurrents:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    cmpl-double v0, p2, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achievement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not initialized as an incremental achievement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    const-string v0, ""

    .line 369
    :goto_0
    return-object v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->getCurrentPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    if-nez v0, :cond_1

    .line 367
    const-string v0, ""

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->getCurrentPlayerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public userName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/apportable/plusgames/PlusGamesManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const-string v0, ""

    .line 359
    :goto_0
    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->getCurrentPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    if-nez v0, :cond_1

    .line 357
    const-string v0, ""

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->getCurrentPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public waitingRoomResult(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 729
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitingRoomResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 732
    sget-object v0, Lcom/apportable/plusgames/PlusGamesManager;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** waitingRoomResult UI cancelled, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget v0, p0, Lcom/apportable/plusgames/PlusGamesManager;->mObject:I

    invoke-direct {p0, v0, p1}, Lcom/apportable/plusgames/PlusGamesManager;->nativeWaitingRoomResult(II)V

    .line 740
    :goto_0
    return-void

    .line 736
    :cond_0
    const-string v0, "room"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    goto :goto_0
.end method
