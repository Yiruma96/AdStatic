.class public final Lcom/android/dx/rop/code/RegisterSpecList;
.super Lcom/android/dx/util/FixedSizeList;
.source "RegisterSpecList.java"

# interfaces
.implements Lcom/android/dx/rop/type/TypeList;


# static fields
.field public static final EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    sput-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 104
    return-void
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 42
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 57
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 73
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 74
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 92
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 93
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 94
    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public getRegistersSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 204
    :goto_0
    if-ge v2, v3, :cond_0

    .line 205
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v0

    .line 208
    if-le v0, v1, :cond_1

    .line 204
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 214
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getType(I)Lcom/android/dx/rop/type/Type;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getWordCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    move v1, v0

    .line 116
    :goto_0
    if-ge v0, v2, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v3

    add-int/2addr v1, v3

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return v1
.end method

.method public indexOfRegister(I)I
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 169
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 179
    :goto_1
    return v0

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public set(ILcom/android/dx/rop/code/RegisterSpec;)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 190
    return-void
.end method

.method public specForRegister(I)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 158
    :goto_1
    return-object v0

    .line 148
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public subset(Ljava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    sub-int/2addr v1, v2

    .line 307
    if-nez v1, :cond_0

    .line 308
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 325
    :goto_0
    return-object v0

    .line 311
    :cond_0
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v1, v0

    .line 314
    :goto_1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 315
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    .line 314
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_3
    move-object v0, v2

    .line 325
    goto :goto_0
.end method

.method public withAddedType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/TypeList;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withExpandedRegisters(IZLjava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v8

    .line 378
    if-nez v8, :cond_0

    .line 407
    :goto_0
    return-object p0

    .line 383
    :cond_0
    new-instance v3, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v8}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v7, v1

    move v2, p2

    move v4, p1

    .line 385
    :goto_1
    if-ge v7, v8, :cond_5

    .line 386
    invoke-virtual {p0, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    .line 387
    if-nez p3, :cond_2

    move v5, v6

    .line 389
    :goto_2
    if-eqz v5, :cond_4

    .line 390
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 391
    if-nez v2, :cond_1

    .line 392
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    .line 398
    :cond_1
    :goto_3
    if-eqz v2, :cond_7

    move v0, v1

    .line 385
    :goto_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v0

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {p3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_2

    .line 395
    :cond_4
    invoke-virtual {v3, v7, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    goto :goto_3

    .line 403
    :cond_5
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_6
    move-object p0, v3

    .line 407
    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public withFirst(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 227
    new-instance v3, Lcom/android/dx/rop/code/RegisterSpecList;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v0, v1

    .line 229
    :goto_0
    if-ge v0, v2, :cond_0

    .line 230
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v3, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 238
    :cond_1
    return-object v3
.end method

.method public withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    .line 339
    if-nez v3, :cond_0

    .line 357
    :goto_0
    return-object p0

    .line 344
    :cond_0
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 346
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    .line 348
    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 346
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_3
    move-object p0, v1

    .line 357
    goto :goto_0
.end method

.method public withoutFirst()Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 251
    if-nez v2, :cond_1

    .line 252
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 255
    :cond_1
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 257
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 258
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    goto :goto_0
.end method

.method public withoutLast()Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 278
    if-nez v2, :cond_1

    .line 279
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 284
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 285
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    goto :goto_0
.end method
