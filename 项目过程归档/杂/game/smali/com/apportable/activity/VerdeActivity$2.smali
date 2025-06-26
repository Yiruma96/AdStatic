.class Lcom/apportable/activity/VerdeActivity$2;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 154
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 157
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    .line 158
    invoke-virtual {v2}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-virtual {v3}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 157
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 159
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$2;->this$0:Lcom/apportable/activity/VerdeActivity;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/apportable/activity/VerdeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 160
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 162
    return-void
.end method
