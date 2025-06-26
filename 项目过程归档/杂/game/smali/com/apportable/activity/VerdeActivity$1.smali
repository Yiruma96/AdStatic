.class Lcom/apportable/activity/VerdeActivity$1;
.super Landroid/widget/FrameLayout;
.source "VerdeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$1;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 134
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 135
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$1;->this$0:Lcom/apportable/activity/VerdeActivity;

    # getter for: Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$000(Lcom/apportable/activity/VerdeActivity;)Lcom/apportable/activity/BackgroundLibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$1;->this$0:Lcom/apportable/activity/VerdeActivity;

    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeRootGeometryChanged()V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$100(Lcom/apportable/activity/VerdeActivity;)V

    .line 138
    :cond_0
    return-void
.end method
