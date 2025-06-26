.class final Lcom/noodlecake/noodlenews/OpenUrlPopup$1;
.super Ljava/lang/Object;
.source "OpenUrlPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noodlecake/noodlenews/OpenUrlPopup;->openUrl(Lcom/noodlecake/noodlenews/PopupTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;


# direct methods
.method constructor <init>(Lcom/noodlecake/noodlenews/PopupTransaction;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 36
    invoke-virtual {v2}, Lcom/noodlecake/noodlenews/PopupTransaction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 37
    invoke-virtual {v2}, Lcom/noodlecake/noodlenews/PopupTransaction;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 38
    invoke-virtual {v2}, Lcom/noodlecake/noodlenews/PopupTransaction;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;

    invoke-direct {v3, p0, v0}, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;-><init>(Lcom/noodlecake/noodlenews/OpenUrlPopup$1;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 52
    invoke-virtual {v1}, Lcom/noodlecake/noodlenews/PopupTransaction;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$1;

    invoke-direct {v2, p0}, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$1;-><init>(Lcom/noodlecake/noodlenews/OpenUrlPopup$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 68
    :cond_0
    return-void
.end method
