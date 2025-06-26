.class public Lcom/android/dx/ssa/DeadCodeRemover;
.super Ljava/lang/Object;
.source "DeadCodeRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;
    }
.end annotation


# instance fields
.field private final regCount:I

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private final useList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 72
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->regCount:I

    .line 73
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->regCount:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    .line 74
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaInsn;)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v0

    return v0
.end method

.method private static hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z
    .locals 1

    .prologue
    .line 220
    if-nez p0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaInsn;->hasSideEffect()Z

    move-result v0

    goto :goto_0
.end method

.method private isCircularNoSideEffect(ILjava/util/BitSet;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 209
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 188
    invoke-static {v0}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 189
    goto :goto_0

    .line 193
    :cond_2
    if-nez p2, :cond_3

    .line 194
    new-instance p2, Ljava/util/BitSet;

    iget v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->regCount:I

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 198
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 200
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    .line 201
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_5

    .line 204
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_5
    move v0, v2

    .line 205
    goto :goto_0

    :cond_6
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/dx/ssa/DeadCodeRemover;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/DeadCodeRemover;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 61
    invoke-direct {v0}, Lcom/android/dx/ssa/DeadCodeRemover;->run()V

    .line 62
    return-void
.end method

.method private pruneDeadInstructions()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 133
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->computeReachability()V

    .line 137
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 138
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->isReachable()Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    .line 141
    :goto_0
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 143
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 144
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v8

    .line 147
    if-eqz v8, :cond_1

    .line 148
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    move v4, v3

    .line 152
    :goto_1
    if-ge v4, v8, :cond_2

    .line 153
    invoke-virtual {v7, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 154
    iget-object v10, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    aget-object v9, v10, v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 159
    if-nez v4, :cond_4

    .line 141
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 161
    instance-of v8, v1, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v8, :cond_5

    .line 162
    check-cast v1, Lcom/android/dx/ssa/PhiInsn;

    .line 163
    invoke-virtual {v1, v4}, Lcom/android/dx/ssa/PhiInsn;->removePhiRegister(Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_2

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v5}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    .line 170
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/dx/ssa/DeadCodeRemover;->pruneDeadInstructions()V

    .line 83
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v3, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;

    iget-object v4, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-direct {v3, v4}, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v0, v3}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 90
    iget-object v3, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->clear(I)V

    .line 92
    iget-object v3, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0, v0, v3}, Lcom/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v0}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v5

    move v0, v1

    .line 105
    :goto_1
    if-ge v0, v5, :cond_3

    .line 107
    invoke-virtual {v4, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 108
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 112
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 111
    invoke-virtual {v7, v8}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v7

    .line 110
    invoke-static {v7}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 117
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v2}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    .line 127
    return-void
.end method
