.class public Lcom/noodlecake/noodlenews/PopupTransaction;
.super Ljava/lang/Object;
.source "PopupTransaction.java"


# instance fields
.field private acked:Z

.field private description:Ljava/lang/String;

.field private id:I

.field private immediate:Z

.field private negative_button_text:Ljava/lang/String;

.field private parameter_1:Ljava/lang/String;

.field private parameter_2:Ljava/lang/String;

.field private parameter_3:Ljava/lang/String;

.field private parameter_4:Ljava/lang/String;

.field private popup_id:I

.field private positive_button_text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->id:I

    .line 31
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->id:I

    return v0
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->negative_button_text:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->parameter_1:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->parameter_2:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->parameter_3:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->parameter_4:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->popup_id:I

    return v0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->positive_button_text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isAcked()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->acked:Z

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->immediate:Z

    return v0
.end method

.method public setAcked(Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->acked:Z

    .line 122
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->description:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->id:I

    .line 38
    return-void
.end method

.method public setImmediate(Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->immediate:Z

    .line 115
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->negative_button_text:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setParameter1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->parameter_1:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setParameter2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->parameter_2:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setParameter3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->parameter_3:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setParameter4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->parameter_4:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setPopupId(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->popup_id:I

    .line 45
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->positive_button_text:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->title:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noodlecake/noodlenews/PopupTransaction;->type:Ljava/lang/String;

    .line 52
    return-void
.end method
