.class public Lcom/noodlecake/noodlenews/ImagePopup;
.super Ljava/lang/Object;
.source "ImagePopup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static popUpImage(Lcom/noodlecake/noodlenews/PopupTransaction;)V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lcom/noodlecake/noodlenews/ImagePopup$1;

    invoke-direct {v1, p0}, Lcom/noodlecake/noodlenews/ImagePopup$1;-><init>(Lcom/noodlecake/noodlenews/PopupTransaction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_0
    return-void
.end method
