.class public Lcom/android/dx/ssa/LiteralOpUpgrader;
.super Ljava/lang/Object;
.source "LiteralOpUpgrader.java"


# instance fields
.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LiteralOpUpgrader;->tryReplacingWithConstant(Lcom/android/dx/ssa/NormalSsaInsn;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/dx/ssa/LiteralOpUpgrader;->isConstIntZeroOrKnownNull(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method private static isConstIntZeroOrKnownNull(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 72
    instance-of v2, v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    if-eqz v2, :cond_1

    .line 73
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    .line 74
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 74
    goto :goto_0

    :cond_1
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/dx/ssa/LiteralOpUpgrader;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/LiteralOpUpgrader;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 56
    invoke-direct {v0}, Lcom/android/dx/ssa/LiteralOpUpgrader;->run()V

    .line 57
    return-void
.end method

.method private replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {p3, v0, p2, p4}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    .line 192
    if-nez p4, :cond_0

    .line 193
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 194
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 199
    :goto_0
    new-instance v1, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 201
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, p1}, Lcom/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V

    .line 204
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    .line 206
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 197
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    goto :goto_0
.end method

.method private run()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/android/dx/ssa/Optimizer;->getAdvice()Lcom/android/dx/rop/code/TranslationAdvice;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v2, Lcom/android/dx/ssa/LiteralOpUpgrader$1;

    invoke-direct {v2, p0, v0}, Lcom/android/dx/ssa/LiteralOpUpgrader$1;-><init>(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/rop/code/TranslationAdvice;)V

    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 137
    return-void
.end method

.method private tryReplacingWithConstant(Lcom/android/dx/ssa/NormalSsaInsn;)Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v0}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 156
    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    .line 160
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v2, 0x38

    if-ne v0, v2, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 163
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 166
    sget-object v1, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    .line 169
    :cond_0
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
