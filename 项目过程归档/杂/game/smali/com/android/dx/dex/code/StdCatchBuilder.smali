.class public final Lcom/android/dx/dex/code/StdCatchBuilder;
.super Ljava/lang/Object;
.source "StdCatchBuilder.java"

# interfaces
.implements Lcom/android/dx/dex/code/CatchBuilder;


# static fields
.field private static final MAX_CATCH_RANGE:I = 0xffff


# instance fields
.field private final addresses:Lcom/android/dx/dex/code/BlockAddresses;

.field private final method:Lcom/android/dx/rop/code/RopMethod;

.field private final order:[I


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    if-nez p3, :cond_2

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addresses == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    iput-object p1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    .line 70
    iput-object p2, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->order:[I

    .line 71
    iput-object p3, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    .line 72
    return-void
.end method

.method public static build(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 124
    array-length v7, p1

    .line 125
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v8

    .line 126
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    sget-object v3, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    move v6, v5

    move-object v2, v0

    .line 132
    :goto_0
    if-ge v6, v7, :cond_4

    .line 133
    aget v1, p1, v6

    invoke-virtual {v8, v1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->canThrow()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v2

    move-object v2, v3

    .line 132
    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v1, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->handlersFor(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v4

    .line 146
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v10

    if-nez v10, :cond_1

    move-object v0, v1

    move-object v2, v4

    .line 151
    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v3, v4}, Lcom/android/dx/dex/code/CatchHandlerList;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 155
    invoke-static {v2, v1, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->rangeIsValid(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 163
    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v10

    if-eqz v10, :cond_3

    .line 173
    invoke-static {v2, v0, v3, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    .line 175
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v1

    move-object v2, v4

    .line 180
    goto :goto_1

    .line 183
    :cond_4
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    invoke-static {v2, v0, v3, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    .line 188
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 195
    if-nez v3, :cond_6

    .line 196
    sget-object v0, Lcom/android/dx/dex/code/CatchTable;->EMPTY:Lcom/android/dx/dex/code/CatchTable;

    .line 206
    :goto_2
    return-object v0

    .line 199
    :cond_6
    new-instance v1, Lcom/android/dx/dex/code/CatchTable;

    invoke-direct {v1, v3}, Lcom/android/dx/dex/code/CatchTable;-><init>(I)V

    move v2, v5

    .line 201
    :goto_3
    if-ge v2, v3, :cond_7

    .line 202
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {v1, v2, v0}, Lcom/android/dx/dex/code/CatchTable;->set(ILcom/android/dx/dex/code/CatchTable$Entry;)V

    .line 201
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 205
    :cond_7
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchTable;->setImmutable()V

    move-object v0, v1

    .line 206
    goto :goto_2
.end method

.method private static handlersFor(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchHandlerList;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 218
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    .line 220
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v4

    .line 221
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v5

    .line 222
    invoke-interface {v5}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 225
    sget-object v0, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    .line 262
    :goto_0
    return-object v0

    .line 228
    :cond_0
    if-ne v4, v6, :cond_1

    if-ne v1, v0, :cond_2

    :cond_1
    if-eq v4, v6, :cond_3

    add-int/lit8 v6, v0, 0x1

    if-ne v1, v6, :cond_2

    .line 231
    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v1

    if-eq v4, v1, :cond_3

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen: weird successors list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    .line 245
    :goto_1
    if-ge v1, v0, :cond_4

    .line 246
    invoke-interface {v5, v1}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v4

    .line 247
    sget-object v6, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-virtual {v4, v6}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 248
    add-int/lit8 v0, v1, 0x1

    .line 253
    :cond_4
    new-instance v1, Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    .line 255
    :goto_2
    if-ge v2, v0, :cond_6

    .line 256
    new-instance v4, Lcom/android/dx/rop/cst/CstType;

    invoke-interface {v5, v2}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    .line 257
    invoke-virtual {v3, v2}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v6

    .line 258
    invoke-virtual {v6}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v6

    invoke-virtual {v1, v2, v4, v6}, Lcom/android/dx/dex/code/CatchHandlerList;->set(ILcom/android/dx/rop/cst/CstType;I)V

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 245
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    :cond_6
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchHandlerList;->setImmutable()V

    move-object v0, v1

    .line 262
    goto :goto_0
.end method

.method private static makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p3, p0}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    .line 284
    invoke-virtual {p3, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v1

    .line 286
    new-instance v2, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 287
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    invoke-direct {v2, v0, v1, p2}, Lcom/android/dx/dex/code/CatchTable$Entry;-><init>(IILcom/android/dx/dex/code/CatchHandlerList;)V

    return-object v2
.end method

.method private static rangeIsValid(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Z
    .locals 2

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    if-nez p1, :cond_1

    .line 307
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "end == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    invoke-virtual {p2, p0}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 312
    invoke-virtual {p2, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    .line 314
    sub-int v0, v1, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/android/dx/dex/code/CatchTable;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->order:[I

    iget-object v2, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-static {v0, v1, v2}, Lcom/android/dx/dex/code/StdCatchBuilder;->build(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable;

    move-result-object v0

    return-object v0
.end method

.method public getCatchTypes()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v3, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 98
    iget-object v0, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v5

    move v2, v1

    .line 101
    :goto_0
    if-ge v2, v5, :cond_1

    .line 102
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v6

    .line 104
    invoke-interface {v6}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v7

    move v0, v1

    .line 106
    :goto_1
    if-ge v0, v7, :cond_0

    .line 107
    invoke-interface {v6, v0}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 111
    :cond_1
    return-object v3
.end method

.method public hasAnyCatches()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v3

    move v1, v0

    .line 84
    :goto_0
    if-ge v1, v3, :cond_0

    .line 85
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v4

    .line 87
    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 92
    :cond_0
    return v0

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
