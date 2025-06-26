.class Lcom/noodlecake/noodlenews/EmailPopup$1$3;
.super Ljava/lang/Object;
.source "EmailPopup.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noodlecake/noodlenews/EmailPopup$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noodlecake/noodlenews/EmailPopup$1;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$finalEmailField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/noodlecake/noodlenews/EmailPopup$1;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$3;->this$0:Lcom/noodlecake/noodlenews/EmailPopup$1;

    iput-object p2, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$3;->val$finalEmailField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 128
    # getter for: Lcom/noodlecake/noodlenews/EmailPopup;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/noodlecake/noodlenews/EmailPopup;->access$000()Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$3;->val$finalEmailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
