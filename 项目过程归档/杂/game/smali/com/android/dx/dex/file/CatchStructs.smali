.class public final Lcom/android/dx/dex/file/CatchStructs;
.super Ljava/lang/Object;
.source "CatchStructs.java"


# static fields
.field private static final TRY_ITEM_WRITE_SIZE:I = 0x8


# instance fields
.field private final code:Lcom/android/dx/dex/code/DalvCode;

.field private encodedHandlerHeaderSize:I

.field private encodedHandlers:[B

.field private handlerOffsets:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/android/dx/dex/code/CatchHandlerList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private table:Lcom/android/dx/dex/code/CatchTable;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/DalvCode;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/dx/dex/file/CatchStructs;->code:Lcom/android/dx/dex/code/DalvCode;

    .line 77
    iput-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    .line 78
    iput-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 80
    iput-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 81
    return-void
.end method

.method private static annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz p4, :cond_0

    .line 310
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    :cond_0
    invoke-interface {p5, p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 314
    return-void
.end method

.method private annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 234
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    move v5, v0

    .line 235
    :goto_0
    if-eqz v5, :cond_1

    const/4 v0, 0x6

    move v4, v0

    .line 236
    :goto_1
    if-eqz v5, :cond_2

    const/4 v0, 0x2

    .line 237
    :goto_2
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v2}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v6

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    if-eqz v5, :cond_3

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    :goto_3
    move v2, v1

    .line 246
    :goto_4
    if-ge v2, v6, :cond_5

    .line 247
    iget-object v7, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v7, v2}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v7

    .line 248
    invoke-virtual {v7}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v8

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "try "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v10

    invoke-static {v10}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 250
    invoke-virtual {v7}, Lcom/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v7

    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 251
    const-string v9, ""

    invoke-virtual {v8, v3, v9}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    if-eqz v5, :cond_4

    .line 254
    invoke-interface {p3, v4, v7}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 255
    invoke-interface {p3, v0, v8}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 246
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move v5, v1

    .line 234
    goto/16 :goto_0

    :cond_1
    move v4, v1

    .line 235
    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 236
    goto/16 :goto_2

    .line 243
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 257
    :cond_4
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 262
    :cond_5
    if-nez v5, :cond_6

    .line 291
    :goto_6
    return-void

    .line 267
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "handlers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 268
    iget v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 269
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-interface {p3, v0, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    .line 275
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/dx/dex/code/CatchHandlerList;

    .line 277
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 279
    if-eqz v0, :cond_7

    .line 280
    sub-int v2, v7, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    :cond_7
    move-object v0, v6

    move v1, v7

    .line 286
    goto :goto_7

    .line 288
    :cond_8
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    goto :goto_6
.end method

.method private finishProcessingIfNecessary()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getCatches()Lcom/android/dx/dex/code/CatchTable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 110
    return-void
.end method

.method public encode(Lcom/android/dx/dex/file/DexFile;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 120
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v4

    .line 121
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v1

    .line 123
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    move v0, v3

    .line 129
    :goto_0
    if-ge v0, v1, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v5, v0}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "too many catch handlers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    new-instance v5, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v5}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 142
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 146
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/code/CatchHandlerList;

    .line 148
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v2

    .line 149
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    move-result v7

    .line 152
    invoke-virtual {v5}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    if-eqz v7, :cond_3

    .line 156
    add-int/lit8 v0, v2, -0x1

    neg-int v0, v0

    invoke-virtual {v5, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    .line 157
    add-int/lit8 v0, v2, -0x1

    :goto_2
    move v2, v3

    .line 162
    :goto_3
    if-ge v2, v0, :cond_4

    .line 163
    invoke-virtual {v1, v2}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v8

    .line 165
    invoke-virtual {v8}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v9

    .line 164
    invoke-virtual {v5, v9}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 166
    invoke-virtual {v8}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 159
    :cond_3
    invoke-virtual {v5, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    move v0, v2

    goto :goto_2

    .line 169
    :cond_4
    if-eqz v7, :cond_2

    .line 170
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_1

    .line 174
    :cond_5
    invoke-virtual {v5}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    .line 175
    return-void
.end method

.method public triesSize()I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 99
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v0

    return v0
.end method

.method public writeSize()I
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/dx/dex/file/CatchStructs;->triesSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 7

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 196
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "  "

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v2

    .line 201
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v3

    .line 204
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v4

    .line 205
    sub-int v5, v4, v3

    .line 207
    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_1

    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus exception range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    invoke-interface {p2, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 214
    invoke-interface {p2, v5}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 215
    iget-object v3, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    .line 219
    return-void
.end method
