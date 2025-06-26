.class Lcom/apportable/plusgames/PlusGamesManager$1;
.super Ljava/lang/Object;
.source "PlusGamesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/plusgames/PlusGamesManager;->reconnect()V
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
    .line 133
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesManager$1;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$1;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    # getter for: Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;
    invoke-static {v0}, Lcom/apportable/plusgames/PlusGamesManager;->access$000(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->reconnect()V

    .line 137
    return-void
.end method
