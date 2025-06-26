.class public Lcom/dd/plist/NSData;
.super Lcom/dd/plist/NSObject;
.source "NSData.java"


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    .line 68
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 70
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 56
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/dd/plist/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/dd/plist/NSData;->bytes:[B

    .line 46
    return-void
.end method


# virtual methods
.method public bytes()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dd/plist/NSData;

    iget-object v0, p1, Lcom/dd/plist/NSData;->bytes:[B

    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBase64EncodedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-static {v0}, Lcom/dd/plist/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v2, v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 96
    return-void
.end method

.method public getBytes(Ljava/nio/ByteBuffer;II)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v1, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 106
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    .line 124
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x14f

    .line 125
    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 4

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    .line 152
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    sget-object v0, Lcom/dd/plist/NSData;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 154
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 156
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 157
    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/16 v3, 0x50

    if-le v2, v3, :cond_2

    .line 160
    sget-object v1, Lcom/dd/plist/NSData;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 154
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 163
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 166
    :cond_3
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->toASCII(Ljava/lang/StringBuilder;I)V

    .line 172
    return-void
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    .line 146
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 147
    return-void
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 5

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    .line 131
    const-string v0, "<data>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/dd/plist/NSData;->getBase64EncodedData()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 135
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    .line 136
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v3, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    .line 140
    const-string v0, "</data>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method
