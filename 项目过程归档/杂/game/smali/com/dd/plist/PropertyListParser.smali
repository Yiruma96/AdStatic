.class public Lcom/dd/plist/PropertyListParser;
.super Ljava/lang/Object;
.source "PropertyListParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static convertToASCII(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v2

    .line 211
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/dd/plist/NSDictionary;

    move-object v1, v0

    invoke-static {v1, p1}, Lcom/dd/plist/PropertyListParser;->saveAsASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v1

    .line 214
    :try_start_1
    check-cast v2, Lcom/dd/plist/NSArray;

    invoke-static {v2, p1}, Lcom/dd/plist/PropertyListParser;->saveAsASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 215
    :catch_1
    move-exception v1

    .line 216
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "The root of the given input property list is neither a Dictionary nor an Array!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertToBinary(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 175
    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsBinary(Lcom/dd/plist/NSObject;Ljava/io/File;)V

    .line 176
    return-void
.end method

.method public static convertToGnuStepASCII(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v2

    .line 255
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/dd/plist/NSDictionary;

    move-object v1, v0

    invoke-static {v1, p1}, Lcom/dd/plist/PropertyListParser;->saveAsGnuStepASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v1

    .line 258
    :try_start_1
    check-cast v2, Lcom/dd/plist/NSArray;

    invoke-static {v2, p1}, Lcom/dd/plist/PropertyListParser;->saveAsGnuStepASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v1

    .line 260
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "The root of the given input property list is neither a Dictionary nor an Array!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertToXml(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 154
    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsXML(Lcom/dd/plist/NSObject;Ljava/io/File;)V

    .line 155
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 74
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 75
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 76
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 77
    const-string v0, "bplist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-string v0, "<?xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    :cond_2
    invoke-static {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The given data is not a valid property list. For supported format see http://code.google.com/p/plist"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 114
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 116
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 117
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 118
    const-string v1, "bplist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_1
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    :cond_2
    invoke-static {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The given data is not a valid property list. For supported format see http://code.google.com/p/plist"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_4
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 96
    const-string v1, "bplist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    :cond_2
    invoke-static {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The given data is not a valid property list. For supported format see http://code.google.com/p/plist"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static readAll(Ljava/io/InputStream;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    :goto_0
    if-lez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 60
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 62
    add-int/lit8 p1, p1, -0x1

    .line 63
    goto :goto_0
.end method

.method public static saveAsASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/dd/plist/NSArray;->toASCIIPropertyList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 200
    return-void
.end method

.method public static saveAsASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->toASCIIPropertyList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 188
    return-void
.end method

.method public static saveAsBinary(Lcom/dd/plist/NSObject;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p1, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/File;Lcom/dd/plist/NSObject;)V

    .line 165
    return-void
.end method

.method public static saveAsGnuStepASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/dd/plist/NSArray;->toGnuStepASCIIPropertyList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 244
    return-void
.end method

.method public static saveAsGnuStepASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->toGnuStepASCIIPropertyList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 232
    return-void
.end method

.method public static saveAsXML(Lcom/dd/plist/NSObject;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/dd/plist/NSObject;->toXMLPropertyList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 144
    return-void
.end method
