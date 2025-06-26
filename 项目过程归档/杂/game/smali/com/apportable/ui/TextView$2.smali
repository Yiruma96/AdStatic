.class Lcom/apportable/ui/TextView$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/TextView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/TextView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextView;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    # getter for: Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z
    invoke-static {v0}, Lcom/apportable/ui/TextView;->access$600(Lcom/apportable/ui/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    iget-object v1, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    # getter for: Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;
    invoke-static {v1}, Lcom/apportable/ui/TextView;->access$800(Lcom/apportable/ui/TextView;)Lcom/apportable/ui/TextView$EditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/apportable/ui/TextView;->access$702(Lcom/apportable/ui/TextView;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    iget-object v1, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    iget-object v2, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    # getter for: Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;
    invoke-static {v2}, Lcom/apportable/ui/TextView;->access$700(Lcom/apportable/ui/TextView;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/apportable/ui/TextView;->textDidChange(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/TextView;->access$400(Lcom/apportable/ui/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    .line 266
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    # getter for: Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z
    invoke-static {v0}, Lcom/apportable/ui/TextView;->access$600(Lcom/apportable/ui/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    iget-object v1, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    # invokes: Lcom/apportable/ui/TextView;->textWillChange(ILjava/lang/String;III)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/ui/TextView;->access$900(Lcom/apportable/ui/TextView;ILjava/lang/String;III)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    # getter for: Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z
    invoke-static {v0}, Lcom/apportable/ui/TextView;->access$600(Lcom/apportable/ui/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :cond_0
    return-void
.end method
