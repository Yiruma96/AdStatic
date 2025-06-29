.class public final Lcom/android/dx/dex/file/ValueEncoder;
.super Ljava/lang/Object;
.source "ValueEncoder.java"


# static fields
.field private static final VALUE_ANNOTATION:I = 0x1d

.field private static final VALUE_ARRAY:I = 0x1c

.field private static final VALUE_BOOLEAN:I = 0x1f

.field private static final VALUE_BYTE:I = 0x0

.field private static final VALUE_CHAR:I = 0x3

.field private static final VALUE_DOUBLE:I = 0x11

.field private static final VALUE_ENUM:I = 0x1b

.field private static final VALUE_FIELD:I = 0x19

.field private static final VALUE_FLOAT:I = 0x10

.field private static final VALUE_INT:I = 0x4

.field private static final VALUE_LONG:I = 0x6

.field private static final VALUE_METHOD:I = 0x1a

.field private static final VALUE_NULL:I = 0x1e

.field private static final VALUE_SHORT:I = 0x2

.field private static final VALUE_STRING:I = 0x17

.field private static final VALUE_TYPE:I = 0x18


# instance fields
.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final out:Lcom/android/dx/util/AnnotatedOutput;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iput-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    .line 118
    iput-object p2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    .line 119
    return-void
.end method

.method public static addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/annotation/Annotation;)V
    .locals 4

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    .line 496
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;

    .line 498
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 499
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/dex/file/StringIdItem;

    .line 500
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method public static addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V
    .locals 4

    .prologue
    .line 515
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_1

    .line 516
    check-cast p1, Lcom/android/dx/rop/cst/CstAnnotation;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/annotation/Annotation;)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstArray;

    if-eqz v0, :cond_2

    .line 518
    check-cast p1, Lcom/android/dx/rop/cst/CstArray;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstArray;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    move-result v2

    .line 520
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 521
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/cst/CstArray$List;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 524
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/DexFile;->internIfAppropriate(Lcom/android/dx/rop/cst/Constant;)V

    goto :goto_0
.end method

.method public static constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    invoke-static {p0}, Lcom/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 368
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 369
    const-string v0, "null"

    .line 378
    :goto_0
    return-object v0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static constantToValueType(Lcom/android/dx/rop/cst/Constant;)I
    .locals 2

    .prologue
    .line 219
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstByte;

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 221
    :cond_0
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstShort;

    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x2

    goto :goto_0

    .line 223
    :cond_1
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstChar;

    if-eqz v0, :cond_2

    .line 224
    const/4 v0, 0x3

    goto :goto_0

    .line 225
    :cond_2
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstInteger;

    if-eqz v0, :cond_3

    .line 226
    const/4 v0, 0x4

    goto :goto_0

    .line 227
    :cond_3
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstLong;

    if-eqz v0, :cond_4

    .line 228
    const/4 v0, 0x6

    goto :goto_0

    .line 229
    :cond_4
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstFloat;

    if-eqz v0, :cond_5

    .line 230
    const/16 v0, 0x10

    goto :goto_0

    .line 231
    :cond_5
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstDouble;

    if-eqz v0, :cond_6

    .line 232
    const/16 v0, 0x11

    goto :goto_0

    .line 233
    :cond_6
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_7

    .line 234
    const/16 v0, 0x17

    goto :goto_0

    .line 235
    :cond_7
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_8

    .line 236
    const/16 v0, 0x18

    goto :goto_0

    .line 237
    :cond_8
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_9

    .line 238
    const/16 v0, 0x19

    goto :goto_0

    .line 239
    :cond_9
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstMethodRef;

    if-eqz v0, :cond_a

    .line 240
    const/16 v0, 0x1a

    goto :goto_0

    .line 241
    :cond_a
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_b

    .line 242
    const/16 v0, 0x1b

    goto :goto_0

    .line 243
    :cond_b
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstArray;

    if-eqz v0, :cond_c

    .line 244
    const/16 v0, 0x1c

    goto :goto_0

    .line 245
    :cond_c
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_d

    .line 246
    const/16 v0, 0x1d

    goto :goto_0

    .line 247
    :cond_d
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstKnownNull;

    if-eqz v0, :cond_e

    .line 248
    const/16 v0, 0x1e

    goto :goto_0

    .line 249
    :cond_e
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstBoolean;

    if-eqz v0, :cond_f

    .line 250
    const/16 v0, 0x1f

    goto :goto_0

    .line 252
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeRightZeroExtendedValue(IJ)V
    .locals 6

    .prologue
    .line 458
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 459
    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 464
    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 467
    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long v2, p2, v1

    .line 473
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    add-int/lit8 v4, v0, -0x1

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v4, p1

    invoke-interface {v1, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 476
    :goto_0
    if-lez v0, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-interface {v1, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 478
    const/16 v1, 0x8

    shr-long/2addr v2, v1

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 481
    :cond_1
    return-void
.end method

.method private writeSignedIntegralValue(IJ)V
    .locals 4

    .prologue
    .line 398
    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    .line 399
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    .line 402
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 408
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 411
    :goto_0
    if-lez v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 413
    const/16 v1, 0x8

    shr-long/2addr p2, v1

    .line 414
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method private writeUnsignedIntegralValue(IJ)V
    .locals 4

    .prologue
    .line 427
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 428
    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 433
    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 439
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 442
    :goto_0
    if-lez v0, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 444
    const/16 v1, 0x8

    shr-long/2addr p2, v1

    .line 445
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 447
    :cond_1
    return-void
.end method


# virtual methods
.method public writeAnnotation(Lcom/android/dx/rop/annotation/Annotation;Z)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 308
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v4

    .line 310
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    .line 313
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v5

    .line 315
    if-eqz v1, :cond_0

    .line 316
    iget-object v6, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  type_idx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " // "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 317
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-interface {v6, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v0

    invoke-interface {v3, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 322
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 325
    if-eqz v1, :cond_1

    .line 326
    iget-object v5, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 329
    :cond_1
    iget-object v5, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v5, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 332
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 333
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v6

    .line 334
    invoke-virtual {v4, v6}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    move-result v7

    .line 335
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    .line 337
    if-eqz v1, :cond_6

    .line 338
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  elements["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 339
    add-int/lit8 v0, v3, 0x1

    .line 340
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    name_idx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " // "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 341
    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-interface {v3, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 344
    :goto_2
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v3, v7}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 346
    if-eqz v1, :cond_2

    .line 347
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 350
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/android/dx/rop/cst/Constant;)V

    move v3, v0

    .line 351
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 308
    goto/16 :goto_0

    .line 353
    :cond_4
    if-eqz v1, :cond_5

    .line 354
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->endAnnotation()V

    .line 356
    :cond_5
    return-void

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method public writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 271
    :goto_0
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstArray;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    move-result v3

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget-object v4, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 278
    :cond_0
    iget-object v4, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v4, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 280
    :goto_1
    if-ge v1, v3, :cond_3

    .line 281
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/cst/CstArray$List;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    .line 282
    if-eqz v0, :cond_1

    .line 283
    iget-object v5, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 284
    invoke-static {v4}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 283
    invoke-interface {v5, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 286
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/android/dx/rop/cst/Constant;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 270
    goto :goto_0

    .line 289
    :cond_3
    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->endAnnotation()V

    .line 292
    :cond_4
    return-void
.end method

.method public writeConstant(Lcom/android/dx/rop/cst/Constant;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {p1}, Lcom/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 130
    packed-switch v0, :pswitch_data_0

    .line 202
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_1
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v2

    .line 136
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeSignedIntegralValue(IJ)V

    .line 205
    :goto_0
    return-void

    .line 140
    :pswitch_2
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v2

    .line 141
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 146
    :pswitch_3
    check-cast p1, Lcom/android/dx/rop/cst/CstFloat;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstFloat;->getLongBits()J

    move-result-wide v2

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    .line 147
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeRightZeroExtendedValue(IJ)V

    goto :goto_0

    .line 151
    :pswitch_4
    check-cast p1, Lcom/android/dx/rop/cst/CstDouble;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstDouble;->getLongBits()J

    move-result-wide v2

    .line 152
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeRightZeroExtendedValue(IJ)V

    goto :goto_0

    .line 156
    :pswitch_5
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    move-result v1

    .line 157
    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 161
    :pswitch_6
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    check-cast p1, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v1

    .line 162
    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 166
    :pswitch_7
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    check-cast p1, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I

    move-result v1

    .line 167
    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 171
    :pswitch_8
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v1

    check-cast p1, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result v1

    .line 172
    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 176
    :pswitch_9
    check-cast p1, Lcom/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v2}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I

    move-result v1

    .line 178
    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 182
    :pswitch_a
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 183
    check-cast p1, Lcom/android/dx/rop/cst/CstArray;

    invoke-virtual {p0, p1, v2}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V

    goto/16 :goto_0

    .line 187
    :pswitch_b
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 188
    check-cast p1, Lcom/android/dx/rop/cst/CstAnnotation;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/android/dx/rop/annotation/Annotation;Z)V

    goto/16 :goto_0

    .line 193
    :pswitch_c
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    invoke-interface {v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto/16 :goto_0

    .line 197
    :pswitch_d
    check-cast p1, Lcom/android/dx/rop/cst/CstBoolean;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstBoolean;->getIntBits()I

    move-result v1

    .line 198
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
