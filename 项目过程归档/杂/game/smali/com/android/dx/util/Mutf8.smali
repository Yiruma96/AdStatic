.class public final Lcom/android/dx/util/Mutf8;
.super Ljava/lang/Object;
.source "Mutf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countBytes(Ljava/lang/String;Z)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 66
    const-wide/16 v2, 0x0

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 68
    const/4 v0, 0x0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v4, :cond_3

    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 70
    if-eqz v3, :cond_0

    const/16 v5, 0x7f

    if-gt v3, v5, :cond_0

    .line 71
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 77
    :goto_1
    if-eqz p1, :cond_2

    const-wide/32 v6, 0xffff

    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    .line 78
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "String more than 65535 UTF bytes long"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    const/16 v5, 0x7ff

    if-gt v3, v5, :cond_1

    .line 73
    const-wide/16 v6, 0x2

    add-long/2addr v0, v6

    goto :goto_1

    .line 75
    :cond_1
    const-wide/16 v6, 0x3

    add-long/2addr v0, v6

    goto :goto_1

    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_3
    return-wide v0
.end method

.method public static decode(Lcom/android/dx/util/ByteInput;[C)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x80

    .line 34
    move v0, v1

    .line 36
    :goto_0
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v3, v2

    .line 37
    if-nez v3, :cond_0

    .line 38
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 40
    :cond_0
    aput-char v3, p1, v0

    .line 41
    if-ge v3, v6, :cond_1

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    and-int/lit16 v2, v3, 0xe0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_3

    .line 44
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    .line 45
    and-int/lit16 v2, v4, 0xc0

    if-eq v2, v6, :cond_2

    .line 46
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad second byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v0

    move v0, v2

    .line 49
    goto :goto_0

    :cond_3
    and-int/lit16 v2, v3, 0xf0

    const/16 v4, 0xe0

    if-ne v2, v4, :cond_6

    .line 50
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    .line 51
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v5, v2, 0xff

    .line 52
    and-int/lit16 v2, v4, 0xc0

    if-ne v2, v6, :cond_4

    and-int/lit16 v2, v5, 0xc0

    if-eq v2, v6, :cond_5

    .line 53
    :cond_4
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad second or third byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_5
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v5, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v0

    move v0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_6
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 6

    .prologue
    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 91
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 92
    if-eqz v3, :cond_0

    const/16 v0, 0x7f

    if-gt v3, v0, :cond_0

    .line 93
    add-int/lit8 v0, p1, 0x1

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 90
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move p1, v0

    goto :goto_0

    .line 94
    :cond_0
    const/16 v0, 0x7ff

    if-gt v3, v0, :cond_1

    .line 95
    add-int/lit8 v4, p1, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 96
    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p0, v4

    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 99
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 100
    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p0, v4

    goto :goto_1

    .line 103
    :cond_2
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/dx/util/Mutf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v0

    long-to-int v0, v0

    .line 110
    new-array v0, v0, [B

    .line 111
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/android/dx/util/Mutf8;->encode([BILjava/lang/String;)V

    .line 112
    return-object v0
.end method
