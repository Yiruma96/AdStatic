.class public abstract Lcom/android/dx/rop/code/Insn;
.super Ljava/lang/Object;
.source "Insn.java"

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/code/Insn$BaseVisitor;,
        Lcom/android/dx/rop/code/Insn$Visitor;
    }
.end annotation


# instance fields
.field private final opcode:Lcom/android/dx/rop/code/Rop;

.field private final position:Lcom/android/dx/rop/code/SourcePosition;

.field private final result:Lcom/android/dx/rop/code/RegisterSpec;

.field private final sources:Lcom/android/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "opcode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    if-nez p4, :cond_2

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p1, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    .line 66
    iput-object p2, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    .line 67
    iput-object p3, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 68
    iput-object p4, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 69
    return-void
.end method

.method private static equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 267
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract accept(Lcom/android/dx/rop/code/Insn$Visitor;)V
.end method

.method public final canThrow()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->canThrow()Z

    move-result v0

    return v0
.end method

.method public contentEquals(Lcom/android/dx/rop/code/Insn;)Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    .line 280
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 282
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dx/rop/code/Insn;->equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 283
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dx/rop/code/Insn;->equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->equalContents(Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copy()Lcom/android/dx/rop/code/Insn;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/Insn;->withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 79
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getCatches()Lcom/android/dx/rop/type/TypeList;
.end method

.method public getInlineString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 163
    :goto_0
    if-nez v1, :cond_2

    .line 173
    :cond_0
    :goto_1
    return-object v0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_0

    move-object v0, v1

    .line 173
    goto :goto_1
.end method

.method public final getOpcode()Lcom/android/dx/rop/code/Rop;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    return-object v0
.end method

.method public final getPosition()Lcom/android/dx/rop/code/SourcePosition;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    return-object v0
.end method

.method public final getResult()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public final getSources()Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 91
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getInlineString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/Insn;->toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x50

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 341
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 342
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    if-eqz p1, :cond_0

    .line 346
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    if-nez v0, :cond_2

    .line 352
    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :goto_0
    const-string v0, " <-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 361
    if-nez v2, :cond_3

    .line 362
    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :cond_2
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 364
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 365
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    iget-object v3, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getInlineString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/Insn;->toStringWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final toStringWithInline(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 308
    const-string v1, "Insn{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :cond_0
    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 326
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract withAddedCatch(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Insn;
.end method

.method public abstract withNewRegisters(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/Insn;
.end method

.method public abstract withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;
.end method

.method public withSourceLiteral()Lcom/android/dx/rop/code/Insn;
    .locals 0

    .prologue
    .line 246
    return-object p0
.end method
