.class public Lcom/dd/plist/NSArray;
.super Lcom/dd/plist/NSObject;
.source "NSArray.java"


# instance fields
.field private array:[Lcom/dd/plist/NSObject;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 42
    new-array v0, p1, [Lcom/dd/plist/NSObject;

    iput-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lcom/dd/plist/NSObject;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    .line 51
    return-void
.end method


# virtual methods
.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    .line 208
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 209
    invoke-virtual {v3, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public containsObject(Lcom/dd/plist/NSObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v2, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 114
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0

    .line 113
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dd/plist/NSArray;

    invoke-virtual {p1}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v0

    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArray()[Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 187
    .line 188
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x26f

    .line 189
    return v0
.end method

.method public indexOfIdenticalObject(Lcom/dd/plist/NSObject;)I
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 154
    :goto_1
    return v0

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public indexOfObject(Lcom/dd/plist/NSObject;)I
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :goto_1
    return v0

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public lastObject()Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public objectAtIndex(I)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public varargs objectsAtIndexes([I)[Lcom/dd/plist/NSObject;
    .locals 4

    .prologue
    .line 173
    array-length v0, p1

    new-array v1, v0, [Lcom/dd/plist/NSObject;

    .line 174
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 175
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget v3, p1, v0

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-object v1
.end method

.method public remove(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";the array length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lcom/dd/plist/NSObject;

    .line 72
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v3, v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iput-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    .line 75
    return-void
.end method

.method public setValue(ILcom/dd/plist/NSObject;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aput-object p2, v0, p1

    .line 86
    return-void
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSArray;->indent(Ljava/lang/StringBuilder;I)V

    .line 253
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    sget-object v0, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    move v0, v1

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 256
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 257
    const-class v4, Lcom/dd/plist/NSDictionary;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/dd/plist/NSArray;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/dd/plist/NSData;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 259
    sget-object v2, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 261
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v3, v3, v0

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    .line 268
    :goto_1
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 269
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/16 v4, 0x50

    if-le v3, v4, :cond_2

    .line 272
    sget-object v2, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 255
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_3
    if-eqz v0, :cond_4

    .line 264
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_4
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, v1}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 276
    :cond_5
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSArray;->indent(Ljava/lang/StringBuilder;I)V

    .line 282
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    sget-object v0, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    move v0, v1

    .line 284
    :goto_0
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 285
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 286
    const-class v4, Lcom/dd/plist/NSDictionary;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/dd/plist/NSArray;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/dd/plist/NSData;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 288
    sget-object v2, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 290
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v3, v3, v0

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    .line 297
    :goto_1
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 298
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/16 v4, 0x50

    if-le v3, v4, :cond_2

    .line 301
    sget-object v2, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 284
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_3
    if-eqz v0, :cond_4

    .line 293
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_4
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, v1}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 305
    :cond_5
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    return-void
.end method

.method public toASCIIPropertyList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSArray;->toASCII(Ljava/lang/StringBuilder;I)V

    .line 231
    sget-object v1, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    .line 216
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 217
    invoke-virtual {p1, v3}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public toGnuStepASCIIPropertyList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSArray;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    .line 246
    sget-object v1, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 5

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSArray;->indent(Ljava/lang/StringBuilder;I)V

    .line 195
    const-string v0, "<array>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 198
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    .line 199
    sget-object v3, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSArray;->indent(Ljava/lang/StringBuilder;I)V

    .line 202
    const-string v0, "</array>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    return-void
.end method
