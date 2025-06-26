.class Lcom/apportable/plusgames/PlusGamesManager$2;
.super Ljava/lang/Object;
.source "PlusGamesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/plusgames/PlusGamesManager;->connect(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/plusgames/PlusGamesManager;

.field final synthetic val$activity:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$popupView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apportable/plusgames/PlusGamesManager;Landroid/view/View;Lcom/apportable/activity/VerdeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    iput-object p2, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->val$popupView:Landroid/view/View;

    iput-object p3, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->val$activity:Lcom/apportable/activity/VerdeActivity;

    iput-object p4, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->val$finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    # getter for: Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;
    invoke-static {v0}, Lcom/apportable/plusgames/PlusGamesManager;->access$000(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    # getter for: Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;
    invoke-static {v0}, Lcom/apportable/plusgames/PlusGamesManager;->access$000(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->disconnect()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    new-instance v1, Lcom/google/android/gms/games/GamesClient$Builder;

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    # getter for: Lcom/apportable/plusgames/PlusGamesManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/apportable/plusgames/PlusGamesManager;->access$200(Lcom/apportable/plusgames/PlusGamesManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    iget-object v4, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/games/GamesClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    # setter for: Lcom/apportable/plusgames/PlusGamesManager;->mBuilder:Lcom/google/android/gms/games/GamesClient$Builder;
    invoke-static {v0, v1}, Lcom/apportable/plusgames/PlusGamesManager;->access$102(Lcom/apportable/plusgames/PlusGamesManager;Lcom/google/android/gms/games/GamesClient$Builder;)Lcom/google/android/gms/games/GamesClient$Builder;

    .line 157
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    # getter for: Lcom/apportable/plusgames/PlusGamesManager;->mBuilder:Lcom/google/android/gms/games/GamesClient$Builder;
    invoke-static {v0}, Lcom/apportable/plusgames/PlusGamesManager;->access$100(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->val$popupView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/GamesClient$Builder;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/games/GamesClient$Builder;

    .line 158
    iget-object v0, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->val$activity:Lcom/apportable/activity/VerdeActivity;

    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->primaryContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    iget-object v2, p0, Lcom/apportable/plusgames/PlusGamesManager$2;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    # getter for: Lcom/apportable/plusgames/PlusGamesManager;->mBuilder:Lcom/google/android/gms/games/GamesClient$Builder;
    invoke-static {v2}, Lcom/apportable/plusgames/PlusGamesManager;->access$100(Lcom/apportable/plusgames/PlusGamesManager;)Lcom/google/android/gms/games/GamesClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/GamesClient$Builder;->create()Lcom/google/android/gms/games/GamesClient;

    move-result-object v2

    # setter for: Lcom/apportable/plusgames/PlusGamesManager;->mGamesClient:Lcom/google/android/gms/games/GamesClient;
    invoke-static {v1, v2}, Lcom/apportable/plusgames/PlusGamesManager;->access$002(Lcom/apportable/plusgames/PlusGamesManager;Lcom/google/android/gms/games/GamesClient;)Lcom/google/android/gms/games/GamesClient;

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/apportable/plusgames/PlusGamesManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/apportable/plusgames/PlusGamesManager$2$1;-><init>(Lcom/apportable/plusgames/PlusGamesManager$2;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 171
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->primaryContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 172
    return-void
.end method
