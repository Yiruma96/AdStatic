.class Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField$TextFieldLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZanyInputConnection"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/TextField$TextFieldLayer;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/TextField$TextFieldLayer;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    .line 336
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 337
    return-void
.end method


# virtual methods
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 344
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 345
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 346
    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 347
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    # invokes: Lcom/apportable/ui/TextField$TextFieldLayer;->sendBackspace()V
    invoke-static {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$1400(Lcom/apportable/ui/TextField$TextFieldLayer;)V

    .line 358
    :cond_0
    :goto_0
    return v6

    .line 349
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    int-to-char v0, v0

    .line 350
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionStart()I

    move-result v1

    .line 351
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v2, v2, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v3, v3, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v3}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v3

    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v3}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apportable/ui/TextField;->object()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z
    invoke-static {v2, v3, v1, v4, v5}, Lcom/apportable/ui/TextField;->access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v2, v2, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v2}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v2

    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    move-result v2

    # invokes: Lcom/apportable/ui/TextField;->textWillChange(I)V
    invoke-static {v1, v2}, Lcom/apportable/ui/TextField;->access$300(Lcom/apportable/ui/TextField;I)V

    .line 353
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 354
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v0, v0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v1

    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    move-result v1

    # invokes: Lcom/apportable/ui/TextField;->textDidChange(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$600(Lcom/apportable/ui/TextField;I)V

    goto :goto_0
.end method
