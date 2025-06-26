.class public final Lcom/android/dx/util/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/util/ByteArray$MyDataInputStream;,
        Lcom/android/dx/util/ByteArray$MyInputStream;,
        Lcom/android/dx/util/ByteArray$GetCursor;
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private final size:I

.field private final start:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/dx/util/ByteArray;-><init>([BII)V

    .line 77
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-gez p2, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-ge p3, p2, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    array-length v0, p1

    if-le p3, v0, :cond_3

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end > bytes.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    iput-object p1, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    .line 66
    iput p2, p0, Lcom/android/dx/util/ByteArray;->start:I

    .line 67
    sub-int v0, p3, p2

    iput v0, p0, Lcom/android/dx/util/ByteArray;->size:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/util/ByteArray;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/dx/util/ByteArray;->size:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/dx/util/ByteArray;I)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/dx/util/ByteArray;)[B
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dx/util/ByteArray;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/dx/util/ByteArray;->start:I

    return v0
.end method

.method private checkOffsets(II)V
    .locals 3

    .prologue
    .line 222
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    iget v0, p0, Lcom/android/dx/util/ByteArray;->size:I

    if-le p2, v0, :cond_1

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; actual size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dx/util/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    return-void
.end method

.method private getByte0(I)I
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/android/dx/util/ByteArray;->start:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method private getUnsignedByte0(I)I
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/android/dx/util/ByteArray;->start:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public getByte(I)I
    .locals 1

    .prologue
    .line 126
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    return v0
.end method

.method public getBytes([BI)V
    .locals 3

    .prologue
    .line 207
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/android/dx/util/ByteArray;->size:I

    if-ge v0, v1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "(out.length - offset) < size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/android/dx/util/ByteArray;->start:I

    iget v2, p0, Lcom/android/dx/util/ByteArray;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-void
.end method

.method public getInt(I)I
    .locals 2

    .prologue
    .line 148
    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 149
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    .line 150
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 151
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 152
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getLong(I)J
    .locals 6

    .prologue
    .line 162
    add-int/lit8 v0, p1, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 163
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    .line 164
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 165
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 166
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 167
    add-int/lit8 v1, p1, 0x4

    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x5

    .line 168
    invoke-direct {p0, v2}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x6

    .line 169
    invoke-direct {p0, v2}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x7

    .line 170
    invoke-direct {p0, v2}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 172
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getShort(I)I
    .locals 2

    .prologue
    .line 137
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 138
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedByte(I)I
    .locals 1

    .prologue
    .line 182
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 2

    .prologue
    .line 193
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 194
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public makeDataInputStream()Lcom/android/dx/util/ByteArray$MyDataInputStream;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {p0}, Lcom/android/dx/util/ByteArray;->makeInputStream()Lcom/android/dx/util/ByteArray$MyInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/ByteArray$MyDataInputStream;-><init>(Lcom/android/dx/util/ByteArray$MyInputStream;)V

    return-object v0
.end method

.method public makeInputStream()Lcom/android/dx/util/ByteArray$MyInputStream;
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/android/dx/util/ByteArray$MyInputStream;

    invoke-direct {v0, p0}, Lcom/android/dx/util/ByteArray$MyInputStream;-><init>(Lcom/android/dx/util/ByteArray;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/dx/util/ByteArray;->size:I

    return v0
.end method

.method public slice(II)Lcom/android/dx/util/ByteArray;
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 98
    new-instance v0, Lcom/android/dx/util/ByteArray;

    iget-object v1, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    iget v2, p0, Lcom/android/dx/util/ByteArray;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/android/dx/util/ByteArray;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/util/ByteArray;-><init>([BII)V

    return-object v0
.end method

.method public underlyingOffset(I[B)I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    if-eq p2, v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget v0, p0, Lcom/android/dx/util/ByteArray;->start:I

    add-int/2addr v0, p1

    return v0
.end method
