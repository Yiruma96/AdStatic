.class public Lcom/apportable/ui/TextField$TextFieldLayer;
.super Landroid/widget/EditText;
.source "TextField.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFieldLayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;,
        Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;
    }
.end annotation


# instance fields
.field private mField:Lcom/apportable/ui/TextField;

.field private mFilters:[Landroid/text/InputFilter;

.field private mHasFirstResponder:Z

.field private mTextChanging:Z

.field final synthetic this$0:Lcom/apportable/ui/TextField;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/TextField;Landroid/content/Context;Lcom/apportable/ui/TextField;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    .line 112
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    .line 75
    iput-boolean v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    .line 113
    iput-object p3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    .line 114
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->setPadding(IIII)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusable(Z)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->setCursorVisible(Z)V

    .line 119
    const v0, 0x80091

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setInputType(I)V

    .line 120
    new-array v0, v1, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mFilters:[Landroid/text/InputFilter;

    .line 121
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mFilters:[Landroid/text/InputFilter;

    new-instance v1, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;

    invoke-direct {v1, p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;-><init>(Lcom/apportable/ui/TextField$TextFieldLayer;Lcom/apportable/ui/TextField$TextFieldLayer;)V

    aput-object v1, v0, v2

    .line 122
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mFilters:[Landroid/text/InputFilter;

    invoke-interface {v0, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 123
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 124
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 125
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    const v0, 0x12000006

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setImeOptions(I)V

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 132
    new-instance v0, Lcom/apportable/ui/TextField$TextFieldLayer$1;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer$1;-><init>(Lcom/apportable/ui/TextField$TextFieldLayer;Lcom/apportable/ui/TextField;)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 162
    :cond_0
    iput-boolean v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/TextField$TextFieldLayer;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    return v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/apportable/ui/TextField$TextFieldLayer;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->sendBackspace()V

    return-void
.end method

.method private checkReturnEnd(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v3}, Lcom/apportable/ui/TextField;->object()I

    move-result v3

    # invokes: Lcom/apportable/ui/TextField;->shouldReturn(I)Z
    invoke-static {v0, v3}, Lcom/apportable/ui/TextField;->access$700(Lcom/apportable/ui/TextField;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v3}, Lcom/apportable/ui/TextField;->object()I

    move-result v3

    # invokes: Lcom/apportable/ui/TextField;->shouldEndEditing(I)Z
    invoke-static {v0, v3}, Lcom/apportable/ui/TextField;->access$800(Lcom/apportable/ui/TextField;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 193
    :goto_0
    if-eqz v0, :cond_0

    .line 194
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # setter for: Lcom/apportable/ui/TextField;->mExitedOnReturn:Z
    invoke-static {v3, v1}, Lcom/apportable/ui/TextField;->access$902(Lcom/apportable/ui/TextField;Z)Z

    .line 195
    invoke-virtual {p0, p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->onFocusChange(Landroid/view/View;Z)V

    .line 197
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 192
    goto :goto_0
.end method

.method private sendBackspace()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 363
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 365
    if-lez v2, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionStart()I

    move-result v0

    .line 367
    if-eqz v0, :cond_1

    .line 368
    if-ne v0, v3, :cond_0

    .line 369
    add-int/lit8 v0, v2, -0x1

    .line 371
    :cond_0
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget-object v4, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v4}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v4

    iget-object v4, v4, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v4}, Lcom/apportable/ui/TextField;->object()I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    const-string v6, ""

    # invokes: Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z
    invoke-static {v3, v4, v5, v8, v6}, Lcom/apportable/ui/TextField;->access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget-object v4, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v4}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v4

    iget-object v4, v4, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v4}, Lcom/apportable/ui/TextField;->object()I

    move-result v4

    # invokes: Lcom/apportable/ui/TextField;->textWillChange(I)V
    invoke-static {v3, v4}, Lcom/apportable/ui/TextField;->access$300(Lcom/apportable/ui/TextField;I)V

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v8}, Lcom/apportable/ui/TextField$TextFieldLayer;->setText(Ljava/lang/String;Z)V

    .line 374
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setSelection(I)V

    .line 375
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    move-result v1

    # invokes: Lcom/apportable/ui/TextField;->textDidChange(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$600(Lcom/apportable/ui/TextField;I)V

    .line 383
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    move-result v1

    const-string v2, ""

    # invokes: Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z
    invoke-static {v0, v1, v7, v3, v2}, Lcom/apportable/ui/TextField;->access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    move-result v1

    # invokes: Lcom/apportable/ui/TextField;->textDidChange(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$600(Lcom/apportable/ui/TextField;I)V

    .line 169
    :cond_0
    return-void
.end method

.method public declared-synchronized becomeFirstResponder()V
    .locals 3

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->requestFocus()Z

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    .line 262
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 263
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 265
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    move-result v1

    # invokes: Lcom/apportable/ui/TextField;->didBeginEditing(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$1200(Lcom/apportable/ui/TextField;I)V

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setCursorVisible(Z)V

    .line 267
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    const/4 v1, 0x0

    # setter for: Lcom/apportable/ui/TextField;->mExitedOnReturn:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$902(Lcom/apportable/ui/TextField;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_0
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    move-result v1

    # invokes: Lcom/apportable/ui/TextField;->textWillChange(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$300(Lcom/apportable/ui/TextField;I)V

    .line 175
    :cond_0
    return-void
.end method

.method public isFirstResponder()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;-><init>(Lcom/apportable/ui/TextField$TextFieldLayer;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->checkReturnEnd(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return v0

    .line 208
    :cond_0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/apportable/activity/VerdeActivity;->onSoftKeyboardChanged(II)V

    :cond_1
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 289
    if-eqz p2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->becomeFirstResponder()V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->resignFirstResponder()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 230
    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 231
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->checkReturnEnd(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 231
    goto :goto_0

    .line 232
    :cond_1
    const/16 v2, 0x43

    if-ne p2, v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->sendBackspace()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 217
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 218
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    move-result v2

    # invokes: Lcom/apportable/ui/TextField;->shouldEndEditing(I)Z
    invoke-static {v1, v2}, Lcom/apportable/ui/TextField;->access$800(Lcom/apportable/ui/TextField;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0, p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->onFocusChange(Landroid/view/View;Z)V

    .line 220
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 223
    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->setNeedsDisplay()V

    .line 189
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    move-result v2

    # invokes: Lcom/apportable/ui/TextField;->shouldBeginEditing(I)Z
    invoke-static {v1, v2}, Lcom/apportable/ui/TextField;->access$1000(Lcom/apportable/ui/TextField;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusable(Z)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusableInTouchMode(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->requestFocus()Z

    .line 247
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized resignFirstResponder()V
    .locals 4

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    .line 274
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 275
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusable(Z)V

    .line 277
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setCursorVisible(Z)V

    .line 278
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    move-result v2

    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mExitedOnReturn:Z
    invoke-static {v3}, Lcom/apportable/ui/TextField;->access$900(Lcom/apportable/ui/TextField;)Z

    move-result v3

    # invokes: Lcom/apportable/ui/TextField;->didEndEditing(IZ)V
    invoke-static {v1, v2, v3}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;IZ)V

    .line 279
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 280
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->clearFocus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_0
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 318
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    .line 319
    invoke-virtual {p0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setSelection(I)V

    .line 321
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mFilters:[Landroid/text/InputFilter;

    invoke-interface {v0, v2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 322
    iput-boolean v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    .line 323
    return-void

    .line 308
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v1

    .line 310
    :goto_1
    if-ge v0, v3, :cond_2

    .line 311
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    .line 315
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
