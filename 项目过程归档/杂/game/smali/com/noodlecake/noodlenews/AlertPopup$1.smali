.class final Lcom/noodlecake/noodlenews/AlertPopup$1;
.super Ljava/lang/Object;
.source "AlertPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noodlecake/noodlenews/AlertPopup;->popUpAlert(Lcom/noodlecake/noodlenews/PopupTransaction;)V
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
    .line 30
    iput-object p1, p0, Lcom/noodlecake/noodlenews/AlertPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/noodlecake/noodlenews/AlertPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 35
    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/noodlecake/noodlenews/AlertPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 36
    invoke-virtual {v1}, Lcom/noodlecake/noodlenews/PopupTransaction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/noodlecake/noodlenews/AlertPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 37
    invoke-virtual {v1}, Lcom/noodlecake/noodlenews/PopupTransaction;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/noodlecake/noodlenews/AlertPopup$1$1;

    invoke-direct {v2, p0}, Lcom/noodlecake/noodlenews/AlertPopup$1$1;-><init>(Lcom/noodlecake/noodlenews/AlertPopup$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 52
    :cond_0
    return-void
.end method
