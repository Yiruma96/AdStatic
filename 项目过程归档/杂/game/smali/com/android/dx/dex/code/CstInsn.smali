.class public final Lcom/android/dx/dex/code/CstInsn;
.super Lcom/android/dx/dex/code/FixedSizeInsn;
.source "CstInsn.java"


# instance fields
.field private classIndex:I

.field private final constant:Lcom/android/dx/rop/cst/Constant;

.field private index:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 58
    if-nez p4, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constant == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p4, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    .line 63
    iput v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    .line 64
    iput v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    .line 65
    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassIndex()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-gez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "class index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    return v0
.end method

.method public getConstant()Lcom/android/dx/rop/cst/Constant;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getIndex()I
    .locals 3

    .prologue
    .line 117
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-gez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index not yet set for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    return v0
.end method

.method public hasClassIndex()Z
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClassIndex(I)V
    .locals 2

    .prologue
    .line 189
    if-gez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "class index already set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    iput p1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    .line 198
    return-void
.end method

.method public setIndex(I)V
    .locals 2

    .prologue
    .line 142
    if-gez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-ltz v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index already set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    iput p1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    .line 151
    return-void
.end method

.method public withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    .line 71
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 73
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-ltz v1, :cond_0

    .line 74
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 77
    :cond_0
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v1, :cond_1

    .line 78
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    .line 81
    :cond_1
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    .line 88
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lcom/android/dx/rop/cst/Constant;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 90
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-ltz v1, :cond_0

    .line 91
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 94
    :cond_0
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v1, :cond_1

    .line 95
    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    .line 98
    :cond_1
    return-object v0
.end method
