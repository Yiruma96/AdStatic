.class public abstract Lcom/android/dx/ssa/SsaInsn;
.super Ljava/lang/Object;
.source "SsaInsn.java"

# interfaces
.implements Lcom/android/dx/util/ToHuman;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/SsaInsn$Visitor;
    }
.end annotation


# instance fields
.field private final block:Lcom/android/dx/ssa/SsaBasicBlock;

.field private result:Lcom/android/dx/rop/code/RegisterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/android/dx/ssa/SsaInsn;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 45
    iput-object p1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 46
    return-void
.end method

.method public static makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-direct {v0, p0, p1}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lcom/android/dx/ssa/SsaInsn$Visitor;)V
.end method

.method public abstract canThrow()Z
.end method

.method public changeResultReg(I)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 129
    :cond_0
    return-void
.end method

.method public clone()Lcom/android/dx/ssa/SsaInsn;
    .locals 3

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaInsn;->clone()Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    return-object v0
.end method

.method public getBlock()Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    return-object v0
.end method

.method public getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getOpcode()Lcom/android/dx/rop/code/Rop;
.end method

.method public abstract getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;
.end method

.method public getResult()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public abstract getSources()Lcom/android/dx/rop/code/RegisterSpecList;
.end method

.method public abstract hasSideEffect()Z
.end method

.method public isMoveException()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isNormalMoveInsn()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPhiOrMove()Z
.end method

.method public isRegASource(I)Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->specForRegister(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResultReg(I)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mapRegisters(Lcom/android/dx/ssa/RegisterMapper;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 155
    iget-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1, v1}, Lcom/android/dx/ssa/RegisterMapper;->map(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 156
    iget-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/android/dx/ssa/SsaMethod;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/dx/ssa/SsaMethod;->updateOneDefinition(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    .line 158
    return-void
.end method

.method public abstract mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V
.end method

.method protected setResult(Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 2

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 89
    return-void
.end method

.method public final setResultLocal(Lcom/android/dx/rop/code/LocalItem;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 140
    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 141
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 143
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    .line 142
    invoke-static {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 145
    :cond_1
    return-void
.end method

.method public abstract toRopInsn()Lcom/android/dx/rop/code/Insn;
.end method
