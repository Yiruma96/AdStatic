.class Lcom/apportable/activity/ManageSpaceActivity$2;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/ManageSpaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/ManageSpaceActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/ManageSpaceActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    invoke-virtual {v1}, Lcom/apportable/activity/ManageSpaceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    iget-object v1, v1, Lcom/apportable/activity/ManageSpaceActivity;->_ignoreList:Ljava/util/HashSet;

    new-instance v2, Ljava/io/File;

    const-string v3, "lib"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    iget-object v1, v1, Lcom/apportable/activity/ManageSpaceActivity;->_ignoreList:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    const-string v3, "external_patch"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/apportable/activity/ManageSpaceActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    const/4 v2, 0x1

    # invokes: Lcom/apportable/activity/ManageSpaceActivity;->rm(ZLjava/io/File;)V
    invoke-static {v1, v2, v0}, Lcom/apportable/activity/ManageSpaceActivity;->access$000(Lcom/apportable/activity/ManageSpaceActivity;ZLjava/io/File;)V

    .line 47
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    iget-object v0, v0, Lcom/apportable/activity/ManageSpaceActivity;->_couldNotDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    iget-object v1, v1, Lcom/apportable/activity/ManageSpaceActivity;->_couldNotDelete:Ljava/util/ArrayList;

    # invokes: Lcom/apportable/activity/ManageSpaceActivity;->showBadFiles(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/apportable/activity/ManageSpaceActivity;->access$100(Lcom/apportable/activity/ManageSpaceActivity;Ljava/util/ArrayList;)V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    invoke-virtual {v0}, Lcom/apportable/activity/ManageSpaceActivity;->finish()V

    goto :goto_0
.end method
