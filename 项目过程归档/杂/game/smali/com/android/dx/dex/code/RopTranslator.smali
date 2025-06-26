.class public final Lcom/android/dx/dex/code/RopTranslator;
.super Ljava/lang/Object;
.source "RopTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;,
        Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
    }
.end annotation


# instance fields
.field private final addresses:Lcom/android/dx/dex/code/BlockAddresses;

.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private final locals:Lcom/android/dx/rop/code/LocalVariableInfo;

.field private final method:Lcom/android/dx/rop/code/RopMethod;

.field private order:[I

.field private final output:Lcom/android/dx/dex/code/OutputCollector;

.field private final paramSize:I

.field private paramsAreInOrder:Z

.field private final positionInfo:I

.field private final regCount:I

.field private final translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;


# direct methods
.method private constructor <init>(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p5, p0, Lcom/android/dx/dex/code/RopTranslator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 123
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    .line 124
    iput p2, p0, Lcom/android/dx/dex/code/RopTranslator;->positionInfo:I

    .line 125
    iput-object p3, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    .line 126
    new-instance v0, Lcom/android/dx/dex/code/BlockAddresses;

    invoke-direct {v0, p1}, Lcom/android/dx/dex/code/BlockAddresses;-><init>(Lcom/android/dx/rop/code/RopMethod;)V

    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    .line 127
    iput p4, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    .line 129
    invoke-static {p1, p4}, Lcom/android/dx/dex/code/RopTranslator;->calculateParamsAreInOrder(Lcom/android/dx/rop/code/RopMethod;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    .line 131
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v2

    .line 140
    mul-int/lit8 v0, v2, 0x3

    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getInstructionCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 142
    if-eqz p3, :cond_0

    .line 149
    invoke-virtual {p3}, Lcom/android/dx/rop/code/LocalVariableInfo;->getAssignmentCount()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 156
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v3

    iget-boolean v1, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    .line 159
    new-instance v1, Lcom/android/dx/dex/code/OutputCollector;

    mul-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    invoke-direct {v1, p5, v0, v2, v3}, Lcom/android/dx/dex/code/OutputCollector;-><init>(Lcom/android/dx/dex/DexOptions;III)V

    iput-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    .line 161
    if-eqz p3, :cond_2

    .line 162
    new-instance v0, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-direct {v0, p0, v1, p3}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;Lcom/android/dx/rop/code/LocalVariableInfo;)V

    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    .line 167
    :goto_1
    return-void

    .line 156
    :cond_1
    iget v1, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    goto :goto_0

    .line 165
    :cond_2
    new-instance v0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-direct {v0, p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V

    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/dex/code/RopTranslator;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/dx/dex/code/RopTranslator;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/dx/dex/code/RopTranslator;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/rop/code/RopMethod;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method private static calculateParamsAreInOrder(Lcom/android/dx/rop/code/RopMethod;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 181
    new-array v0, v1, [Z

    aput-boolean v1, v0, v4

    .line 182
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v1

    .line 189
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    new-instance v3, Lcom/android/dx/dex/code/RopTranslator$1;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/dx/dex/code/RopTranslator$1;-><init>([ZII)V

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/BasicBlockList;->forEachInsn(Lcom/android/dx/rop/code/Insn$Visitor;)V

    .line 203
    aget-boolean v0, v0, v4

    return v0
.end method

.method private static getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method private static getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 469
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 471
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->isCommutative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 482
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 485
    :cond_0
    if-nez p1, :cond_1

    .line 489
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withFirst(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    goto :goto_0
.end method

.method private outputBlock(Lcom/android/dx/rop/code/BasicBlock;I)V
    .locals 6

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 252
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    new-instance v3, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V

    invoke-virtual {v2, v3}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->setBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 263
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/InsnList;->forEach(Lcom/android/dx/rop/code/Insn$Visitor;)V

    .line 266
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 270
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 271
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v1

    .line 278
    if-ltz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 283
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 285
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSecondarySuccessor()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 293
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v3, v0}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/dx/dex/code/OutputCollector;->reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    new-instance v2, Lcom/android/dx/dex/code/TargetInsn;

    sget-object v3, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    .line 300
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    .line 302
    invoke-virtual {v5, v0}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 303
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, v2}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    goto :goto_0
.end method

.method private outputInstructions()V
    .locals 6

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    .line 228
    array-length v4, v3

    .line 231
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 232
    add-int/lit8 v0, v1, 0x1

    .line 233
    array-length v5, v3

    if-ne v0, v5, :cond_0

    const/4 v0, -0x1

    .line 234
    :goto_1
    aget v5, v3, v1

    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/android/dx/dex/code/RopTranslator;->outputBlock(Lcom/android/dx/rop/code/BasicBlock;I)V

    .line 231
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :cond_0
    aget v0, v3, v0

    goto :goto_1

    .line 236
    :cond_1
    return-void
.end method

.method private pickOrder()V
    .locals 14

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v6

    .line 313
    invoke-virtual {v6}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v7

    .line 314
    invoke-virtual {v6}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    .line 315
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v8

    .line 316
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v9

    move v0, v4

    .line 318
    :goto_0
    if-ge v0, v7, :cond_0

    .line 319
    invoke-virtual {v6, v0}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->set([II)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    new-array v10, v7, [I

    .line 336
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v0

    move v3, v4

    .line 337
    :goto_1
    if-eq v0, v2, :cond_a

    .line 352
    :goto_2
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    move-result-object v11

    .line 353
    invoke-virtual {v11}, Lcom/android/dx/util/IntList;->size()I

    move-result v12

    move v5, v4

    .line 355
    :goto_3
    if-ge v5, v12, :cond_1

    .line 356
    invoke-virtual {v11, v5}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 358
    invoke-static {v9, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_1
    move v1, v0

    move v0, v3

    .line 389
    :goto_4
    if-eq v1, v2, :cond_2

    .line 390
    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->clear([II)V

    .line 391
    invoke-static {v9, v1}, Lcom/android/dx/util/Bits;->clear([II)V

    .line 392
    aput v1, v10, v0

    .line 393
    add-int/lit8 v3, v0, 0x1

    .line 395
    invoke-virtual {v6, v1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v5

    .line 396
    invoke-virtual {v6, v5}, Lcom/android/dx/rop/code/BasicBlockList;->preferredSuccessorOf(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 398
    if-nez v0, :cond_6

    move v0, v3

    .line 338
    :cond_2
    invoke-static {v8, v4}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v1

    move v3, v0

    move v0, v1

    goto :goto_1

    .line 366
    :cond_3
    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v13

    if-nez v13, :cond_5

    .line 355
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 371
    :cond_5
    invoke-virtual {v6, v1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v13

    .line 372
    invoke-virtual {v13}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v13

    if-ne v13, v0, :cond_4

    .line 375
    invoke-static {v9, v1}, Lcom/android/dx/util/Bits;->set([II)V

    move v0, v1

    .line 376
    goto :goto_2

    .line 402
    :cond_6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    .line 403
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v1

    .line 405
    invoke-static {v8, v0}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    :goto_5
    move v1, v0

    move v0, v3

    .line 433
    goto :goto_4

    .line 411
    :cond_8
    if-eq v1, v0, :cond_9

    if-ltz v1, :cond_9

    .line 412
    invoke-static {v8, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 416
    goto :goto_5

    .line 422
    :cond_9
    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v5

    .line 423
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->size()I

    move-result v11

    move v1, v4

    .line 425
    :goto_6
    if-ge v1, v11, :cond_c

    .line 426
    invoke-virtual {v5, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 427
    invoke-static {v8, v0}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v12

    if-nez v12, :cond_7

    .line 425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 436
    :cond_a
    if-eq v3, v7, :cond_b

    .line 438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_b
    iput-object v10, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    .line 442
    return-void

    :cond_c
    move v0, v2

    goto :goto_5
.end method

.method public static translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;
    .locals 6

    .prologue
    .line 104
    new-instance v0, Lcom/android/dx/dex/code/RopTranslator;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/code/RopTranslator;-><init>(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)V

    .line 106
    invoke-direct {v0}, Lcom/android/dx/dex/code/RopTranslator;->translateAndGetResult()Lcom/android/dx/dex/code/DalvCode;

    move-result-object v0

    return-object v0
.end method

.method private translateAndGetResult()Lcom/android/dx/dex/code/DalvCode;
    .locals 4

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator;->pickOrder()V

    .line 213
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator;->outputInstructions()V

    .line 215
    new-instance v0, Lcom/android/dx/dex/code/StdCatchBuilder;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/dex/code/StdCatchBuilder;-><init>(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)V

    .line 218
    new-instance v1, Lcom/android/dx/dex/code/DalvCode;

    iget v2, p0, Lcom/android/dx/dex/code/RopTranslator;->positionInfo:I

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v3}, Lcom/android/dx/dex/code/OutputCollector;->getFinisher()Lcom/android/dx/dex/code/OutputFinisher;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/dx/dex/code/DalvCode;-><init>(ILcom/android/dx/dex/code/OutputFinisher;Lcom/android/dx/dex/code/CatchBuilder;)V

    return-object v1
.end method
