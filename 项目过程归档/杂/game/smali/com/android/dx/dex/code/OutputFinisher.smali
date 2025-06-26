.class public final Lcom/android/dx/dex/code/OutputFinisher;
.super Ljava/lang/Object;
.source "OutputFinisher.java"


# instance fields
.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private hasAnyLocalInfo:Z

.field private hasAnyPositionInfo:Z

.field private insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation
.end field

.field private reservedCount:I

.field private final unreservedRegCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 79
    iput p3, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 82
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    .line 84
    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    if-eqz v0, :cond_1

    .line 172
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    instance-of v0, p1, Lcom/android/dx/dex/code/LocalSnapshot;

    if-eqz v0, :cond_2

    .line 175
    check-cast p1, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v2

    .line 177
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 178
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_2
    instance-of v0, p1, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 182
    invoke-static {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_0
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    .line 204
    sget-object v3, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-eq v2, v3, :cond_2

    .line 205
    invoke-static {v2}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_2
    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_3
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private assignAddresses()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 657
    .line 658
    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 660
    :goto_0
    if-ge v1, v3, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 662
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/code/DalvInsn;->setAddress(I)V

    .line 663
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 660
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 665
    :cond_0
    return-void
.end method

.method private assignAddressesAndFixBranches()V
    .locals 1

    .prologue
    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->assignAddresses()V

    .line 646
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->fixBranches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    return-void
.end method

.method private static assignIndices(Lcom/android/dx/dex/code/CstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 317
    invoke-interface {p1, v0}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/android/dx/rop/cst/Constant;)I

    move-result v1

    .line 319
    if-ltz v1, :cond_0

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 323
    :cond_0
    instance-of v1, v0, Lcom/android/dx/rop/cst/CstMemberRef;

    if-eqz v1, :cond_1

    .line 324
    check-cast v0, Lcom/android/dx/rop/cst/CstMemberRef;

    .line 325
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 326
    invoke-interface {p1, v0}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 327
    if-ltz v0, :cond_1

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    .line 331
    :cond_1
    return-void
.end method

.method private calculateReservedCount([Lcom/android/dx/dex/code/Dop;)I
    .locals 6

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 455
    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 457
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    .line 458
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 459
    aget-object v4, p1, v2

    .line 460
    invoke-direct {p0, v0, v4}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v5

    .line 462
    if-nez v5, :cond_1

    .line 467
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    .line 468
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v4

    .line 469
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/DalvInsn;->getMinimumRegisterRequirement(Ljava/util/BitSet;)I

    move-result v0

    .line 470
    if-le v0, v1, :cond_2

    .line 477
    :goto_1
    aput-object v5, p1, v2

    move v1, v0

    .line 457
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 473
    :cond_1
    if-eq v4, v5, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 480
    :cond_3
    return v1
.end method

.method private findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getLowRegVersion()Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    .line 525
    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lcom/android/dx/util/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No expanded opcode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    return-object v0
.end method

.method private findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;
    .locals 1

    .prologue
    .line 505
    :goto_0
    if-eqz p2, :cond_0

    .line 506
    invoke-virtual {p2}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/InsnFormat;->isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    return-object p2

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-static {p2, v0}, Lcom/android/dx/dex/code/Dops;->getNextOrNull(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/Dop;

    move-result-object p2

    goto :goto_0
.end method

.method private fixBranches()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    .line 682
    :goto_0
    if-ge v2, v3, :cond_4

    .line 683
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 684
    instance-of v1, v0, Lcom/android/dx/dex/code/TargetInsn;

    if-nez v1, :cond_0

    move v0, v4

    .line 682
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v5

    move-object v1, v0

    .line 690
    check-cast v1, Lcom/android/dx/dex/code/TargetInsn;

    .line 692
    invoke-virtual {v5}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/dx/dex/code/InsnFormat;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 693
    goto :goto_1

    .line 696
    :cond_1
    invoke-virtual {v5}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    move-result v4

    const/16 v6, 0x28

    if-ne v4, v6, :cond_3

    .line 698
    invoke-direct {p0, v0, v5}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    .line 699
    if-nez v1, :cond_2

    .line 705
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_2
    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    move v1, v3

    .line 746
    :goto_2
    const/4 v2, 0x1

    move v3, v1

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_1

    .line 728
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/CodeAddress;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 737
    new-instance v4, Lcom/android/dx/dex/code/TargetInsn;

    sget-object v5, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    .line 738
    invoke-virtual {v1}, Lcom/android/dx/dex/code/TargetInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v6

    sget-object v7, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 739
    invoke-virtual {v1}, Lcom/android/dx/dex/code/TargetInsn;->getTarget()Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 740
    iget-object v5, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 742
    add-int/lit8 v1, v3, 0x1

    .line 743
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    .line 729
    :catch_0
    move-exception v0

    .line 731
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :catch_1
    move-exception v0

    .line 735
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_4
    return v4
.end method

.method private static hasLocalInfo(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    instance-of v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;

    if-eqz v2, :cond_2

    .line 116
    check-cast p0, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v4

    move v2, v1

    .line 118
    :goto_0
    if-ge v2, v4, :cond_3

    .line 119
    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v5}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    :cond_0
    :goto_1
    return v0

    .line 118
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_2
    instance-of v2, p0, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v2, :cond_3

    .line 124
    check-cast p0, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 125
    invoke-static {v2}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 130
    goto :goto_1
.end method

.method private static hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 1

    .prologue
    .line 142
    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeOpcodesArray()[Lcom/android/dx/dex/code/Dop;
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 376
    new-array v3, v2, [Lcom/android/dx/dex/code/Dop;

    .line 378
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    aput-object v0, v3, v1

    .line 378
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 382
    :cond_0
    return-object v3
.end method

.method private massageInstructions([Lcom/android/dx/dex/code/Dop;)V
    .locals 5

    .prologue
    .line 554
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 564
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 565
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 566
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v3

    .line 567
    aget-object v4, p1, v1

    .line 569
    if-eq v3, v4, :cond_0

    .line 570
    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 578
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->performExpansion([Lcom/android/dx/dex/code/Dop;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    .line 580
    :cond_2
    return-void
.end method

.method private performExpansion([Lcom/android/dx/dex/code/Dop;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/dx/dex/code/Dop;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 594
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 595
    new-instance v7, Ljava/util/ArrayList;

    mul-int/lit8 v0, v6, 0x2

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 597
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_4

    .line 598
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 599
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v8

    .line 600
    aget-object v1, p1, v5

    .line 604
    if-eqz v1, :cond_3

    move-object v3, v2

    move-object v4, v1

    move-object v1, v2

    .line 620
    :goto_1
    if-eqz v3, :cond_0

    .line 621
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_0
    if-eq v4, v8, :cond_1

    .line 625
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    .line 627
    :cond_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    if-eqz v1, :cond_2

    .line 630
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 610
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    .line 612
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v9

    .line 613
    invoke-virtual {v0, v9}, Lcom/android/dx/dex/code/DalvInsn;->expandedPrefix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v3

    .line 614
    invoke-virtual {v0, v9}, Lcom/android/dx/dex/code/DalvInsn;->expandedSuffix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v1

    .line 617
    invoke-virtual {v0, v9}, Lcom/android/dx/dex/code/DalvInsn;->expandedVersion(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    goto :goto_1

    .line 634
    :cond_4
    return-object v7
.end method

.method private reserveRegisters([Lcom/android/dx/dex/code/Dop;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 396
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-gez v0, :cond_0

    move v0, v1

    .line 403
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->calculateReservedCount([Lcom/android/dx/dex/code/Dop;)I

    move-result v2

    .line 404
    if-lt v0, v2, :cond_1

    .line 432
    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 433
    return-void

    .line 396
    :cond_0
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    goto :goto_0

    .line 408
    :cond_1
    sub-int v4, v2, v0

    .line 409
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v1

    .line 411
    :goto_1
    if-ge v3, v5, :cond_3

    .line 419
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 420
    instance-of v6, v0, Lcom/android/dx/dex/code/CodeAddress;

    if-nez v6, :cond_2

    .line 425
    iget-object v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 430
    goto :goto_0
.end method

.method private updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 245
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    if-ltz v0, :cond_0

    .line 248
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    if-nez v0, :cond_1

    .line 253
    invoke-static {p1}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/dex/code/DalvInsn;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    .line 257
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 225
    return-void
.end method

.method public assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 301
    instance-of v2, v0, Lcom/android/dx/dex/code/CstInsn;

    if-eqz v2, :cond_0

    .line 302
    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    invoke-static {v0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/android/dx/dex/code/CstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    goto :goto_0

    .line 305
    :cond_1
    return-void
.end method

.method public finishProcessingAndGetList()Lcom/android/dx/dex/code/DalvInsnList;
    .locals 3

    .prologue
    .line 354
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-ltz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->makeOpcodesArray()[Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    .line 359
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/android/dx/dex/code/Dop;)V

    .line 360
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->massageInstructions([Lcom/android/dx/dex/code/Dop;)V

    .line 361
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->assignAddressesAndFixBranches()V

    .line 363
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/dx/dex/code/DalvInsnList;->makeImmutable(Ljava/util/ArrayList;I)Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    return-object v0
.end method

.method public getAllConstants()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v1, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 155
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 156
    invoke-static {v1, v0}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/dex/code/DalvInsn;)V

    goto :goto_0

    .line 159
    :cond_0
    return-object v1
.end method

.method public hasAnyLocalInfo()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    return v0
.end method

.method public hasAnyPositionInfo()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    return v0
.end method

.method public insert(ILcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 235
    invoke-direct {p0, p2}, Lcom/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 236
    return-void
.end method

.method public reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 272
    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/TargetInsn;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lcom/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :catch_1
    move-exception v0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-reversible instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
