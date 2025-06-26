.class public final Lcom/android/dx/dex/code/DalvInsnList;
.super Lcom/android/dx/util/FixedSizeList;
.source "DalvInsnList.java"


# instance fields
.field private final regCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 76
    iput p2, p0, Lcom/android/dx/dex/code/DalvInsnList;->regCount:I

    .line 77
    return-void
.end method

.method public static makeImmutable(Ljava/util/ArrayList;I)Lcom/android/dx/dex/code/DalvInsnList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;I)",
            "Lcom/android/dx/dex/code/DalvInsnList;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 59
    new-instance v3, Lcom/android/dx/dex/code/DalvInsnList;

    invoke-direct {v3, v2, p1}, Lcom/android/dx/dex/code/DalvInsnList;-><init>(II)V

    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 62
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v3, v1, v0}, Lcom/android/dx/dex/code/DalvInsnList;->set(ILcom/android/dx/dex/code/DalvInsn;)V

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsnList;->setImmutable()V

    .line 66
    return-object v3
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 115
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getNextAddress()I

    move-result v0

    goto :goto_0
.end method

.method public debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 261
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 264
    :try_start_0
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 226
    new-instance v2, Lcom/android/dx/util/IndentingWriter;

    invoke-direct {v2, p1, v0, p2}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v3

    move v1, v0

    .line 230
    :goto_0
    if-ge v1, v3, :cond_3

    .line 231
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 234
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_2

    .line 235
    :cond_0
    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p3}, Lcom/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_1
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v2, v0}, Lcom/android/dx/util/IndentingWriter;->write(Ljava/lang/String;)V

    .line 230
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {v2}, Lcom/android/dx/util/IndentingWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    return-object v0
.end method

.method public getOutsSize()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v6

    move v5, v3

    move v4, v3

    .line 191
    :goto_0
    if-ge v5, v6, :cond_4

    .line 192
    invoke-virtual {p0, v5}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 194
    instance-of v1, v0, Lcom/android/dx/dex/code/CstInsn;

    if-nez v1, :cond_1

    move v0, v4

    .line 191
    :cond_0
    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 198
    check-cast v1, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 200
    instance-of v2, v1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-nez v2, :cond_2

    move v0, v4

    .line 201
    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    move-result v0

    const/16 v2, 0x71

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    move-object v0, v1

    .line 206
    check-cast v0, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    .line 207
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getParameterWordCount(Z)I

    move-result v0

    .line 209
    if-gt v0, v4, :cond_0

    move v0, v4

    goto :goto_1

    :cond_3
    move v2, v3

    .line 205
    goto :goto_2

    .line 214
    :cond_4
    return v4
.end method

.method public getRegistersSize()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/dx/dex/code/DalvInsnList;->regCount:I

    return v0
.end method

.method public set(ILcom/android/dx/dex/code/DalvInsn;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/DalvInsnList;->set0(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v3

    .line 127
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v4

    .line 129
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->isVerbose()Z

    move-result v5

    move v2, v1

    .line 132
    :goto_0
    if-ge v2, v4, :cond_4

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 134
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 137
    if-nez v6, :cond_0

    if-eqz v5, :cond_2

    .line 138
    :cond_0
    const-string v7, "  "

    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getAnnotationWidth()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_1
    if-eqz v0, :cond_3

    .line 145
    invoke-interface {p1, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 132
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 146
    :cond_3
    if-eqz v6, :cond_1

    .line 147
    const-string v0, ""

    invoke-interface {p1, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_2

    .line 152
    :cond_4
    :goto_3
    if-ge v1, v4, :cond_5

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/DalvInsn;

    .line 155
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/DalvInsn;->writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 156
    :catch_0
    move-exception v1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    move-result-object v0

    throw v0

    .line 163
    :cond_5
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 164
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write length mismatch; expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but actually wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_6
    return-void
.end method
