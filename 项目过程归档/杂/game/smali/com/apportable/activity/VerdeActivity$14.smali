.class Lcom/apportable/activity/VerdeActivity$14;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->setContentSize(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$h:F

.field final synthetic val$w:F


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;FF)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$14;->this$0:Lcom/apportable/activity/VerdeActivity;

    iput p2, p0, Lcom/apportable/activity/VerdeActivity$14;->val$w:F

    iput p3, p0, Lcom/apportable/activity/VerdeActivity$14;->val$h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 704
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/apportable/activity/VerdeActivity$14;->val$w:F

    float-to-int v1, v1

    iget v2, p0, Lcom/apportable/activity/VerdeActivity$14;->val$h:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/apportable/gl/GLSurfaceView;->setFixedSize(II)V

    .line 705
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$14;->this$0:Lcom/apportable/activity/VerdeActivity;

    iget v1, p0, Lcom/apportable/activity/VerdeActivity$14;->val$w:F

    float-to-int v1, v1

    # setter for: Lcom/apportable/activity/VerdeActivity;->mContentWidth:I
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity;->access$1602(Lcom/apportable/activity/VerdeActivity;I)I

    .line 706
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$14;->this$0:Lcom/apportable/activity/VerdeActivity;

    iget v1, p0, Lcom/apportable/activity/VerdeActivity$14;->val$h:F

    float-to-int v1, v1

    # setter for: Lcom/apportable/activity/VerdeActivity;->mContentHeight:I
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity;->access$1702(Lcom/apportable/activity/VerdeActivity;I)I

    .line 707
    return-void
.end method
