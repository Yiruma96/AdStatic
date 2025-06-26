.class public Lcom/dd/plist/ASCIIPropertyListParser;
.super Ljava/lang/Object;
.source "ASCIIPropertyListParser.java"


# static fields
.field public static final ARRAY_BEGIN_TOKEN:C = '('

.field public static final ARRAY_END_TOKEN:C = ')'

.field public static final ARRAY_ITEM_DELIMITER_TOKEN:C = ','

.field public static final DATA_BEGIN_TOKEN:C = '<'

.field public static final DATA_END_TOKEN:C = '>'

.field public static final DATA_GSBOOL_BEGIN_TOKEN:C = 'B'

.field public static final DATA_GSBOOL_FALSE_TOKEN:C = 'N'

.field public static final DATA_GSBOOL_TRUE_TOKEN:C = 'Y'

.field public static final DATA_GSDATE_BEGIN_TOKEN:C = 'D'

.field public static final DATA_GSINT_BEGIN_TOKEN:C = 'I'

.field public static final DATA_GSOBJECT_BEGIN_TOKEN:C = '*'

.field public static final DATA_GSREAL_BEGIN_TOKEN:C = 'R'

.field public static final DATE_APPLE_DATE_TIME_DELIMITER:C = 'T'

.field public static final DATE_APPLE_END_TOKEN:C = 'Z'

.field public static final DATE_DATE_FIELD_DELIMITER:C = '-'

.field public static final DATE_GS_DATE_TIME_DELIMITER:C = ' '

.field public static final DATE_TIME_FIELD_DELIMITER:C = ':'

.field public static final DICTIONARY_ASSIGN_TOKEN:C = '='

.field public static final DICTIONARY_BEGIN_TOKEN:C = '{'

.field public static final DICTIONARY_END_TOKEN:C = '}'

.field public static final DICTIONARY_ITEM_DELIMITER_TOKEN:C = ';'

.field public static final QUOTEDSTRING_BEGIN_TOKEN:C = '\"'

.field public static final QUOTEDSTRING_END_TOKEN:C = '\"'

.field public static final QUOTEDSTRING_ESCAPE_TOKEN:C = '\\'

.field public static final WHITESPACE_CARRIAGE_RETURN:C = '\r'

.field public static final WHITESPACE_NEWLINE:C = '\n'

.field public static final WHITESPACE_SPACE:C = ' '

.field public static final WHITESPACE_TAB:C = '\t'

.field private static asciiEncoder:Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private data:[B

.field private index:I


# direct methods
.method private constructor <init>([B)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    .line 135
    return-void
.end method

.method private accept(C)Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs accept([C)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 144
    .line 145
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p1, v1

    .line 146
    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v4, v4, v5

    if-ne v4, v3, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return v0
.end method

.method private expect(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 186
    :cond_0
    return-void
.end method

.method private varargs expect([C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-char v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but found \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/text/ParseException;

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 176
    :cond_1
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

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
    .line 72
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 74
    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

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
    .line 84
    new-instance v0, Lcom/dd/plist/ASCIIPropertyListParser;

    invoke-direct {v0, p0}, Lcom/dd/plist/ASCIIPropertyListParser;-><init>([B)V

    .line 85
    invoke-virtual {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse()Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method private parseArray()Lcom/dd/plist/NSArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x29

    .line 318
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 319
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    .line 320
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 321
    :goto_0
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    .line 324
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 329
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 333
    new-instance v1, Lcom/dd/plist/NSArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/dd/plist/NSObject;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dd/plist/NSObject;

    invoke-direct {v1, v0}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    return-object v1
.end method

.method private parseData()Lcom/dd/plist/NSObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/16 v3, 0x3e

    .line 378
    const/4 v0, 0x0

    .line 380
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 381
    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 383
    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 384
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 387
    new-array v0, v4, [C

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 388
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    new-instance v0, Lcom/dd/plist/NSNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    .line 394
    :goto_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 405
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 423
    :goto_2
    return-object v0

    .line 391
    :cond_1
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 395
    :cond_2
    const/16 v1, 0x44

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 397
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v1

    .line 398
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    :cond_3
    new-array v1, v4, [C

    fill-array-data v1, :array_2

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 401
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v1

    .line 402
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :cond_4
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string v2, "\\s+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 411
    new-array v3, v0, [B

    move v0, v1

    .line 412
    :goto_3
    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 413
    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 414
    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 415
    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 417
    :cond_5
    new-instance v0, Lcom/dd/plist/NSData;

    invoke-direct {v0, v3}, Lcom/dd/plist/NSData;-><init>([B)V

    .line 420
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_2

    .line 383
    :array_0
    .array-data 2
        0x42s
        0x44s
        0x49s
        0x52s
    .end array-data

    .line 387
    :array_1
    .array-data 2
        0x59s
        0x4es
    .end array-data

    .line 399
    :array_2
    .array-data 2
        0x49s
        0x52s
    .end array-data
.end method

.method private parseDictionary()Lcom/dd/plist/NSDictionary;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 344
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    .line 345
    new-instance v1, Lcom/dd/plist/NSDictionary;

    invoke-direct {v1}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 346
    :goto_0
    const/16 v0, 0x7d

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString()Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    .line 357
    const/16 v2, 0x3d

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 358
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    .line 360
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;

    move-result-object v2

    .line 361
    invoke-virtual {v1, v0, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    .line 363
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 364
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    goto :goto_0

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 368
    return-object v1
.end method

.method private static parseEscapedSequence(Ljava/text/StringCharacterIterator;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 543
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    .line 544
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    .line 545
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 574
    :goto_0
    return-object v0

    .line 546
    :cond_0
    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 547
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_1
    const/16 v1, 0x62

    if-ne v0, v1, :cond_2

    .line 549
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_2
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    .line 551
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_3
    const/16 v1, 0x72

    if-ne v0, v1, :cond_4

    .line 553
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_4
    const/16 v1, 0x74

    if-ne v0, v1, :cond_5

    .line 555
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_5

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_5
    const/16 v1, 0x55

    if-eq v0, v1, :cond_6

    const/16 v1, 0x75

    if-ne v0, v1, :cond_7

    .line 558
    :cond_6
    const-string v0, ""

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    const-string v1, ""

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    new-array v2, v3, [B

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    .line 565
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 568
    :cond_7
    const-string v1, ""

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 573
    new-array v1, v3, [B

    aput-byte v4, v1, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    .line 574
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 545
    nop

    :array_0
    .array-data 1
        0x0t
        0x5ct
    .end array-data

    .line 547
    nop

    :array_1
    .array-data 1
        0x0t
        0x22t
    .end array-data

    .line 549
    nop

    :array_2
    .array-data 1
        0x0t
        0x8t
    .end array-data

    .line 551
    nop

    :array_3
    .array-data 1
        0x0t
        0xat
    .end array-data

    .line 553
    nop

    :array_4
    .array-data 1
        0x0t
        0xdt
    .end array-data

    .line 555
    nop

    :array_5
    .array-data 1
        0x0t
        0x9t
    .end array-data
.end method

.method private parseNumerical()Lcom/dd/plist/NSObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 470
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_0

    .line 474
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    .line 477
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseObject()Lcom/dd/plist/NSObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 293
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2f

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x3a

    if-ge v0, v1, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseNumerical()Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 268
    :sswitch_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseArray()Lcom/dd/plist/NSArray;

    move-result-object v0

    goto :goto_0

    .line 271
    :sswitch_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseDictionary()Lcom/dd/plist/NSDictionary;

    move-result-object v0

    goto :goto_0

    .line 274
    :sswitch_2
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseData()Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 277
    :sswitch_3
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_0

    .line 281
    :try_start_0
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 285
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string v0, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    new-instance v0, Lcom/dd/plist/NSNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 301
    :cond_2
    const-string v0, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    new-instance v0, Lcom/dd/plist/NSNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 304
    :cond_3
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x28 -> :sswitch_0
        0x3c -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method private parseQuotedString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x5c

    .line 434
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 435
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    .line 437
    :goto_0
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    if-ne v3, v5, :cond_3

    if-eqz v0, :cond_3

    .line 438
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-direct {p0, v5}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    if-ne v3, v5, :cond_2

    if-eqz v0, :cond_2

    .line 441
    const/4 v0, 0x0

    .line 445
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 443
    goto :goto_1

    .line 449
    :cond_3
    :try_start_0
    invoke-static {v2}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 454
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 455
    return-object v0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "The quoted string could not be parsed."

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static declared-synchronized parseQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 494
    const-class v2, Lcom/dd/plist/ASCIIPropertyListParser;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 495
    new-instance v4, Ljava/text/StringCharacterIterator;

    invoke-direct {v4, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v4}, Ljava/text/StringCharacterIterator;->current()C

    move-result v1

    .line 498
    :goto_0
    invoke-virtual {v4}, Ljava/text/StringCharacterIterator;->getIndex()I

    move-result v5

    invoke-virtual {v4}, Ljava/text/StringCharacterIterator;->getEndIndex()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 499
    packed-switch v1, :pswitch_data_0

    .line 507
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_0
    invoke-virtual {v4}, Ljava/text/StringCharacterIterator;->next()C

    move-result v1

    goto :goto_0

    .line 501
    :pswitch_0
    invoke-static {v4}, Lcom/dd/plist/ASCIIPropertyListParser;->parseEscapedSequence(Ljava/text/StringCharacterIterator;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 502
    array-length v6, v5

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_0

    aget-byte v7, v5, v1

    .line 503
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 514
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [B

    .line 516
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 517
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v4, v1

    .line 518
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 519
    goto :goto_2

    .line 521
    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 522
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 526
    sget-object v3, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v3, :cond_3

    .line 527
    const-string v3, "ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    sput-object v3, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 528
    :cond_3
    sget-object v3, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 529
    sget-object v0, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 533
    :cond_4
    monitor-exit v2

    return-object v0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private parseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil([C)Ljava/lang/String;

    move-result-object v0

    .line 466
    return-object v0

    .line 464
    :array_0
    .array-data 2
        0x20s
        0x9s
        0xas
        0xds
        0x2cs
        0x3bs
        0x3ds
        0x29s
    .end array-data
.end method

.method private read(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->expect(C)V

    .line 195
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 196
    return-void
.end method

.method private readInputUntil(C)Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    const-string v0, ""

    .line 234
    :goto_0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 238
    :cond_0
    return-object v0
.end method

.method private varargs readInputUntil([C)Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    const-string v0, ""

    .line 220
    :goto_0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 224
    :cond_0
    return-object v0
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 203
    return-void
.end method

.method private skipWhitespaces()V
    .locals 1

    .prologue
    .line 209
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 211
    :cond_0
    return-void

    .line 209
    nop

    :array_0
    .array-data 2
        0xds
        0xas
        0x20s
        0x9s
    .end array-data
.end method


# virtual methods
.method public parse()Lcom/dd/plist/NSObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 249
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    .line 250
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 255
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Reached end of input unexpectedly."

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 250
    :array_0
    .array-data 2
        0x7bs
        0x28s
    .end array-data
.end method
