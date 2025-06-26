.class Lcom/apportable/ui/WebDialog$1$3;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebDialog$1;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebDialog$1;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$1$3;->this$1:Lcom/apportable/ui/WebDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$3;->this$1:Lcom/apportable/ui/WebDialog$1;

    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # invokes: Lcom/apportable/ui/WebDialog;->_dismiss()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$000(Lcom/apportable/ui/WebDialog;)V

    .line 184
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$3;->this$1:Lcom/apportable/ui/WebDialog$1;

    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # invokes: Lcom/apportable/ui/WebDialog;->onClose()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$100(Lcom/apportable/ui/WebDialog;)V

    .line 185
    return-void
.end method
