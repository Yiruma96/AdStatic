.class public final Lcom/android/dx/rop/code/LocalVariableInfo;
.super Lcom/android/dx/util/MutabilityControl;
.source "LocalVariableInfo.java"


# instance fields
.field private final blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final insnAssignments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/dx/rop/code/Insn;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/dx/util/MutabilityControl;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v1

    .line 63
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v2

    iput v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->regCount:I

    .line 64
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecSet;

    iget v3, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->regCount:I

    invoke-direct {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    iput-object v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 65
    new-array v1, v1, [Lcom/android/dx/rop/code/RegisterSpecSet;

    iput-object v1, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    .line 67
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getInstructionCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    .line 69
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 70
    return-void
.end method

.method private getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 2

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAssignment(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/dx/rop/code/LocalVariableInfo;->throwIfImmutable()V

    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "insn == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    if-nez p2, :cond_1

    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public debugDump()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 225
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    if-ne v2, v3, :cond_1

    .line 231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%04x: empty set\n"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    .line 233
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%04x: %s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aget-object v5, v5, v0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    .line 236
    :cond_2
    return-void
.end method

.method public getAssignment(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public getAssignmentCount()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    goto :goto_0
.end method

.method public getStarts(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    return-object v0
.end method

.method public mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    .line 112
    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/code/LocalVariableInfo;->setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    move v0, v1

    .line 131
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 118
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v0, p2, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->intersect(Lcom/android/dx/rop/code/RegisterSpecSet;Z)V

    .line 124
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/rop/code/LocalVariableInfo;->setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    move v0, v1

    .line 131
    goto :goto_0
.end method

.method public mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecSet;

    iget v1, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->regCount:I

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    goto :goto_0
.end method

.method public setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/dx/rop/code/LocalVariableInfo;->throwIfImmutable()V

    .line 82
    if-nez p2, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
