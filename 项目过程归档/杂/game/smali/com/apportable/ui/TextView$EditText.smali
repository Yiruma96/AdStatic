.class Lcom/apportable/ui/TextView$EditText;
.super Landroid/widget/EditText;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditText"
.end annotation


# instance fields
.field private mHasFirstResponder:Z

.field private mOwner:Lcom/apportable/ui/TextView;

.field final synthetic this$0:Lcom/apportable/ui/TextView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/TextView;Landroid/content/Context;Lcom/apportable/ui/TextView;)V
    .locals 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/apportable/ui/TextView$EditText;->this$0:Lcom/apportable/ui/TextView;

    .line 37
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    .line 38
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextView$EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Lcom/apportable/ui/TextView$EditText$1;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/TextView$EditText$1;-><init>(Lcom/apportable/ui/TextView$EditText;Lcom/apportable/ui/TextView;)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextView$EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 70
    :cond_0
    const v0, 0x12000006

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextView$EditText;->setImeOptions(I)V

    .line 71
    iput-object p3, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    .line 72
    return-void
.end method


# virtual methods
.method public becomeFirstResponder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    iget-boolean v0, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->requestFocus()Z

    .line 105
    iput-boolean v2, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    .line 106
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 107
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 108
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 109
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->this$0:Lcom/apportable/ui/TextView;

    # invokes: Lcom/apportable/ui/TextView;->didBeginEditing()V
    invoke-static {v0}, Lcom/apportable/ui/TextView;->access$500(Lcom/apportable/ui/TextView;)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/apportable/ui/TextView$EditText;->setCursorVisible(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public onEditorAction(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 93
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    iget-object v1, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    # invokes: Lcom/apportable/ui/TextView;->textShouldChange(ILjava/lang/String;II)Z
    invoke-static {v0, v1, v2, v4, v3}, Lcom/apportable/ui/TextView;->access$300(Lcom/apportable/ui/TextView;ILjava/lang/String;II)Z

    .line 96
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    iget-object v1, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/apportable/ui/TextView;->textDidChange(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/TextView;->access$400(Lcom/apportable/ui/TextView;ILjava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/apportable/activity/VerdeActivity;->onSoftKeyboardChanged(II)V

    .line 100
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->resignFirstResponder()V

    .line 129
    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->resignFirstResponder()V

    .line 78
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 86
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    iget-object v1, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    # invokes: Lcom/apportable/ui/TextView;->selectionChange(III)V
    invoke-static {v0, v1, p1, p2}, Lcom/apportable/ui/TextView;->access$200(Lcom/apportable/ui/TextView;III)V

    .line 88
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-boolean v0, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->requestFocus()Z

    .line 135
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->becomeFirstResponder()V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public resignFirstResponder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v2, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    .line 117
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    invoke-virtual {p0, v2}, Lcom/apportable/ui/TextView$EditText;->setCursorVisible(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 121
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->clearFocus()V

    .line 123
    :cond_0
    return-void
.end method
