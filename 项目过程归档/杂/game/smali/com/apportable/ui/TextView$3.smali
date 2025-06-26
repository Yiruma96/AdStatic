.class Lcom/apportable/ui/TextView$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/text/InputFilter;


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
    .line 282
    iput-object p1, p0, Lcom/apportable/ui/TextView$3;->this$0:Lcom/apportable/ui/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/apportable/ui/TextView$3;->this$0:Lcom/apportable/ui/TextView;

    iget-object v1, p0, Lcom/apportable/ui/TextView$3;->this$0:Lcom/apportable/ui/TextView;

    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sub-int v3, p3, p2

    # invokes: Lcom/apportable/ui/TextView;->textShouldChange(ILjava/lang/String;II)Z
    invoke-static {v0, v1, v2, p2, v3}, Lcom/apportable/ui/TextView;->access$300(Lcom/apportable/ui/TextView;ILjava/lang/String;II)Z

    move-result v1

    .line 285
    if-nez v1, :cond_0

    .line 286
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/apportable/activity/VerdeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 287
    iget-object v2, p0, Lcom/apportable/ui/TextView$3;->this$0:Lcom/apportable/ui/TextView;

    # getter for: Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;
    invoke-static {v2}, Lcom/apportable/ui/TextView;->access$800(Lcom/apportable/ui/TextView;)Lcom/apportable/ui/TextView$EditText;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 289
    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    return-object p1

    :cond_1
    const-string p1, ""

    goto :goto_0
.end method
