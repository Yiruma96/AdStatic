.class public final Lcom/android/dx/dex/code/form/Form3rc;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form3rc.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/android/dx/dex/code/form/Form3rc;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form3rc;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form3rc;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x3

    return v0
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->regRangeString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form3rc;->cstString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form3rc;->cstComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    instance-of v1, p1, Lcom/android/dx/dex/code/CstInsn;

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    .line 75
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    .line 76
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 78
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInShort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    instance-of v1, v2, Lcom/android/dx/rop/cst/CstMethodRef;

    if-nez v1, :cond_2

    instance-of v1, v2, Lcom/android/dx/rop/cst/CstType;

    if-eqz v1, :cond_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    .line 90
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->isRegListSequential(Lcom/android/dx/rop/code/RegisterSpecList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInShort(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v1

    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInByte(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    move-object v0, p2

    .line 100
    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v3

    .line 101
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 102
    :goto_0
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v1

    .line 104
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form3rc;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v1

    int-to-short v2, v3

    int-to-short v0, v0

    invoke-static {p1, v1, v2, v0}, Lcom/android/dx/dex/code/form/Form3rc;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    .line 105
    return-void

    .line 101
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    goto :goto_0
.end method
