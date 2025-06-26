.class Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField$TextFieldLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionFilter"
.end annotation


# instance fields
.field private mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

.field final synthetic this$1:Lcom/apportable/ui/TextField$TextFieldLayer;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/TextField$TextFieldLayer;Lcom/apportable/ui/TextField$TextFieldLayer;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    .line 83
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z
    invoke-static {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$000(Lcom/apportable/ui/TextField$TextFieldLayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sub-int v1, p6, p5

    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 93
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    .line 95
    const/4 v0, -0x1

    .line 99
    :goto_0
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v3}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    move-result-object v3

    iget-object v4, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v4}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apportable/ui/TextField;->object()I

    move-result v4

    iget-object v5, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v5}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionStart()I

    move-result v5

    sub-int v1, v5, v1

    # invokes: Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z
    invoke-static {v3, v4, v1, v0, v2}, Lcom/apportable/ui/TextField;->access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    move-result v1

    # invokes: Lcom/apportable/ui/TextField;->textWillChange(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$300(Lcom/apportable/ui/TextField;I)V

    .line 106
    :cond_0
    :goto_1
    return-object p1

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0

    .line 103
    :cond_2
    const-string p1, ""

    goto :goto_1
.end method
