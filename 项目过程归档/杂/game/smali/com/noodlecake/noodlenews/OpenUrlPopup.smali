.class public Lcom/noodlecake/noodlenews/OpenUrlPopup;
.super Ljava/lang/Object;
.source "OpenUrlPopup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openUrl(Lcom/noodlecake/noodlenews/PopupTransaction;)V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    new-instance v1, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;

    invoke-direct {v1, p0}, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;-><init>(Lcom/noodlecake/noodlenews/PopupTransaction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    return-void
.end method
