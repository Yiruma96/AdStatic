.class final Lcom/apportable/Lifecycle$3;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/Lifecycle;->expectGainFocus(Lcom/apportable/activity/VerdeActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$localActivity:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/apportable/Lifecycle$3;->val$localActivity:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 421
    # getter for: Lcom/apportable/Lifecycle;->sWindowHasFocus:Z
    invoke-static {}, Lcom/apportable/Lifecycle;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z
    invoke-static {}, Lcom/apportable/Lifecycle;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    # getter for: Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/Lifecycle;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOCUSING BECAUSE WE DIDN\'T GET A FOCUS EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/apportable/Lifecycle$3;->val$localActivity:Lcom/apportable/activity/VerdeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apportable/Lifecycle;->onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V

    .line 424
    const/4 v0, 0x0

    # setter for: Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z
    invoke-static {v0}, Lcom/apportable/Lifecycle;->access$202(Z)Z

    .line 426
    :cond_0
    return-void
.end method
