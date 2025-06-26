.class Lcom/apportable/activity/VerdeActivity$9;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityStop(Lcom/apportable/activity/VerdeActivity;)V

    .line 382
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    # getter for: Lcom/apportable/activity/VerdeActivity;->mPaused:Z
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$700(Lcom/apportable/activity/VerdeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    const/4 v1, 0x1

    # setter for: Lcom/apportable/activity/VerdeActivity;->mPaused:Z
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity;->access$702(Lcom/apportable/activity/VerdeActivity;Z)Z

    .line 384
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    # getter for: Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 386
    :cond_0
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnStop()V
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$1100()V

    .line 387
    return-void
.end method
