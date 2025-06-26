.class public final Lcom/android/dx/dex/code/form/Form35c;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form35c.java"


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/android/dx/dex/code/form/Form35c;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form35c;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form35c;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 49
    return-void
.end method

.method private static explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-static {p0}, Lcom/android/dx/dex/code/form/Form35c;->wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I

    move-result v2

    .line 187
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    .line 189
    if-ne v2, v3, :cond_0

    .line 209
    :goto_0
    return-object p0

    .line 193
    :cond_0
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v2, v0

    .line 196
    :goto_1
    if-ge v2, v3, :cond_2

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 198
    invoke-virtual {v1, v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 199
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 200
    add-int/lit8 v5, v0, 0x1

    .line 201
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-static {v4, v6}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 200
    invoke-virtual {v1, v5, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 202
    add-int/lit8 v0, v0, 0x2

    .line 196
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 208
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    move-object p0, v1

    .line 209
    goto :goto_0
.end method

.method private static wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 150
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 152
    if-le v4, v6, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v2, v0

    .line 159
    :goto_1
    if-ge v2, v4, :cond_2

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 161
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    add-int/2addr v3, v0

    .line 168
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInNibble(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 173
    :cond_2
    if-gt v0, v6, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 6

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 103
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 105
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 106
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 114
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 113
    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInNibble(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-object v3
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->regListString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form35c;->cstString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

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
    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form35c;->cstComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    .line 64
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

    .line 77
    instance-of v1, p1, Lcom/android/dx/dex/code/CstInsn;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    .line 82
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    .line 84
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInShort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 89
    instance-of v2, v1, Lcom/android/dx/rop/cst/CstMethodRef;

    if-nez v2, :cond_2

    instance-of v1, v1, Lcom/android/dx/rop/cst/CstType;

    if-eqz v1, :cond_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form35c;->wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    move-object v0, p2

    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v6

    .line 124
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 125
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v8

    .line 126
    if-lez v8, :cond_0

    invoke-virtual {v7, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v5, v0

    .line 127
    :goto_0
    if-le v8, v2, :cond_1

    invoke-virtual {v7, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v4, v0

    .line 128
    :goto_1
    if-le v8, v3, :cond_2

    invoke-virtual {v7, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v3, v0

    .line 129
    :goto_2
    if-le v8, v9, :cond_3

    invoke-virtual {v7, v9}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v2, v0

    .line 130
    :goto_3
    if-le v8, v10, :cond_4

    invoke-virtual {v7, v10}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 134
    :goto_4
    invoke-static {v0, v8}, Lcom/android/dx/dex/code/form/Form35c;->makeByte(II)I

    move-result v0

    .line 133
    invoke-static {p2, v0}, Lcom/android/dx/dex/code/form/Form35c;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v0

    int-to-short v1, v6

    .line 136
    invoke-static {v5, v4, v3, v2}, Lcom/android/dx/dex/code/form/Form35c;->codeUnit(IIII)S

    move-result v2

    .line 132
    invoke-static {p1, v0, v1, v2}, Lcom/android/dx/dex/code/form/Form35c;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    .line 137
    return-void

    :cond_0
    move v5, v1

    .line 126
    goto :goto_0

    :cond_1
    move v4, v1

    .line 127
    goto :goto_1

    :cond_2
    move v3, v1

    .line 128
    goto :goto_2

    :cond_3
    move v2, v1

    .line 129
    goto :goto_3

    :cond_4
    move v0, v1

    .line 130
    goto :goto_4
.end method
