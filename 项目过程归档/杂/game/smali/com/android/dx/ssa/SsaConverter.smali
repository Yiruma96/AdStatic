.class public Lcom/android/dx/ssa/SsaConverter;
.super Ljava/lang/Object;
.source "SsaConverter.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToSsaMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .locals 3

    .prologue
    .line 45
    .line 46
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    .line 50
    invoke-static {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    move-result-object v1

    .line 52
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    .line 53
    new-instance v1, Lcom/android/dx/ssa/SsaRenamer;

    invoke-direct {v1, v0}, Lcom/android/dx/ssa/SsaRenamer;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaRenamer;->run()V

    .line 59
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->makeExitBlock()V

    .line 61
    return-object v0
.end method

.method private static edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 0

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitPredecessors(Lcom/android/dx/ssa/SsaMethod;)V

    .line 136
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitMoveExceptionsAndResults(Lcom/android/dx/ssa/SsaMethod;)V

    .line 137
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitSuccessors(Lcom/android/dx/ssa/SsaMethod;)V

    .line 138
    return-void
.end method

.method private static edgeSplitMoveExceptionsAndResults(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v5

    .line 194
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    .line 195
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 201
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->isExitBlock()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->isMoveException()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 207
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v3, v2

    :goto_1
    if-ltz v3, :cond_0

    .line 209
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 211
    invoke-virtual {v2, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->clone()Lcom/android/dx/ssa/SsaInsn;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 208
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v3, v2

    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    :cond_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 224
    :cond_2
    return-void
.end method

.method private static edgeSplitPredecessors(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 154
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 155
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->nodeNeedsUniquePredecessor(Lcom/android/dx/ssa/SsaBasicBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewPredecessor()Lcom/android/dx/ssa/SsaBasicBlock;

    .line 153
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method private static edgeSplitSuccessors(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 7

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v5

    .line 239
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    .line 240
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 243
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 244
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v3, v2

    .line 245
    :goto_1
    if-ltz v3, :cond_1

    .line 247
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 249
    invoke-static {v0, v2}, Lcom/android/dx/ssa/SsaConverter;->needsNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    .line 245
    :cond_0
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v3, v2

    goto :goto_1

    .line 239
    :cond_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 254
    :cond_2
    return-void
.end method

.method private static needsNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 268
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 271
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-nez v2, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nodeNeedsUniquePredecessor(Lcom/android/dx/ssa/SsaBasicBlock;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    .line 175
    if-le v1, v0, :cond_0

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v4

    .line 294
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 295
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    sub-int v5, v0, p2

    .line 297
    new-instance v0, Lcom/android/dx/ssa/DomFront;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/DomFront;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 298
    invoke-virtual {v0}, Lcom/android/dx/ssa/DomFront;->run()[Lcom/android/dx/ssa/DomFront$DomInfo;

    move-result-object v6

    .line 301
    new-array v7, v5, [Ljava/util/BitSet;

    .line 304
    new-array v8, v5, [Ljava/util/BitSet;

    move v0, v3

    .line 306
    :goto_0
    if-ge v0, v5, :cond_0

    .line 307
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v7, v0

    .line 308
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v8, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_3

    .line 316
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 318
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 319
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    sub-int/2addr v10, p2

    if-ltz v10, :cond_1

    .line 322
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    sub-int/2addr v0, p2

    aget-object v0, v7, v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 315
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v2, v3

    .line 344
    :goto_3
    if-ge v2, v5, :cond_8

    .line 349
    aget-object v0, v7, v2

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    move-object v1, v0

    check-cast v1, Ljava/util/BitSet;

    .line 351
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 352
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 353
    aget-object v0, v6, v0

    iget-object v0, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    .line 354
    invoke-interface {v0}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    move-result-object v9

    .line 356
    :cond_5
    :goto_4
    invoke-interface {v9}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    invoke-interface {v9}, Lcom/android/dx/util/IntIterator;->next()I

    move-result v10

    .line 359
    aget-object v0, v8, v2

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 360
    aget-object v0, v8, v2

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 362
    add-int v11, v2, p2

    .line 364
    invoke-virtual {p1, v10}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v12

    .line 366
    if-nez v12, :cond_6

    .line 367
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0, v11}, Lcom/android/dx/ssa/SsaBasicBlock;->addPhiInsnForReg(I)V

    .line 372
    :goto_5
    aget-object v0, v7, v2

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 373
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    .line 369
    :cond_6
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0, v12}, Lcom/android/dx/ssa/SsaBasicBlock;->addPhiInsnForReg(Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_5

    .line 344
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 390
    :cond_8
    return-void
.end method

.method public static testEdgeSplit(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .locals 1

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    .line 93
    return-object v0
.end method

.method public static testPhiPlacement(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .locals 3

    .prologue
    .line 110
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    .line 114
    invoke-static {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    move-result-object v1

    .line 116
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    .line 117
    return-object v0
.end method

.method public static updateSsaMethod(Lcom/android/dx/ssa/SsaMethod;I)V
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    move-result-object v0

    .line 73
    invoke-static {p0, v0, p1}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    .line 74
    new-instance v0, Lcom/android/dx/ssa/SsaRenamer;

    invoke-direct {v0, p0, p1}, Lcom/android/dx/ssa/SsaRenamer;-><init>(Lcom/android/dx/ssa/SsaMethod;I)V

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaRenamer;->run()V

    .line 75
    return-void
.end method
