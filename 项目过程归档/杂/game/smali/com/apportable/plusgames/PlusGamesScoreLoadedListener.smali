.class public Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;
.super Ljava/lang/Object;
.source "PlusGamesScoreLoadedListener.java"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/OnPlayerLeaderboardScoreLoadedListener;
.implements Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mLeaderboardID:Ljava/lang/String;

.field private mPGManager:Lcom/apportable/plusgames/PlusGamesManager;

.field private mPlayerID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "PlusGamesManager"

    sput-object v0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apportable/plusgames/PlusGamesManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->mLeaderboardID:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->mPGManager:Lcom/apportable/plusgames/PlusGamesManager;

    .line 28
    return-void
.end method

.method private _scoreToJSONObject(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    const-string v1, "playerID"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "rank"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    const-string v1, "value"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    const-string v1, "formattedValue"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v1, "timestamp"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    return-object v0
.end method


# virtual methods
.method public onLeaderboardScoresLoaded(ILcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;)V
    .locals 6

    .prologue
    .line 64
    sget-object v0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeaderboardScoresLoaded:status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " buffer.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 67
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 68
    invoke-virtual {p3, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object v1

    .line 70
    :try_start_0
    invoke-direct {p0, v1}, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->_scoreToJSONObject(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lorg/json/JSONObject;

    move-result-object v1

    .line 71
    const-string v3, "leaderboardID"

    invoke-interface {p2}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    sget-object v3, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scores JSON oops: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->mPGManager:Lcom/apportable/plusgames/PlusGamesManager;

    invoke-virtual {v1, v0}, Lcom/apportable/plusgames/PlusGamesManager;->callbackListenerReceivedCallback(Ljava/lang/String;)V

    .line 84
    :goto_2
    return-void

    .line 82
    :cond_1
    sget-object v0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->TAG:Ljava/lang/String;

    const-string v1, "Could not send scores JSON to client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onPlayerLeaderboardScoreLoaded(ILcom/google/android/gms/games/leaderboard/LeaderboardScore;)V
    .locals 5

    .prologue
    .line 41
    sget-object v0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerLeaderboardScoreLoaded:status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez p2, :cond_0

    .line 61
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 48
    :try_start_0
    invoke-direct {p0, p2}, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->_scoreToJSONObject(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    const-string v2, "leaderboardID"

    iget-object v3, p0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->mLeaderboardID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->mPGManager:Lcom/apportable/plusgames/PlusGamesManager;

    invoke-virtual {v1, v0}, Lcom/apportable/plusgames/PlusGamesManager;->callbackListenerReceivedCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    sget-object v2, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Score JSON oops: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 59
    :cond_1
    sget-object v0, Lcom/apportable/plusgames/PlusGamesScoreLoadedListener;->TAG:Ljava/lang/String;

    const-string v1, "Could not send score JSON to client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
