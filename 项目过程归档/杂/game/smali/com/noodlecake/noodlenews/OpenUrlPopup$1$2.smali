.class Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;
.super Ljava/lang/Object;
.source "OpenUrlPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noodlecake/noodlenews/OpenUrlPopup$1;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/noodlecake/noodlenews/OpenUrlPopup$1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;->this$0:Lcom/noodlecake/noodlenews/OpenUrlPopup$1;

    iput-object p2, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;->this$0:Lcom/noodlecake/noodlenews/OpenUrlPopup$1;

    iget-object v1, v1, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-virtual {v1}, Lcom/noodlecake/noodlenews/PopupTransaction;->getParameter2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;->this$0:Lcom/noodlecake/noodlenews/OpenUrlPopup$1;

    iget-object v3, v3, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-virtual {v3}, Lcom/noodlecake/noodlenews/PopupTransaction;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "popup_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;->this$0:Lcom/noodlecake/noodlenews/OpenUrlPopup$1;

    iget-object v3, v3, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-virtual {v3}, Lcom/noodlecake/noodlenews/PopupTransaction;->getPopupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "type"

    iget-object v2, p0, Lcom/noodlecake/noodlenews/OpenUrlPopup$1$2;->this$0:Lcom/noodlecake/noodlenews/OpenUrlPopup$1;

    iget-object v2, v2, Lcom/noodlecake/noodlenews/OpenUrlPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-virtual {v2}, Lcom/noodlecake/noodlenews/PopupTransaction;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
