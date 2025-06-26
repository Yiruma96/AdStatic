.class Lcom/apportable/plusgames/PlusGamesManager$3;
.super Ljava/lang/Object;
.source "PlusGamesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/plusgames/PlusGamesManager;->signOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/plusgames/PlusGamesManager;


# direct methods
.method constructor <init>(Lcom/apportable/plusgames/PlusGamesManager;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesManager$3;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$3;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    # getter for: Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;
    invoke-static {v0}, Lcom/apportable/plusgames/PlusGamesManager;->access$000(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->signOut()V

    .line 190
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$3;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    const/4 v1, 0x0

    # setter for: Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;
    invoke-static {v0, v1}, Lcom/apportable/plusgames/PlusGamesManager;->access$002(Lcom/apportable/plusgames/PlusGamesManager;Lcom/google/android/gms/games/GamesClient;)Lcom/google/android/gms/games/GamesClient;

    .line 191
    return-void
.end method
