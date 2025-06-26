.class public final Lcom/android/dx/ssa/SsaBasicBlock;
.super Ljava/lang/Object;
.source "SsaBasicBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;,
        Lcom/android/dx/ssa/SsaBasicBlock$Visitor;
    }
.end annotation


# static fields
.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final domChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private liveIn:Lcom/android/dx/util/IntSet;

.field private liveOut:Lcom/android/dx/util/IntSet;

.field private movesFromPhisAtBeginning:I

.field private movesFromPhisAtEnd:I

.field private parent:Lcom/android/dx/ssa/SsaMethod;

.field private predecessors:Ljava/util/BitSet;

.field private primarySuccessor:I

.field private reachable:I

.field private ropLabel:I

.field private successorList:Lcom/android/dx/util/IntList;

.field private successors:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;

    invoke-direct {v0}, Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;-><init>()V

    sput-object v0, Lcom/android/dx/ssa/SsaBasicBlock;->LABEL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILcom/android/dx/ssa/SsaMethod;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 88
    iput v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    .line 94
    iput v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    .line 100
    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->reachable:I

    .line 123
    iput-object p3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    .line 124
    iput p1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    .line 126
    iput p2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    .line 128
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p3}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    .line 129
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p3}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    .line 130
    new-instance v0, Lcom/android/dx/util/IntList;

    invoke-direct {v0}, Lcom/android/dx/util/IntList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaBasicBlock;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    return v0
.end method

.method private static checkRegUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 3

    .prologue
    .line 671
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 672
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    .line 674
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 675
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCountPhiInsns()I
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 294
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 296
    instance-of v0, v0, Lcom/android/dx/ssa/PhiInsn;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    return v1

    .line 294
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static newFromRop(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 9

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 147
    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v2

    .line 148
    new-instance v3, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 149
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-direct {v3, p1, v0, p2}, Lcom/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/android/dx/ssa/SsaMethod;)V

    .line 150
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v4

    .line 152
    iget-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 154
    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v5

    :goto_0
    if-ge v0, v5, :cond_0

    .line 155
    iget-object v6, v3, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v4, v0}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 158
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->bitSetFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    .line 163
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->bitSetFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    .line 167
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 166
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->indexListFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Lcom/android/dx/util/IntList;

    move-result-object v0

    iput-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    .line 169
    iget-object v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 172
    if-gez v0, :cond_2

    const/4 v0, -0x1

    .line 173
    :goto_1
    iput v0, v3, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 176
    :cond_1
    return-object v3

    .line 173
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v0

    goto :goto_1
.end method

.method private scheduleUseBeforeAssigned(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 690
    new-instance v6, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 693
    new-instance v7, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 695
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v5

    .line 699
    :goto_0
    if-ge v4, v3, :cond_3

    move v1, v4

    .line 703
    :goto_1
    if-ge v1, v3, :cond_0

    .line 705
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 704
    invoke-static {v6, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->setRegsUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 708
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 707
    invoke-static {v7, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->setRegsUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 703
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move v2, v4

    move v1, v4

    .line 715
    :goto_2
    if-ge v2, v3, :cond_1

    .line 716
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 722
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 723
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v2, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 715
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 731
    :cond_1
    if-ne v4, v1, :cond_5

    .line 733
    const/4 v2, 0x0

    move v4, v1

    .line 736
    :goto_4
    if-ge v4, v3, :cond_4

    .line 737
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 738
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 740
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 739
    invoke-static {v7, v8}, Lcom/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 747
    invoke-static {p1, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 754
    :goto_5
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 755
    iget-object v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    .line 756
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/dx/ssa/SsaMethod;->borrowSpareRegister(I)I

    move-result v3

    .line 755
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 758
    new-instance v4, Lcom/android/dx/ssa/NormalSsaInsn;

    new-instance v8, Lcom/android/dx/rop/code/PlainInsn;

    .line 759
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v9

    invoke-static {v9}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    sget-object v10, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    .line 762
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {v8, v9, v10, v3, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v4, v8, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 764
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 766
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 768
    new-instance v3, Lcom/android/dx/ssa/NormalSsaInsn;

    new-instance v4, Lcom/android/dx/rop/code/PlainInsn;

    .line 769
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v8

    invoke-static {v8}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v8

    sget-object v9, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    invoke-direct {v4, v8, v9, v2, v1}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v3, v4, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 774
    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v11, v0

    move v0, v1

    move v1, v11

    .line 780
    :goto_6
    invoke-virtual {v6}, Ljava/util/BitSet;->clear()V

    .line 781
    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    move v4, v1

    move v3, v0

    .line 782
    goto/16 :goto_0

    .line 736
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    .line 783
    :cond_3
    return-void

    :cond_4
    move-object v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    goto :goto_6

    :cond_6
    move v0, v1

    goto/16 :goto_3
.end method

.method private static setRegsUsed(Ljava/util/BitSet;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 2

    .prologue
    .line 655
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 656
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 657
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 659
    :cond_0
    return-void
.end method


# virtual methods
.method public addDomChild(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public addInsnToHead(Lcom/android/dx/rop/code/Insn;)V
    .locals 3

    .prologue
    .line 226
    invoke-static {p1, p0}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    .line 229
    return-void
.end method

.method public addLiveIn(I)V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/android/dx/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    invoke-interface {v0, p1}, Lcom/android/dx/util/IntSet;->add(I)V

    .line 811
    return-void
.end method

.method public addLiveOut(I)V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/android/dx/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    invoke-interface {v0, p1}, Lcom/android/dx/util/IntSet;->add(I)V

    .line 797
    return-void
.end method

.method public addMoveToBeginning(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 5

    .prologue
    .line 633
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 645
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-static {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 639
    new-instance v1, Lcom/android/dx/ssa/NormalSsaInsn;

    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    .line 640
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    sget-object v4, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v1, v2, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 643
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 644
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    goto :goto_0
.end method

.method public addMoveToEnd(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 5

    .prologue
    .line 577
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 589
    invoke-virtual {v0}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    .line 601
    :goto_1
    if-ltz v1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 607
    invoke-virtual {v0, p1, p2}, Lcom/android/dx/ssa/SsaBasicBlock;->addMoveToBeginning(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 602
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 615
    :cond_3
    invoke-static {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/android/dx/ssa/NormalSsaInsn;

    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    .line 617
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    sget-object v4, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v1, v2, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 620
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 622
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    goto :goto_0
.end method

.method public addPhiInsnForReg(I)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/dx/ssa/PhiInsn;

    invoke-direct {v2, p1, p0}, Lcom/android/dx/ssa/PhiInsn;-><init>(ILcom/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    return-void
.end method

.method public addPhiInsnForReg(Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/dx/ssa/PhiInsn;

    invoke-direct {v2, p1, p0}, Lcom/android/dx/ssa/PhiInsn;-><init>(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 217
    return-void
.end method

.method public exitBlockFixup(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 2

    .prologue
    .line 550
    if-ne p0, p1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v1, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 560
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    iget v1, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 561
    iget v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 562
    iget-object v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V
    .locals 3

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 989
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaInsn;->accept(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 989
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 992
    :cond_0
    return-void
.end method

.method public forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 259
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 261
    instance-of v3, v0, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v3, :cond_0

    .line 262
    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    invoke-interface {p1, v0}, Lcom/android/dx/ssa/PhiInsn$Visitor;->visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V

    .line 259
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method public getDomChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    return v0
.end method

.method public getInsns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLiveInRegs()Lcom/android/dx/util/IntSet;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/android/dx/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/android/dx/util/IntSet;

    return-object v0
.end method

.method public getLiveOutRegs()Lcom/android/dx/util/IntSet;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/android/dx/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/android/dx/util/IntSet;

    return-object v0
.end method

.method public getParent()Lcom/android/dx/ssa/SsaMethod;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method public getPhiInsns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPredecessors()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    return-object v0
.end method

.method public getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    if-gez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    goto :goto_0
.end method

.method public getPrimarySuccessorIndex()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    return v0
.end method

.method public getPrimarySuccessorRopLabel()I
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v0

    return v0
.end method

.method public getRopLabel()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    return v0
.end method

.method public getRopLabelString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRopLabelSuccessorList()Lcom/android/dx/util/IntList;
    .locals 5

    .prologue
    .line 393
    new-instance v1, Lcom/android/dx/util/IntList;

    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 395
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .line 397
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    iget-object v4, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v4, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->add(I)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_0
    return-object v1
.end method

.method public getSuccessorList()Lcom/android/dx/util/IntList;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    return-object v0
.end method

.method public getSuccessors()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    return-object v0
.end method

.method public insertNewPredecessor()Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->makeNewGotoBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 420
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iput-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    .line 421
    iget-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 422
    iget-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 423
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    iput v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 427
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    .line 428
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, v2, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 431
    iget-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 436
    iget v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    iget v4, v2, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v3, v4}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    .line 432
    iget-object v0, v2, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 439
    :cond_0
    return-object v2
.end method

.method public insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 5

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->makeNewGotoBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    .line 456
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabelString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not successor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 458
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabelString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    iget-object v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 463
    iget-object v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 464
    iget-object v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Lcom/android/dx/util/IntList;->add(I)V

    .line 465
    iget v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    iput v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 468
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 469
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    iget v3, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    if-ne v2, v3, :cond_1

    .line 470
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    iget v3, v1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v2, v0, v3}, Lcom/android/dx/util/IntList;->set(II)V

    .line 468
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 474
    :cond_2
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    if-ne v0, v2, :cond_3

    .line 475
    iget v0, v1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    iput v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v2, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 478
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v2, v1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 481
    iget-object v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v2, v1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 482
    iget-object v0, p1, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    iget-object v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v4, p1, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 484
    return-object v1
.end method

.method public isExitBlock()Z
    .locals 2

    .prologue
    .line 843
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getExitBlockIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReachable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 853
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->reachable:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->computeReachability()V

    .line 856
    :cond_0
    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->reachable:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllPhiInsns()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 283
    return-void
.end method

.method public removeSuccessor(I)V
    .locals 3

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 529
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 530
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v2, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    move v0, v1

    .line 529
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v2, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    goto :goto_1

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->removeIndex(I)V

    .line 538
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 539
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    iget-object v0, v0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 540
    return-void
.end method

.method public replaceLastInsn(Lcom/android/dx/rop/code/Insn;)V
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "last insn must branch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 243
    invoke-static {p1, p0}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v0}, Lcom/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V

    .line 248
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    .line 249
    return-void
.end method

.method public replaceSuccessor(II)V
    .locals 2

    .prologue
    .line 495
    if-ne p1, p2, :cond_0

    .line 519
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 502
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    if-ne v0, p1, :cond_1

    .line 503
    iput p2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 507
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/android/dx/util/IntList;

    invoke-virtual {v1, v0, p2}, Lcom/android/dx/util/IntList;->set(II)V

    .line 506
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 515
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    iget-object v0, v0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 518
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    iget-object v0, v0, Lcom/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0
.end method

.method public scheduleMovesFromPhis()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 880
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    if-le v0, v3, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 885
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->scheduleUseBeforeAssigned(Ljava/util/List;)V

    .line 887
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 894
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->isMoveException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected: moves from phis before move-exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_0
    iget v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    if-le v0, v3, :cond_1

    .line 970
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    .line 971
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    .line 972
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 971
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 970
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->scheduleUseBeforeAssigned(Ljava/util/List;)V

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/android/dx/ssa/SsaBasicBlock;->parent:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->returnSpareRegisters()V

    .line 978
    return-void
.end method

.method public setReachable(I)V
    .locals 0

    .prologue
    .line 865
    iput p1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->reachable:I

    .line 866
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
