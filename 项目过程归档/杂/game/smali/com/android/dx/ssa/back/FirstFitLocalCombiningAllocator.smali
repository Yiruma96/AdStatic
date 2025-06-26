.class public Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;
.source "FirstFitLocalCombiningAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final invokeRangeInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final localVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/dx/rop/code/LocalItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

.field private final minimizeRegisters:Z

.field private final moveResultPseudoInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramRangeEnd:I

.field private final phiInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/PhiInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final reservedRopRegs:Ljava/util/BitSet;

.field private final ssaRegsMapped:Ljava/util/BitSet;

.field private final usedRopRegs:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;Z)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    .line 89
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    .line 91
    new-instance v0, Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 92
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;-><init>(Lcom/android/dx/ssa/back/InterferenceGraph;I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 94
    iput-boolean p3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->minimizeRegisters:Z

    .line 102
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 104
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    .line 105
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 106
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V
    .locals 4

    .prologue
    .line 692
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 695
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempt to add invalid register mapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    .line 706
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v2, v3, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->addMapping(III)V

    .line 707
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 708
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int/2addr v1, p2

    invoke-virtual {v0, p2, v1}, Ljava/util/BitSet;->set(II)V

    .line 709
    return-void
.end method

.method private adjustAndMapSourceRangeRange(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 720
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRangeAndAdjust(Lcom/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 722
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 723
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v8

    move v4, v3

    move v5, v0

    .line 726
    :goto_0
    if-ge v4, v8, :cond_3

    .line 727
    invoke-virtual {v7, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 728
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 729
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v9

    .line 731
    add-int v6, v5, v9

    .line 733
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v6

    goto :goto_0

    .line 737
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getLocalItemForReg(I)Lcom/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 738
    invoke-direct {p0, v0, v5}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    .line 740
    if-eqz v1, :cond_0

    .line 741
    invoke-direct {p0, v5, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    .line 742
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    .line 743
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 745
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v2, v3

    .line 751
    :goto_1
    if-ge v2, v10, :cond_0

    .line 752
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    .line 753
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    .line 756
    const/4 v12, -0x1

    invoke-virtual {v7, v11}, Lcom/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    move-result v11

    if-eq v12, v11, :cond_2

    .line 751
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 761
    :cond_2
    invoke-direct {p0, v1, v5, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    goto :goto_2

    .line 765
    :cond_3
    return-void
.end method

.method private analyzeInstructions()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;

    invoke-direct {v1, p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;-><init>(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 682
    return-void
.end method

.method private canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    .line 595
    invoke-direct {p0, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 596
    invoke-virtual {v0, p1, p2}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->interferes(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canMapRegs(Ljava/util/ArrayList;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    .line 578
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    invoke-direct {p0, v0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findAnyFittingRange(Lcom/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I
    .locals 2

    .prologue
    .line 885
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 887
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    .line 889
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v1

    .line 892
    if-ltz v1, :cond_0

    .line 898
    return v0

    .line 895
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 896
    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    goto :goto_0
.end method

.method private findNextUnreservedRopReg(II)I
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 377
    :goto_0
    const/4 v1, 0x1

    .line 379
    :goto_1
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 383
    :cond_0
    if-ne v1, p2, :cond_1

    .line 384
    return v0

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    goto :goto_0
.end method

.method private findRangeAndAdjust(Lcom/android/dx/ssa/NormalSsaInsn;)I
    .locals 14

    .prologue
    .line 778
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v9

    .line 779
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v10

    .line 781
    new-array v11, v10, [I

    .line 782
    const/4 v1, 0x0

    .line 785
    const/4 v0, 0x0

    move v8, v1

    :goto_0
    if-ge v0, v10, :cond_0

    .line 786
    invoke-virtual {v9, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    .line 787
    aput v1, v11, v0

    .line 788
    aget v1, v11, v0

    add-int/2addr v1, v8

    .line 785
    add-int/lit8 v0, v0, 0x1

    move v8, v1

    goto :goto_0

    .line 792
    :cond_0
    const/high16 v4, -0x80000000

    .line 794
    const/4 v2, -0x1

    .line 796
    const/4 v1, 0x0

    .line 803
    const/4 v3, 0x0

    .line 804
    const/4 v0, 0x0

    move v13, v0

    move-object v0, v1

    move v1, v2

    move v2, v4

    move v4, v13

    :goto_1
    if-ge v4, v10, :cond_5

    .line 805
    invoke-virtual {v9, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 807
    if-eqz v4, :cond_1

    .line 808
    add-int/lit8 v6, v4, -0x1

    aget v6, v11, v6

    sub-int/2addr v3, v6

    .line 810
    :cond_1
    iget-object v6, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 804
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 814
    :cond_3
    iget-object v6, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v6, v5}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v5

    add-int v6, v5, v3

    .line 816
    if-ltz v6, :cond_2

    invoke-direct {p0, v6, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 820
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 823
    invoke-direct {p0, v6, p1, v11, v5}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v12

    .line 826
    if-ltz v12, :cond_2

    .line 830
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    sub-int v7, v12, v7

    .line 832
    if-le v7, v2, :cond_4

    move-object v0, v5

    move v1, v6

    move v2, v7

    .line 838
    :cond_4
    if-ne v12, v8, :cond_2

    .line 850
    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 851
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 853
    invoke-direct {p0, p1, v8, v11, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findAnyFittingRange(Lcom/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I

    move-result v1

    .line 861
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_2
    if-ltz v2, :cond_7

    .line 863
    invoke-virtual {v9, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 862
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_2

    .line 866
    :cond_7
    return v1
.end method

.method private findRopRegForLocal(II)I
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 406
    :goto_0
    const/4 v1, 0x1

    .line 408
    :goto_1
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_0
    if-ne v1, p2, :cond_1

    .line 413
    return v0

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    goto :goto_0
.end method

.method private fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I
    .locals 11

    .prologue
    .line 917
    invoke-virtual {p2}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 918
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 919
    const/4 v1, 0x0

    .line 920
    invoke-virtual {p2}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/android/dx/util/IntSet;

    move-result-object v0

    .line 921
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaSetToSpecs(Lcom/android/dx/util/IntSet;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 924
    new-instance v6, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 926
    const/4 v0, 0x0

    move v2, v0

    move v0, p1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 927
    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 928
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 929
    aget v9, p3, v2

    .line 931
    if-eqz v2, :cond_0

    .line 932
    add-int/lit8 v10, v2, -0x1

    aget v10, p3, v10

    add-int/2addr v0, v10

    .line 935
    :cond_0
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 936
    invoke-virtual {v10, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v10

    if-ne v10, v0, :cond_1

    .line 938
    add-int/2addr v1, v9

    .line 967
    :goto_1
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    .line 926
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :cond_1
    invoke-direct {p0, v0, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->rangeContainsReserved(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 940
    const/4 v1, -0x1

    .line 969
    :cond_2
    :goto_2
    return v1

    .line 942
    :cond_3
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 943
    invoke-direct {p0, v7, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 944
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 946
    add-int/2addr v1, v9

    goto :goto_1

    .line 947
    :cond_4
    iget-object v7, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v7, v5, v0, v9}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 948
    invoke-virtual {v7, v3, v0, v9}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 961
    invoke-virtual {p4, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 963
    :cond_5
    const/4 v1, -0x1

    .line 964
    goto :goto_2
.end method

.method private getLocalItemForReg(I)Lcom/android/dx/rop/code/LocalItem;
    .locals 4

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1001
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    .line 1002
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1003
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/LocalItem;

    .line 1008
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getParameterIndexForReg(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 217
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, p1}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 218
    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/CstInsn;

    .line 227
    invoke-virtual {v0}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method private handleCheckCastResults()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 458
    invoke-virtual {v0}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 459
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 460
    invoke-virtual {v0}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 468
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 469
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 476
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 481
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    .line 488
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v11

    .line 489
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 490
    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v4, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    .line 491
    if-nez v4, :cond_3

    move v5, v2

    :goto_1
    and-int/2addr v5, v1

    if-eqz v5, :cond_8

    .line 492
    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v4, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v4

    .line 493
    invoke-direct {p0, v9, v4, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v4

    move v5, v4

    .line 495
    :goto_2
    if-nez v1, :cond_4

    move v4, v2

    :goto_3
    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 496
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v1, v10}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v1

    .line 497
    invoke-direct {p0, v7, v1, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v1

    .line 501
    :cond_1
    if-eqz v1, :cond_2

    if-nez v5, :cond_5

    .line 502
    :cond_2
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v1, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v1

    .line 503
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :goto_4
    invoke-direct {p0, v4, v1, v11, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v5

    if-nez v5, :cond_5

    .line 509
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v1

    goto :goto_4

    :cond_3
    move v5, v3

    .line 491
    goto :goto_1

    :cond_4
    move v4, v3

    .line 495
    goto :goto_3

    .line 519
    :cond_5
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 520
    :goto_5
    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v4, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v4

    .line 521
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v5, v10}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v5

    .line 522
    if-eq v4, v5, :cond_0

    if-nez v1, :cond_0

    move-object v1, v0

    .line 523
    check-cast v1, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 524
    invoke-virtual {p0, v0, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 523
    invoke-virtual {v1, v3, v5}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 525
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 519
    goto :goto_5

    .line 528
    :cond_7
    return-void

    :cond_8
    move v5, v4

    goto :goto_2
.end method

.method private handleInvokeRangeInsns()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 447
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->adjustAndMapSourceRangeRange(Lcom/android/dx/ssa/NormalSsaInsn;)V

    goto :goto_0

    .line 449
    :cond_0
    return-void
.end method

.method private handleLocalAssociatedOther()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 242
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    move v2, v3

    move v4, v1

    .line 249
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v3

    move v6, v8

    .line 250
    :goto_1
    if-ge v7, v10, :cond_1

    .line 251
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    .line 252
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    .line 253
    iget-object v11, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    if-le v5, v6, :cond_4

    move v1, v5

    .line 250
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v6, v1

    goto :goto_1

    .line 259
    :cond_1
    invoke-direct {p0, v4, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRopRegForLocal(II)I

    move-result v4

    .line 260
    invoke-direct {p0, v0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapRegs(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    invoke-direct {p0, v0, v4, v6, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v1

    .line 265
    :goto_3
    add-int/lit8 v2, v4, 0x1

    .line 266
    if-nez v1, :cond_0

    move v4, v2

    move v2, v1

    goto :goto_0

    .line 268
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_2
.end method

.method private handleLocalAssociatedParams()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 182
    const/4 v1, -0x1

    move v2, v3

    .line 186
    :goto_1
    if-ge v2, v6, :cond_3

    .line 187
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    .line 188
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    .line 190
    invoke-direct {p0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v4

    .line 192
    if-ltz v4, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    .line 194
    invoke-direct {p0, v1, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    move v1, v2

    move v2, v4

    .line 199
    :goto_2
    if-ltz v2, :cond_0

    .line 205
    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    goto :goto_0

    .line 186
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v4

    goto :goto_1

    .line 207
    :cond_2
    return-void

    :cond_3
    move v2, v1

    move v1, v3

    goto :goto_2
.end method

.method private handleNormalUnassociated()V
    .locals 6

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v2

    .line 545
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 546
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 553
    if-eqz v3, :cond_0

    .line 555
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    .line 557
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    .line 558
    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 559
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    goto :goto_2

    .line 562
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    goto :goto_1

    .line 564
    :cond_3
    return-void
.end method

.method private handlePhiInsns()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/PhiInsn;

    .line 535
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->processPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method private handleUnassociatedParameters()V
    .locals 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    .line 427
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 428
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v2

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 436
    if-ltz v2, :cond_0

    .line 437
    invoke-direct {p0, v3, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    goto :goto_1

    .line 440
    :cond_2
    return-void
.end method

.method private isThisPointerReg(I)Z
    .locals 1

    .prologue
    .line 361
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markReserved(II)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v1, p1, p2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    .line 333
    return-void
.end method

.method private printLocalVars()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 159
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Printing local vars"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const/16 v1, 0x7b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    .line 167
    const/16 v5, 0x76

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Local: %s Registers: %s\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 174
    :cond_1
    return-void
.end method

.method private processPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1017
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 1019
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    .line 1021
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 1022
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v5

    .line 1025
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    new-instance v7, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;

    add-int/lit8 v8, v5, 0x1

    invoke-direct {v7, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;-><init>(I)V

    .line 1034
    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    :goto_0
    move v0, v1

    .line 1040
    :goto_1
    if-ge v0, v5, :cond_2

    .line 1041
    invoke-virtual {v4, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 1042
    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v2

    .line 1043
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 1044
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 1050
    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1051
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v2, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    .line 1040
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1037
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1053
    :cond_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move v0, v1

    .line 1058
    :goto_3
    invoke-virtual {v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1059
    invoke-virtual {v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getAndRemoveHighestCount()I

    move-result v2

    .line 1060
    invoke-direct {p0, v6, v2, v3, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1064
    :cond_3
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v0, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    .line 1065
    :goto_4
    invoke-direct {p0, v6, v0, v3, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1066
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    goto :goto_4

    .line 1068
    :cond_4
    return-void
.end method

.method private rangeContainsReserved(II)Z
    .locals 2

    .prologue
    .line 344
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const/4 v0, 0x1

    .line 349
    :goto_1
    return v0

    .line 344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private spansParamRange(II)Z
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    if-ge p1, v0, :cond_0

    add-int v0, p1, p2

    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    if-gt v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    .line 316
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    .line 319
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryMapRegs(Ljava/util/ArrayList;IIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;IIZ)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    .line 288
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 293
    invoke-direct {p0, v0, p2, p3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v5

    .line 294
    if-eqz v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    .line 295
    :goto_1
    if-eqz v5, :cond_0

    if-eqz p4, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 294
    goto :goto_1

    .line 301
    :cond_3
    if-nez v1, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->analyzeInstructions()V

    .line 130
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedParams()V

    .line 133
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleUnassociatedParameters()V

    .line 136
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleInvokeRangeInsns()V

    .line 141
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedOther()V

    .line 144
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleCheckCastResults()V

    .line 147
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handlePhiInsns()V

    .line 150
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleNormalUnassociated()V

    .line 152
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    return-object v0
.end method

.method ssaSetToSpecs(Lcom/android/dx/util/IntSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 5

    .prologue
    .line 980
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->elements()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 982
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    move-result-object v3

    .line 984
    const/4 v0, 0x0

    .line 985
    :goto_0
    invoke-interface {v3}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v3}, Lcom/android/dx/util/IntIterator;->next()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    move v0, v1

    goto :goto_0

    .line 989
    :cond_0
    return-object v2
.end method

.method public wantsParamsMovedHigh()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method
