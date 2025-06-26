.class Lcom/apportable/activity/ManageSpaceActivity$1;
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
    .line 31
    iput-object p1, p0, Lcom/apportable/activity/ManageSpaceActivity$1;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity$1;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    invoke-virtual {v0}, Lcom/apportable/activity/ManageSpaceActivity;->finish()V

    .line 36
    return-void
.end method
