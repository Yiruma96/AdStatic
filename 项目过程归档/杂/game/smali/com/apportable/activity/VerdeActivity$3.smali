.class Lcom/apportable/activity/VerdeActivity$3;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Lcom/apportable/activity/ExpansionFileDownloader$Callback;


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
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    # getter for: Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/apportable/activity/VerdeActivity;->access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    # getter for: Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$000(Lcom/apportable/activity/VerdeActivity;)Lcom/apportable/activity/BackgroundLibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    new-instance v2, Lcom/apportable/activity/VerdeActivity$3$1;

    invoke-direct {v2, p0}, Lcom/apportable/activity/VerdeActivity$3$1;-><init>(Lcom/apportable/activity/VerdeActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/apportable/activity/BackgroundLibraryLoader;->load(Landroid/app/Activity;Lcom/apportable/activity/BackgroundLibraryLoader$Callback;)V

    .line 225
    return-void
.end method
