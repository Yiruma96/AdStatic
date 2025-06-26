.class public final Lcom/android/dx/rop/code/RopMethod;
.super Ljava/lang/Object;
.source "RopMethod.java"


# instance fields
.field private final blocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private exitPredecessors:Lcom/android/dx/util/IntList;

.field private final firstLabel:I

.field private predecessors:[Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/BasicBlockList;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "blocks == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-gez p2, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstLabel < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    .line 61
    iput p2, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    .line 63
    iput-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    .line 64
    iput-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    .line 65
    return-void
.end method

.method private calcPredecessors()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v4

    .line 153
    new-array v5, v4, [Lcom/android/dx/util/IntList;

    .line 154
    new-instance v6, Lcom/android/dx/util/IntList;

    invoke-direct {v6, v12}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 155
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v7

    move v3, v1

    .line 161
    :goto_0
    if-ge v3, v7, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v8

    .line 164
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v9

    .line 165
    invoke-virtual {v9}, Lcom/android/dx/util/IntList;->size()I

    move-result v10

    .line 166
    if-nez v10, :cond_1

    .line 168
    invoke-virtual {v6, v8}, Lcom/android/dx/util/IntList;->add(I)V

    .line 161
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 170
    :goto_1
    if-ge v2, v10, :cond_0

    .line 171
    invoke-virtual {v9, v2}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 172
    aget-object v0, v5, v11

    .line 173
    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lcom/android/dx/util/IntList;

    invoke-direct {v0, v12}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 175
    aput-object v0, v5, v11

    .line 177
    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/dx/util/IntList;->add(I)V

    .line 170
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 183
    :goto_2
    if-ge v0, v4, :cond_5

    .line 184
    aget-object v1, v5, v0

    .line 185
    if-eqz v1, :cond_4

    .line 186
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->sort()V

    .line 187
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 183
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    :cond_5
    invoke-virtual {v6}, Lcom/android/dx/util/IntList;->sort()V

    .line 192
    invoke-virtual {v6}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 200
    iget v0, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    aget-object v0, v5, v0

    if-nez v0, :cond_6

    .line 201
    iget v0, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    sget-object v1, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    aput-object v1, v5, v0

    .line 204
    :cond_6
    iput-object v5, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    .line 205
    iput-object v6, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    .line 206
    return-void
.end method


# virtual methods
.method public getBlocks()Lcom/android/dx/rop/code/BasicBlockList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    return-object v0
.end method

.method public getExitPredecessors()Lcom/android/dx/util/IntList;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/android/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    return-object v0
.end method

.method public getFirstLabel()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    return v0
.end method

.method public labelToPredecessors(I)Lcom/android/dx/util/IntList;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    aget-object v0, v0, p1

    .line 100
    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such block: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/RopMethod;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/BasicBlockList;->withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    iget v2, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    .line 133
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    iput-object v1, v0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    .line 141
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    iput-object v1, v0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    .line 144
    :cond_0
    return-object v0
.end method
