.class final Lcom/noodlecake/noodlenews/EmailPopup$1;
.super Ljava/lang/Object;
.source "EmailPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noodlecake/noodlenews/EmailPopup;->popUpEmailDialog(Lcom/noodlecake/noodlenews/PopupTransaction;)V
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
    .line 85
    iput-object p1, p0, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 89
    if-eqz v0, :cond_0

    .line 90
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 91
    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 93
    invoke-virtual {v2}, Lcom/noodlecake/noodlenews/PopupTransaction;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 94
    invoke-virtual {v2}, Lcom/noodlecake/noodlenews/PopupTransaction;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/noodlecake/noodlenews/EmailPopup$1$2;

    invoke-direct {v3, p0, v1}, Lcom/noodlecake/noodlenews/EmailPopup$1$2;-><init>(Lcom/noodlecake/noodlenews/EmailPopup$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 107
    invoke-virtual {v2}, Lcom/noodlecake/noodlenews/PopupTransaction;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/noodlecake/noodlenews/EmailPopup$1$1;

    invoke-direct {v3, p0}, Lcom/noodlecake/noodlenews/EmailPopup$1$1;-><init>(Lcom/noodlecake/noodlenews/EmailPopup$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 123
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    new-instance v2, Lcom/noodlecake/noodlenews/EmailPopup$1$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/noodlecake/noodlenews/EmailPopup$1$3;-><init>(Lcom/noodlecake/noodlenews/EmailPopup$1;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v0, p0, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getParameter4()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/noodlecake/noodlenews/EmailPopup;->getPrePopEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void
.end method

.method public sendEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/noodlecake/noodlenews/EmailPopup$1$4;

    invoke-direct {v0, p0, p1}, Lcom/noodlecake/noodlenews/EmailPopup$1$4;-><init>(Lcom/noodlecake/noodlenews/EmailPopup$1;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/EmailPopup$1$4;->start()V

    .line 175
    return-void
.end method
