.class public Lcom/dd/plist/BinaryPropertyListParser;
.super Ljava/lang/Object;
.source "BinaryPropertyListParser.java"


# instance fields
.field private bytes:[B

.field private numObjects:I

.field private objectRefSize:I

.field private offsetSize:I

.field private offsetTable:[I

.field private offsetTableOffset:I

.field private topObject:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 3

    .prologue
    .line 460
    sub-int v0, p2, p1

    .line 461
    if-gez v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > endIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    new-array v1, v0, [B

    .line 465
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    return-object v1
.end method

.method private doParse([B)Lcom/dd/plist/NSObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x18

    const/16 v6, 0x10

    const/4 v5, 0x7

    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 83
    iput-object p1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    .line 84
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    invoke-static {v2, v0, v4}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 85
    const-string v2, "bplist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The given data is no binary property list. Wrong magic bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x20

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    .line 99
    const/4 v2, 0x6

    invoke-static {v1, v2, v5}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    .line 101
    invoke-static {v1, v5, v4}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    .line 103
    invoke-static {v1, v4, v6}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    .line 105
    invoke-static {v1, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->topObject:I

    .line 107
    const/16 v2, 0x20

    invoke-static {v1, v7, v2}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    .line 113
    iget v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    .line 115
    :goto_0
    iget v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    iget v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    iget v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    invoke-static {v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v4

    long-to-int v1, v4

    aput v1, v2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->topObject:I

    invoke-direct {p0, v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To little heap space available! Wanted to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/dd/plist/BinaryPropertyListParser;

    invoke-direct {v0}, Lcom/dd/plist/BinaryPropertyListParser;-><init>()V

    .line 73
    invoke-direct {v0, p0}, Lcom/dd/plist/BinaryPropertyListParser;->doParse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static final parseDouble([B)D
    .locals 3

    .prologue
    .line 443
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 444
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 446
    :goto_0
    return-wide v0

    .line 445
    :cond_0
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 446
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad byte array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseLong([B)J
    .locals 6

    .prologue
    .line 429
    const-wide/16 v2, 0x0

    .line 430
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v4, p0, v0

    .line 431
    const/16 v5, 0x8

    shl-long/2addr v2, v5

    .line 432
    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-wide v2
.end method

.method private parseObject(I)Lcom/dd/plist/NSObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0xf

    const/4 v7, 0x3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v1, 0x1

    .line 162
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    aget v4, v0, p1

    .line 163
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    aget-byte v0, v0, v4

    .line 164
    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    .line 165
    and-int/lit8 v0, v0, 0xf

    .line 166
    packed-switch v2, :pswitch_data_0

    .line 402
    :pswitch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 169
    :pswitch_1
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 172
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 176
    :sswitch_1
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v3}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_1

    .line 180
    :sswitch_2
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_1

    .line 184
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_1

    .line 191
    :pswitch_2
    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v1, v0

    .line 192
    int-to-long v6, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    .line 193
    new-instance v0, Lcom/dd/plist/NSNumber;

    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    invoke-static {v2, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/dd/plist/NSNumber;-><init>([BI)V

    goto :goto_1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To little heap space available! Wanted to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :pswitch_3
    int-to-double v2, v0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 201
    int-to-long v6, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    .line 202
    new-instance v0, Lcom/dd/plist/NSNumber;

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v3, v5, v2}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/dd/plist/NSNumber;-><init>([BI)V

    goto/16 :goto_1

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To little heap space available! Wanted to read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_4
    if-eq v0, v7, :cond_2

    .line 210
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown date type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Parsing anyway..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    :cond_2
    new-instance v0, Lcom/dd/plist/NSDate;

    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v3, v4, 0x9

    invoke-static {v1, v2, v3}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>([B)V

    goto/16 :goto_1

    .line 218
    :pswitch_5
    if-ne v0, v5, :cond_4

    .line 219
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v2

    .line 220
    and-int/lit16 v2, v0, 0xf0

    div-int/lit8 v2, v2, 0xf

    .line 221
    if-eq v2, v1, :cond_3

    .line 222
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNEXPECTED LENGTH-INT TYPE! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    :cond_3
    and-int/lit8 v0, v0, 0xf

    .line 225
    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 226
    add-int/lit8 v1, v0, 0x2

    .line 227
    if-ge v0, v7, :cond_5

    .line 228
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v5, v4, 0x2

    add-int/2addr v0, v5

    invoke-static {v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v2

    long-to-int v0, v2

    .line 233
    :cond_4
    :goto_2
    int-to-long v2, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_6

    .line 234
    new-instance v2, Lcom/dd/plist/NSData;

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v5, v4, v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    invoke-static {v3, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/dd/plist/NSData;-><init>([B)V

    move-object v0, v2

    goto/16 :goto_1

    .line 230
    :cond_5
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    invoke-static {v3, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_2

    .line 236
    :cond_6
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To little heap space available! Wanted to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes, but only "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " are available."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :pswitch_6
    if-ne v0, v5, :cond_8

    .line 244
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v2

    .line 245
    and-int/lit16 v2, v0, 0xf0

    div-int/lit8 v2, v2, 0xf

    .line 246
    if-eq v2, v1, :cond_7

    .line 247
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNEXPECTED LENGTH-INT TYPE! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    :cond_7
    and-int/lit8 v0, v0, 0xf

    .line 250
    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 251
    add-int/lit8 v1, v0, 0x2

    .line 252
    if-ge v0, v7, :cond_9

    .line 253
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v5, v4, 0x2

    add-int/2addr v0, v5

    invoke-static {v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v2

    long-to-int v0, v2

    .line 258
    :cond_8
    :goto_3
    int-to-long v2, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_a

    .line 259
    new-instance v2, Lcom/dd/plist/NSString;

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v5, v4, v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    invoke-static {v3, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    const-string v1, "ASCII"

    invoke-direct {v2, v0, v1}, Lcom/dd/plist/NSString;-><init>([BLjava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 255
    :cond_9
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    invoke-static {v3, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_3

    .line 261
    :cond_a
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To little heap space available! Wanted to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes, but only "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " are available."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :pswitch_7
    if-ne v0, v5, :cond_c

    .line 269
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v2

    .line 270
    and-int/lit16 v2, v0, 0xf0

    div-int/lit8 v2, v2, 0xf

    .line 271
    if-eq v2, v1, :cond_b

    .line 272
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNEXPECTED LENGTH-INT TYPE! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :cond_b
    and-int/lit8 v0, v0, 0xf

    .line 275
    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 276
    add-int/lit8 v1, v0, 0x2

    .line 277
    if-ge v0, v7, :cond_d

    .line 278
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v5, v4, 0x2

    add-int/2addr v0, v5

    invoke-static {v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v2

    long-to-int v0, v2

    .line 284
    :cond_c
    :goto_4
    mul-int/lit8 v2, v0, 0x2

    .line 285
    int-to-long v6, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_e

    .line 286
    new-instance v0, Lcom/dd/plist/NSString;

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v5, v4, v1

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    invoke-static {v3, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v1, v2}, Lcom/dd/plist/NSString;-><init>([BLjava/lang/String;)V

    goto/16 :goto_1

    .line 280
    :cond_d
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    invoke-static {v3, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_4

    .line 288
    :cond_e
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To little heap space available! Wanted to read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    .line 294
    int-to-long v2, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_f

    .line 295
    new-instance v0, Lcom/dd/plist/UID;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    invoke-static {v3, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/dd/plist/UID;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 297
    :cond_f
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To little heap space available! Wanted to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :pswitch_9
    if-ne v0, v5, :cond_11

    .line 305
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v2

    .line 306
    and-int/lit16 v2, v0, 0xf0

    div-int/lit8 v2, v2, 0xf

    .line 307
    if-eq v2, v1, :cond_10

    .line 308
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNEXPECTED LENGTH-INT TYPE! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    :cond_10
    and-int/lit8 v0, v0, 0xf

    .line 311
    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 312
    add-int/lit8 v1, v0, 0x2

    .line 313
    if-ge v0, v7, :cond_12

    .line 314
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    invoke-static {v2, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v0, v6

    .line 319
    :cond_11
    :goto_5
    iget v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v2, v0

    int-to-long v6, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_13

    .line 320
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "To little heap space available!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_12
    new-instance v2, Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v4, 0x2

    add-int/2addr v0, v7

    invoke-static {v5, v6, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_5

    .line 322
    :cond_13
    new-instance v2, Lcom/dd/plist/NSArray;

    invoke-direct {v2, v0}, Lcom/dd/plist/NSArray;-><init>(I)V

    .line 323
    :goto_6
    if-ge v3, v0, :cond_14

    .line 324
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v6, v4, v1

    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int v7, v4, v1

    add-int/lit8 v8, v3, 0x1

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v5, v6

    .line 327
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/dd/plist/NSArray;->setValue(ILcom/dd/plist/NSObject;)V

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    move-object v0, v2

    .line 329
    goto/16 :goto_1

    .line 336
    :pswitch_a
    if-ne v0, v5, :cond_16

    .line 337
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v2

    .line 338
    and-int/lit16 v2, v0, 0xf0

    div-int/lit8 v2, v2, 0xf

    .line 339
    if-eq v2, v1, :cond_15

    .line 340
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNEXPECTED LENGTH-INT TYPE! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    :cond_15
    and-int/lit8 v0, v0, 0xf

    .line 343
    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 344
    add-int/lit8 v1, v0, 0x2

    .line 345
    if-ge v0, v7, :cond_17

    .line 346
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    invoke-static {v2, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v0, v6

    .line 351
    :cond_16
    :goto_7
    iget v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v2, v0

    int-to-long v6, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_18

    .line 352
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "To little heap space available!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_17
    new-instance v2, Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v4, 0x2

    add-int/2addr v0, v7

    invoke-static {v5, v6, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_7

    .line 354
    :cond_18
    new-instance v2, Lcom/dd/plist/NSSet;

    invoke-direct {v2}, Lcom/dd/plist/NSSet;-><init>()V

    .line 355
    :goto_8
    if-ge v3, v0, :cond_19

    .line 356
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v6, v4, v1

    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int v7, v4, v1

    add-int/lit8 v8, v3, 0x1

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v5, v6

    .line 359
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/dd/plist/NSSet;->addObject(Lcom/dd/plist/NSObject;)V

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_19
    move-object v0, v2

    .line 361
    goto/16 :goto_1

    .line 367
    :pswitch_b
    if-ne v0, v5, :cond_1b

    .line 368
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v2

    .line 369
    and-int/lit16 v2, v0, 0xf0

    div-int/lit8 v2, v2, 0xf

    .line 370
    if-eq v2, v1, :cond_1a

    .line 371
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNEXPECTED LENGTH-INT TYPE! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_1a
    and-int/lit8 v0, v0, 0xf

    .line 374
    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 375
    add-int/lit8 v1, v0, 0x2

    .line 376
    if-ge v0, v7, :cond_1c

    .line 377
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    invoke-static {v2, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v0, v6

    .line 382
    :cond_1b
    :goto_9
    mul-int/lit8 v2, v0, 0x2

    iget v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v2, v5

    int-to-long v6, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_1d

    .line 383
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "To little heap space available!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1c
    new-instance v2, Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v4, 0x2

    add-int/2addr v0, v7

    invoke-static {v5, v6, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_9

    .line 386
    :cond_1d
    new-instance v2, Lcom/dd/plist/NSDictionary;

    invoke-direct {v2}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 387
    :goto_a
    if-ge v3, v0, :cond_1e

    .line 388
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v6, v4, v1

    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int v7, v4, v1

    add-int/lit8 v8, v3, 0x1

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v5, v6

    .line 391
    iget-object v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v7, v4, v1

    iget v8, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v0

    add-int/2addr v7, v8

    iget v8, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    add-int v8, v4, v1

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v9, v0

    add-int/2addr v8, v9

    add-int/lit8 v9, v3, 0x1

    iget v10, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v6, v6

    .line 394
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v5

    .line 395
    invoke-direct {p0, v6}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v6

    .line 397
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1e
    move-object v0, v2

    .line 399
    goto/16 :goto_1

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public static final parseUnsignedInt([B)J
    .locals 6

    .prologue
    .line 414
    const-wide/16 v2, 0x0

    .line 415
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v4, p0, v0

    .line 416
    const/16 v5, 0x8

    shl-long/2addr v2, v5

    .line 417
    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_0
    const-wide v0, 0xffffffffL

    and-long/2addr v0, v2

    .line 420
    return-wide v0
.end method
