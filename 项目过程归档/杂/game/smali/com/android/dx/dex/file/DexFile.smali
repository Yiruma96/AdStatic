.class public final Lcom/android/dx/dex/file/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# instance fields
.field private final byteData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final classData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

.field private dexOptions:Lcom/android/dx/dex/DexOptions;

.field private dumpWidth:I

.field private final fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

.field private fileSize:I

.field private final header:Lcom/android/dx/dex/file/HeaderSection;

.field private final map:Lcom/android/dx/dex/file/MixedItemSection;

.field private final methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

.field private final protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

.field private final sections:[Lcom/android/dx/dex/file/Section;

.field private final stringData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final stringIds:Lcom/android/dx/dex/file/StringIdsSection;

.field private final typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

.field private final typeLists:Lcom/android/dx/dex/file/MixedItemSection;

.field private final wordData:Lcom/android/dx/dex/file/MixedItemSection;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 114
    new-instance v0, Lcom/android/dx/dex/file/HeaderSection;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/HeaderSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    .line 115
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v5, p0, v4, v1}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    .line 116
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    const-string v1, "word_data"

    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v1, p0, v4, v2}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    .line 117
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    const-string v1, "string_data"

    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    .line 119
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v5, p0, v3, v1}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    .line 120
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    const-string v1, "byte_data"

    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    .line 121
    new-instance v0, Lcom/android/dx/dex/file/StringIdsSection;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/StringIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    .line 122
    new-instance v0, Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/TypeIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    .line 123
    new-instance v0, Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/ProtoIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    .line 124
    new-instance v0, Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/FieldIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    .line 125
    new-instance v0, Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/MethodIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    .line 126
    new-instance v0, Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/ClassDefsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    .line 127
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    const-string v1, "map"

    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v1, p0, v4, v2}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    .line 133
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/dx/dex/file/Section;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    .line 139
    const/16 v0, 0x4f

    iput v0, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    .line 140
    return-void
.end method

.method private static calcChecksum([B)V
    .locals 3

    .prologue
    .line 654
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 656
    const/16 v1, 0xc

    array-length v2, p0

    add-int/lit8 v2, v2, -0xc

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/zip/Adler32;->update([BII)V

    .line 658
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 660
    const/16 v1, 0x8

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    .line 661
    const/16 v1, 0x9

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 662
    const/16 v1, 0xa

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 663
    const/16 v1, 0xb

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 664
    return-void
.end method

.method private static calcSignature([B)V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 629
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 634
    const/16 v1, 0x20

    array-length v2, p0

    add-int/lit8 v2, v2, -0x20

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 637
    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0

    .line 638
    if-eq v0, v3, :cond_0

    .line 639
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected digest write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 630
    :catch_1
    move-exception v0

    .line 631
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 645
    :cond_0
    return-void
.end method

.method private toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 502
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/ClassDefsSection;->prepare()V

    .line 503
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 504
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 505
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 506
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MethodIdsSection;->prepare()V

    .line 507
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/FieldIdsSection;->prepare()V

    .line 508
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/ProtoIdsSection;->prepare()V

    .line 509
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 510
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/TypeIdsSection;->prepare()V

    .line 511
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/StringIdsSection;->prepare()V

    .line 512
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 513
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/HeaderSection;->prepare()V

    .line 517
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    array-length v5, v1

    move v4, v3

    move v1, v3

    .line 520
    :goto_0
    if-ge v4, v5, :cond_3

    .line 521
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    aget-object v2, v2, v4

    .line 522
    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/Section;->setFileOffset(I)I

    move-result v6

    .line 523
    if-ge v6, v1, :cond_0

    .line 524
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bogus placement for section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    if-ne v2, v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    iget-object v7, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-static {v1, v7}, Lcom/android/dx/dex/file/MapItem;->addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V

    .line 535
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 538
    :cond_1
    instance-of v1, v2, Lcom/android/dx/dex/file/MixedItemSection;

    if-eqz v1, :cond_2

    .line 543
    move-object v0, v2

    check-cast v0, Lcom/android/dx/dex/file/MixedItemSection;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->placeItems()V

    .line 546
    :cond_2
    invoke-virtual {v2}, Lcom/android/dx/dex/file/Section;->writeSize()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int v2, v6, v1

    .line 520
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v2

    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while writing section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    move-result-object v1

    throw v1

    .line 555
    :cond_3
    iput v1, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    .line 556
    iget v1, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    new-array v2, v1, [B

    .line 557
    new-instance v4, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v4, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>([B)V

    .line 559
    if-eqz p1, :cond_4

    .line 560
    iget v1, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    invoke-virtual {v4, v1, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->enableAnnotations(IZ)V

    .line 563
    :cond_4
    :goto_1
    if-ge v3, v5, :cond_7

    .line 565
    :try_start_1
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    aget-object v1, v1, v3

    .line 566
    invoke-virtual {v1}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v7

    sub-int/2addr v6, v7

    .line 567
    if-gez v6, :cond_5

    .line 568
    new-instance v1, Lcom/android/dx/util/ExceptionWithContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excess write of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    :catch_1
    move-exception v1

    .line 575
    instance-of v2, v1, Lcom/android/dx/util/ExceptionWithContext;

    if-eqz v2, :cond_6

    .line 576
    check-cast v1, Lcom/android/dx/util/ExceptionWithContext;

    .line 580
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...while writing section "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 581
    throw v1

    .line 571
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeZeroes(I)V

    .line 572
    invoke-virtual {v1, v4}, Lcom/android/dx/dex/file/Section;->writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 563
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 578
    :cond_6
    new-instance v2, Lcom/android/dx/util/ExceptionWithContext;

    invoke-direct {v2, v1}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_2

    .line 585
    :cond_7
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v3, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-eq v1, v3, :cond_8

    .line 586
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "foreshortened write"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_8
    invoke-static {v2}, Lcom/android/dx/dex/file/DexFile;->calcSignature([B)V

    .line 592
    invoke-static {v2}, Lcom/android/dx/dex/file/DexFile;->calcChecksum([B)V

    .line 594
    if-eqz p1, :cond_9

    .line 595
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    const-string v3, "\nmethod code index:\n\n"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/dx/dex/file/MixedItemSection;->writeIndexAnnotation(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/file/ItemType;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getStatistics()Lcom/android/dx/dex/file/Statistics;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/dx/dex/file/Statistics;->writeAnnotation(Lcom/android/dx/util/AnnotatedOutput;)V

    .line 598
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->finishAnnotating()V

    .line 601
    :cond_9
    return-object v4
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/ClassDefItem;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ClassDefsSection;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    .line 164
    return-void
.end method

.method findItemOrNull(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 1

    .prologue
    .line 473
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 475
    :cond_0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_1
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_2
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getByteData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getClassData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getClassDefs()Lcom/android/dx/dex/file/ClassDefsSection;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    return-object v0
.end method

.method public getClassOrNull(Ljava/lang/String;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 3

    .prologue
    .line 175
    :try_start_0
    invoke-static {p1}, Lcom/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    new-instance v2, Lcom/android/dx/rop/cst/CstType;

    invoke-direct {v2, v0}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/ClassDefsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/ClassDefItem;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDexOptions()Lcom/android/dx/dex/DexOptions;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    return-object v0
.end method

.method getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    return-object v0
.end method

.method getFileSize()I
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-gez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    return v0
.end method

.method getFirstDataSection()Lcom/android/dx/dex/file/Section;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getLastDataSection()Lcom/android/dx/dex/file/Section;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getMap()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    return-object v0
.end method

.method getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    return-object v0
.end method

.method public getStatistics()Lcom/android/dx/dex/file/Statistics;
    .locals 5

    .prologue
    .line 610
    new-instance v1, Lcom/android/dx/dex/file/Statistics;

    invoke-direct {v1}, Lcom/android/dx/dex/file/Statistics;-><init>()V

    .line 612
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 613
    invoke-virtual {v1, v4}, Lcom/android/dx/dex/file/Statistics;->addAll(Lcom/android/dx/dex/file/Section;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_0
    return-object v1
.end method

.method getStringData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getStringIds()Lcom/android/dx/dex/file/StringIdsSection;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    return-object v0
.end method

.method getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    return-object v0
.end method

.method getTypeLists()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getWordData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method internIfAppropriate(Lcom/android/dx/rop/cst/Constant;)V
    .locals 2

    .prologue
    .line 444
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/dex/file/StringIdItem;

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;

    goto :goto_0

    .line 448
    :cond_2
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    goto :goto_0

    .line 450
    :cond_3
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    .line 452
    :cond_4
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_5

    .line 453
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    .line 454
    :cond_5
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setDumpWidth(I)V
    .locals 2

    .prologue
    .line 231
    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dumpWidth < 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iput p1, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    .line 236
    return-void
.end method

.method public toDex(Ljava/io/Writer;Z)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 216
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object v1

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v1, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    .line 222
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object v0

    return-object v0

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 194
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object v1

    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 200
    :cond_0
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    .line 203
    :cond_1
    return-void

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
