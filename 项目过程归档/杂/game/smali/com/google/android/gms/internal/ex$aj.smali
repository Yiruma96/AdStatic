.class final Lcom/google/android/gms/internal/ex$aj;
.super Lcom/google/android/gms/internal/dk$c;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "aj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dk",
        "<",
        "Lcom/google/android/gms/internal/fc;",
        ">.c<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/leaderboard/h$b;",
        ">;>;",
        "Lcom/google/android/gms/games/leaderboard/h$b;"
    }
.end annotation


# instance fields
.field private final jP:Lcom/google/android/gms/common/api/Status;

.field final synthetic qW:Lcom/google/android/gms/internal/ex;

.field private final rn:Lcom/google/android/gms/games/leaderboard/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ex;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/h$b;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ex$aj;->qW:Lcom/google/android/gms/internal/ex;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dk$c;-><init>(Lcom/google/android/gms/internal/dk;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ex$aj;->jP:Lcom/google/android/gms/common/api/Status;

    new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/d;

    iput-object v0, p0, Lcom/google/android/gms/internal/ex$aj;->rn:Lcom/google/android/gms/games/leaderboard/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ex$aj;->rn:Lcom/google/android/gms/games/leaderboard/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V

    throw v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/h$b;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ex$aj;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public cR()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ex$aj;->rn:Lcom/google/android/gms/games/leaderboard/d;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ex$aj;->jP:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
