.class public Lcom/dd/plist/BinaryPropertyListWriter;
.super Ljava/lang/Object;
.source "BinaryPropertyListWriter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field count:J

.field idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dd/plist/NSObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field idSizeInBytes:I

.field out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/dd/plist/BinaryPropertyListWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dd/plist/BinaryPropertyListWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    .line 91
    return-void
.end method

.method private static computeIdSizeInBytes(I)I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 152
    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private computeOffsetSizeInBytes(J)I
    .locals 3

    .prologue
    .line 157
    const-wide/16 v0, 0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    .line 158
    :cond_0
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 159
    :cond_1
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 160
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static write(Ljava/io/File;Lcom/dd/plist/NSObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    invoke-static {v0, p1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 54
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/dd/plist/BinaryPropertyListWriter;

    invoke-direct {v0, p0}, Lcom/dd/plist/BinaryPropertyListWriter;-><init>(Ljava/io/OutputStream;)V

    .line 63
    invoke-virtual {v0, p1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Lcom/dd/plist/NSObject;)V

    .line 64
    return-void
.end method

.method public static writeToArray(Lcom/dd/plist/NSObject;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    invoke-static {v0, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method assignID(Lcom/dd/plist/NSObject;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    return-void
.end method

.method getID(Lcom/dd/plist/NSObject;)I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 184
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 185
    return-void
.end method

.method write(Lcom/dd/plist/NSObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 94
    const-string v0, "bplist00"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 97
    invoke-virtual {p1, p0}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    .line 99
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListWriter;->computeIdSizeInBytes(I)I

    move-result v0

    iput v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    .line 102
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 105
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSObject;

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    iget-wide v6, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    aput-wide v6, v3, v0

    .line 109
    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v1, p0}, Lcom/dd/plist/NSObject;->toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-wide v4, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 118
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    invoke-direct {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->computeOffsetSizeInBytes(J)I

    move-result v1

    .line 119
    array-length v6, v3

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_2

    aget-wide v8, v3, v0

    .line 120
    invoke-virtual {p0, v8, v9, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2
    const/4 v0, 0x6

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 129
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 131
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 133
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 135
    invoke-virtual {p0, v4, v5}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 137
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 138
    return-void
.end method

.method write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 189
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 190
    return-void
.end method

.method writeBytes(JI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 195
    mul-int/lit8 v1, v0, 0x8

    shr-long v2, p1, v1

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 194
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method writeDouble(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 209
    return-void
.end method

.method writeID(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    int-to-long v0, p1

    iget v2, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 201
    return-void
.end method

.method writeIntHeader(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    sget-boolean v0, Lcom/dd/plist/BinaryPropertyListWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_0
    const/16 v0, 0xf

    if-ge p2, v0, :cond_1

    .line 166
    shl-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 180
    :goto_0
    return-void

    .line 167
    :cond_1
    const/16 v0, 0x100

    if-ge p2, v0, :cond_2

    .line 168
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 169
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 170
    int-to-long v0, p2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 171
    :cond_2
    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_3

    .line 172
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 173
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 174
    int-to-long v0, p2

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 176
    :cond_3
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 177
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 178
    int-to-long v0, p2

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0
.end method

.method writeLong(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 205
    return-void
.end method
