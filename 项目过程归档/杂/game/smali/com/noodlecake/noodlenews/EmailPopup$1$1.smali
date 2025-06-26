.class Lcom/noodlecake/noodlenews/EmailPopup$1$1;
.super Ljava/lang/Object;
.source "EmailPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/noodlecake/noodlenews/EmailPopup$1;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$1;->this$0:Lcom/noodlecake/noodlenews/EmailPopup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$1;->this$0:Lcom/noodlecake/noodlenews/EmailPopup$1;

    iget-object v3, v3, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-virtual {v3}, Lcom/noodlecake/noodlenews/PopupTransaction;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "popup_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$1;->this$0:Lcom/noodlecake/noodlenews/EmailPopup$1;

    iget-object v3, v3, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-virtual {v3}, Lcom/noodlecake/noodlenews/PopupTransaction;->getPopupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "type"

    iget-object v2, p0, Lcom/noodlecake/noodlenews/EmailPopup$1$1;->this$0:Lcom/noodlecake/noodlenews/EmailPopup$1;

    iget-object v2, v2, Lcom/noodlecake/noodlenews/EmailPopup$1;->val$popupObj:Lcom/noodlecake/noodlenews/PopupTransaction;

    invoke-virtual {v2}, Lcom/noodlecake/noodlenews/PopupTransaction;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method
