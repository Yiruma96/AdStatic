.class Lcom/apportable/ui/TextView$1;
.super Lcom/apportable/ui/TextView$EditText;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/TextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/TextView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextView;Landroid/content/Context;Lcom/apportable/ui/TextView;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/apportable/ui/TextView$1;->this$0:Lcom/apportable/ui/TextView;

    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/TextView$EditText;-><init>(Lcom/apportable/ui/TextView;Landroid/content/Context;Lcom/apportable/ui/TextView;)V

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/TextView$EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 164
    return-void
.end method
