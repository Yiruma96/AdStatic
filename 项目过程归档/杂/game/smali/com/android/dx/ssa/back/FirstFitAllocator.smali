.class public Lcom/android/dx/ssa/back/FirstFitAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;
.source "FirstFitAllocator.java"


# static fields
.field private static final PRESLOT_PARAMS:Z = true


# instance fields
.field private final mapped:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    .line 51
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    .line 52
    return-void
.end method

.method private paramNumberFromMoveParam(Lcom/android/dx/ssa/NormalSsaInsn;)I
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/CstInsn;

    .line 149
    invoke-virtual {v0}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v7

    .line 65
    new-instance v8, Lcom/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v8, v7}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 77
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v1

    move v6, v3

    .line 80
    :goto_0
    if-ge v6, v7, :cond_7

    .line 81
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v5

    .line 87
    new-instance v9, Lcom/android/dx/util/BitIntSet;

    invoke-direct {v9, v7}, Lcom/android/dx/util/BitIntSet;-><init>(I)V

    .line 89
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v0, v6, v9}, Lcom/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/android/dx/util/IntSet;)V

    .line 94
    invoke-virtual {p0, v6}, Lcom/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 97
    invoke-virtual {v0, v6}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 99
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/FirstFitAllocator;->paramNumberFromMoveParam(Lcom/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 101
    invoke-virtual {v8, v6, v0, v5}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 102
    const/4 v2, 0x1

    .line 108
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v11, v4

    move v4, v5

    move v5, v11

    :goto_3
    if-ge v5, v7, :cond_6

    .line 109
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v10, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 108
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {v8, v6, v1, v5}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    move v0, v1

    move v2, v3

    .line 105
    goto :goto_2

    .line 118
    :cond_4
    invoke-interface {v9, v5}, Lcom/android/dx/util/IntSet;->has(I)Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {p0, v5}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v10

    if-lt v4, v10, :cond_2

    .line 122
    :cond_5
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v10, v5, v9}, Lcom/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/android/dx/util/IntSet;)V

    .line 125
    invoke-virtual {p0, v5}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v10

    .line 124
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 127
    invoke-virtual {v8, v5, v0, v4}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 128
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v10, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 133
    if-nez v2, :cond_0

    .line 134
    add-int/2addr v1, v4

    goto :goto_1

    .line 138
    :cond_7
    return-object v8
.end method

.method public wantsParamsMovedHigh()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
