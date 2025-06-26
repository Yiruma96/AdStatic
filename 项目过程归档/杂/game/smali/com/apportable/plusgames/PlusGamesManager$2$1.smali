.class Lcom/apportable/plusgames/PlusGamesManager$2$1;
.super Ljava/lang/Object;
.source "PlusGamesManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/plusgames/PlusGamesManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/plusgames/PlusGamesManager$2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apportable/plusgames/PlusGamesManager$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesManager$2$1;->this$1:Lcom/apportable/plusgames/PlusGamesManager$2;

    iput-object p2, p0, Lcom/apportable/plusgames/PlusGamesManager$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2$1;->this$1:Lcom/apportable/plusgames/PlusGamesManager$2;

    iget-object v1, v0, Lcom/apportable/plusgames/PlusGamesManager$2;->val$activity:Lcom/apportable/activity/VerdeActivity;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2$1;->this$1:Lcom/apportable/plusgames/PlusGamesManager$2;

    iget-object v0, v0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    # getter for: Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;
    invoke-static {v0}, Lcom/apportable/plusgames/PlusGamesManager;->access$000(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->connect()V

    .line 165
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 166
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2$1;->this$1:Lcom/apportable/plusgames/PlusGamesManager$2;

    iget-object v0, v0, Lcom/apportable/plusgames/PlusGamesManager$2;->val$finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2$1;->this$1:Lcom/apportable/plusgames/PlusGamesManager$2;

    iget-object v0, v0, Lcom/apportable/plusgames/PlusGamesManager$2;->val$activity:Lcom/apportable/activity/VerdeActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
