.class public final Lcom/google/dexmaker/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field alternateSuccessor:Lcom/google/dexmaker/Label;

.field catchLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Label;",
            ">;"
        }
    .end annotation
.end field

.field code:Lcom/google/dexmaker/Code;

.field id:I

.field final instructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/rop/code/Insn;",
            ">;"
        }
    .end annotation
.end field

.field marked:Z

.field primarySuccessor:Lcom/google/dexmaker/Label;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/dexmaker/Label;->marked:Z

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/dexmaker/Label;->id:I

    .line 49
    return-void
.end method


# virtual methods
.method compact()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Label;

    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    iget-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Label;

    iget-object v0, v0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 61
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    iget-object v0, v0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    iput-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    goto :goto_2

    .line 64
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    iget-object v0, v0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    iput-object v0, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    goto :goto_3

    .line 67
    :cond_3
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method toBasicBlock()Lcom/android/dx/rop/code/BasicBlock;
    .locals 5

    .prologue
    .line 70
    new-instance v2, Lcom/android/dx/rop/code/InsnList;

    iget-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/Insn;

    invoke-virtual {v2, v1, v0}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v2}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 76
    const/4 v1, -0x1

    .line 77
    new-instance v3, Lcom/android/dx/util/IntList;

    invoke-direct {v3}, Lcom/android/dx/util/IntList;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Label;

    .line 79
    iget v0, v0, Lcom/google/dexmaker/Label;->id:I

    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->add(I)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    iget v0, v0, Lcom/google/dexmaker/Label;->id:I

    .line 83
    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->add(I)V

    .line 85
    :goto_2
    iget-object v1, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    iget v1, v1, Lcom/google/dexmaker/Label;->id:I

    invoke-virtual {v3, v1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 88
    :cond_2
    invoke-virtual {v3}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 90
    new-instance v1, Lcom/android/dx/rop/code/BasicBlock;

    iget v4, p0, Lcom/google/dexmaker/Label;->id:I

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    return-object v1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
