.class public Lcom/android/vending/expansion/zipfile/ZipResourceFile;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    }
.end annotation


# static fields
.field static final LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "zipro"

.field static final kCDECRC:I = 0x10

.field static final kCDECommentLen:I = 0x20

.field static final kCDECompLen:I = 0x14

.field static final kCDEExtraLen:I = 0x1e

.field static final kCDELen:I = 0x2e

.field static final kCDELocalOffset:I = 0x2a

.field static final kCDEMethod:I = 0xa

.field static final kCDEModWhen:I = 0xc

.field static final kCDENameLen:I = 0x1c

.field static final kCDESignature:I = 0x2014b50

.field static final kCDEUncompLen:I = 0x18

.field static final kCompressDeflated:I = 0x8

.field static final kCompressStored:I = 0x0

.field static final kEOCDFileOffset:I = 0x10

.field static final kEOCDLen:I = 0x16

.field static final kEOCDNumEntries:I = 0x8

.field static final kEOCDSignature:I = 0x6054b50

.field static final kEOCDSize:I = 0xc

.field static final kLFHExtraLen:I = 0x1c

.field static final kLFHLen:I = 0x1e

.field static final kLFHNameLen:I = 0x1a

.field static final kLFHSignature:I = 0x4034b50

.field static final kMaxCommentLen:I = 0xffff

.field static final kMaxEOCDSearch:I = 0x10015

.field static final kZipEntryAdj:I = 0x2710


# instance fields
.field private mDirectoryMap:Ljava/nio/MappedByteBuffer;

.field private mFile:Ljava/io/File;

.field private mFileLength:J

.field private mFileName:Ljava/lang/String;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;",
            ">;"
        }
    .end annotation
.end field

.field mLEByteBuffer:Ljava/nio/ByteBuffer;

.field private mNumEntries:I

.field private mZipFile:Ljava/io/RandomAccessFile;

.field public mZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    .line 320
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    .line 320
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method private parseCentralDirectory(Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mNumEntries:I

    .line 425
    const v0, 0xffff

    new-array v3, v0, [B

    .line 431
    const/4 v1, 0x0

    .line 436
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 437
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 439
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 440
    iget-object v5, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v5

    const v6, 0x2014b50

    if-eq v5, v6, :cond_0

    .line 441
    const-string v0, "zipro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missed a central dir sig (at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 446
    :cond_0
    iget-object v5, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v6, v1, 0x1c

    invoke-virtual {v5, v6}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    .line 447
    iget-object v6, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v7, v1, 0x1e

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    .line 448
    iget-object v7, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v1, 0x20

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    .line 452
    iget-object v8, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v9, v1, 0x2e

    invoke-virtual {v8, v9}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 453
    iget-object v8, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9, v5}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 454
    iget-object v8, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 457
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v9, v5}, Ljava/lang/String;-><init>([BII)V

    .line 462
    new-instance v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    invoke-direct {v9, p0, v8}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;-><init>(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)V

    .line 463
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v1, 0xa

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    iput v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    .line 464
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v1, 0xc

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    .line 465
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v1, 0x10

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    .line 466
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v1, 0x14

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    .line 467
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v1, 0x18

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    .line 468
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v1, 0x2a

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 470
    if-eqz p1, :cond_1

    .line 471
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 472
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v10, v4}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V

    .line 476
    :cond_1
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    add-int/lit8 v5, v5, 0x2e

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 484
    :cond_2
    return-void
.end method

.method private read4LE()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->swapEndian(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    return-object v0
.end method

.method public getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getEntriesAt(Ljava/lang/String;)[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .locals 7

    .prologue
    .line 220
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 221
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 222
    if-nez p1, :cond_0

    .line 223
    const-string p1, ""

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 225
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 226
    iget-object v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    const/4 v4, -0x1

    iget-object v5, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 228
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 233
    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 271
    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->isUncompressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    .line 277
    if-nez v1, :cond_1

    .line 278
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 279
    iget-object v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapCentralDirectory()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v8, 0xffffffffL

    const v6, 0x6054b50

    .line 332
    const-wide/32 v0, 0x10015

    .line 333
    iget-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 334
    iget-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 341
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->read4LE()I

    move-result v2

    .line 342
    if-ne v2, v6, :cond_1

    .line 343
    const-string v0, "zipro"

    const-string v1, "Found Zip archive, but it looks empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 345
    :cond_1
    const v3, 0x4034b50

    if-eq v2, v3, :cond_2

    .line 346
    const-string v0, "zipro"

    const-string v1, "Not a Zip archive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 359
    :cond_2
    iget-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    sub-long/2addr v2, v0

    .line 361
    iget-object v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 362
    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 364
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 365
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 376
    array-length v0, v2

    add-int/lit8 v0, v0, -0x16

    :goto_0
    if-ltz v0, :cond_3

    .line 377
    aget-byte v3, v2, v0

    const/16 v4, 0x50

    if-ne v3, v4, :cond_5

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 386
    :cond_3
    if-gez v0, :cond_4

    .line 387
    const-string v2, "zipro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zip: EOCD not found, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_4
    add-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 396
    add-int/lit8 v2, v0, 0xc

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    and-long v4, v2, v8

    .line 397
    add-int/lit8 v2, v0, 0x10

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v8

    .line 400
    add-long v8, v2, v4

    iget-wide v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_6

    .line 401
    const-string v1, "zipro"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad offsets (dir "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", eocd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 376
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 405
    :cond_6
    if-nez v6, :cond_7

    .line 406
    const-string v0, "zipro"

    const-string v1, "empty archive?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 415
    :cond_7
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 416
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    .line 417
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 418
    iput v6, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mNumEntries:I

    .line 419
    return-void
.end method

.method open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    .line 296
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    .line 299
    iget-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    const-wide/16 v4, 0x16

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 300
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    .line 305
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    .line 307
    if-eqz p2, :cond_1

    .line 308
    iget-object v0, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 316
    :goto_0
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mapCentralDirectory()V

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->parseCentralDirectory(Z)V

    .line 318
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method swapEndian(I)I
    .locals 2

    .prologue
    .line 50
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method swapEndian(S)I
    .locals 2

    .prologue
    .line 57
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
