.class public Lcom/android/dx/ssa/back/IdenticalBlockCombiner;
.super Ljava/lang/Object;
.source "IdenticalBlockCombiner.java"


# instance fields
.field private final blocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private final newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private final ropMethod:Lcom/android/dx/rop/code/RopMethod;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    .line 49
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    .line 50
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMutableCopy()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    .line 51
    return-void
.end method

.method private combineBlocks(ILcom/android/dx/util/IntList;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p2}, Lcom/android/dx/util/IntList;->size()I

    move-result v3

    move v2, v1

    .line 143
    :goto_0
    if-ge v2, v3, :cond_1

    .line 144
    invoke-virtual {p2, v2}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    .line 145
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 146
    iget-object v5, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    move-result-object v5

    .line 147
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->size()I

    move-result v6

    move v0, v1

    .line 149
    :goto_1
    if-ge v0, v6, :cond_0

    .line 150
    iget-object v7, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v5, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 151
    invoke-direct {p0, v7, v4, p1}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->replaceSucc(Lcom/android/dx/rop/code/BasicBlock;II)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method private static compareInsns(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;)Z
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/InsnList;->contentEquals(Lcom/android/dx/rop/code/InsnList;)Z

    move-result v0

    return v0
.end method

.method private replaceSucc(Lcom/android/dx/rop/code/BasicBlock;II)V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    move-result-object v1

    .line 168
    invoke-virtual {v1, p2}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    invoke-virtual {v1, v0, p3}, Lcom/android/dx/util/IntList;->set(II)V

    .line 169
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 171
    if-ne v0, p2, :cond_0

    .line 175
    :goto_0
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 177
    new-instance v0, Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v2

    .line 178
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, p3}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 180
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    iget-object v2, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    .line 181
    return-void

    :cond_0
    move p3, v0

    goto :goto_0
.end method


# virtual methods
.method public process()Lcom/android/dx/rop/code/RopMethod;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v4

    .line 63
    new-instance v5, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/BitSet;-><init>(I)V

    move v3, v2

    .line 66
    :goto_0
    if-ge v3, v4, :cond_6

    .line 67
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    move-result-object v6

    .line 77
    invoke-virtual {v6}, Lcom/android/dx/util/IntList;->size()I

    move-result v7

    move v1, v2

    .line 78
    :goto_1
    if-ge v1, v7, :cond_0

    .line 79
    invoke-virtual {v6, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v8

    .line 81
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, v8}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v9

    .line 83
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    invoke-virtual {v9}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    if-gt v0, v14, :cond_2

    .line 85
    invoke-virtual {v9}, Lcom/android/dx/rop/code/BasicBlock;->getFirstInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v10, 0x37

    if-ne v0, v10, :cond_3

    .line 78
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 90
    :cond_3
    new-instance v10, Lcom/android/dx/util/IntList;

    invoke-direct {v10}, Lcom/android/dx/util/IntList;-><init>()V

    .line 93
    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-ge v0, v7, :cond_5

    .line 94
    invoke-virtual {v6, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 95
    iget-object v12, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v12, v11}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v12

    .line 97
    invoke-virtual {v12}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/dx/util/IntList;->size()I

    move-result v13

    if-ne v13, v14, :cond_4

    .line 98
    invoke-static {v9, v12}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->compareInsns(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 100
    invoke-virtual {v10, v11}, Lcom/android/dx/util/IntList;->add(I)V

    .line 101
    invoke-virtual {v5, v11}, Ljava/util/BitSet;->set(I)V

    .line 93
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 105
    :cond_5
    invoke-direct {p0, v8, v10}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->combineBlocks(ILcom/android/dx/util/IntList;)V

    goto :goto_2

    .line 109
    :cond_6
    add-int/lit8 v0, v4, -0x1

    :goto_4
    if-ltz v0, :cond_8

    .line 110
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    .line 109
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->shrinkToFit()V

    .line 116
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->setImmutable()V

    .line 118
    new-instance v0, Lcom/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    iget-object v2, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    return-object v0
.end method
