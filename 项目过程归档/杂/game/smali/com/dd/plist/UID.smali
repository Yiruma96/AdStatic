.class public Lcom/dd/plist/UID;
.super Lcom/dd/plist/NSObject;
.source "UID.java"


# instance fields
.field private bytes:[B

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/dd/plist/UID;->name:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/dd/plist/UID;->bytes:[B

    .line 39
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dd/plist/UID;->bytes:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dd/plist/UID;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/UID;->indent(Ljava/lang/StringBuilder;I)V

    .line 77
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dd/plist/UID;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/dd/plist/UID;->bytes:[B

    aget-byte v1, v1, v0

    .line 80
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 81
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/UID;->toASCII(Ljava/lang/StringBuilder;I)V

    .line 90
    return-void
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dd/plist/UID;->bytes:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 71
    iget-object v0, p0, Lcom/dd/plist/UID;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 72
    return-void
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/UID;->indent(Ljava/lang/StringBuilder;I)V

    .line 58
    const-string v0, "<string>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dd/plist/UID;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/dd/plist/UID;->bytes:[B

    aget-byte v1, v1, v0

    .line 61
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 62
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, "</string>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method
