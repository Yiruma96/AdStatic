.class public final Lcom/android/dx/dex/file/DebugInfoEncoder;
.super Ljava/lang/Object;
.source "DebugInfoEncoder.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private address:I

.field private annotateTo:Lcom/android/dx/util/AnnotatedOutput;

.field private final codeSize:I

.field private debugPrint:Ljava/io/PrintWriter;

.field private final desc:Lcom/android/dx/rop/type/Prototype;

.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

.field private line:I

.field private final locals:Lcom/android/dx/dex/code/LocalList;

.field private final output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

.field private final positions:Lcom/android/dx/dex/code/PositionList;

.field private prefix:Ljava/lang/String;

.field private final regSize:I

.field private shouldConsume:Z


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;Lcom/android/dx/dex/file/DexFile;IIZLcom/android/dx/rop/cst/CstMethodRef;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 111
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    .line 112
    iput-object p2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    .line 113
    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    .line 114
    invoke-virtual {p7}, Lcom/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/android/dx/rop/type/Prototype;

    .line 115
    iput-boolean p6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    .line 116
    iput p4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    .line 117
    iput p5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    .line 119
    new-instance v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    .line 120
    new-array v0, p5, [Lcom/android/dx/dex/code/LocalList$Entry;

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    .line 121
    return-void
.end method

.method private annotate(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    iget-boolean v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    if-eqz v1, :cond_3

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    :cond_2
    return-void

    .line 136
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private buildSortedPositions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    if-nez v0, :cond_0

    move v0, v1

    .line 488
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    :goto_1
    if-ge v1, v0, :cond_1

    .line 491
    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    invoke-virtual {v3, v1}, Lcom/android/dx/dex/code/PositionList;->get(I)Lcom/android/dx/dex/code/PositionList$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList;->size()I

    move-result v0

    goto :goto_0

    .line 495
    :cond_1
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoEncoder$1;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/DebugInfoEncoder$1;-><init>(Lcom/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 504
    return-object v2
.end method

.method private static computeOpcode(II)I
    .locals 2

    .prologue
    .line 833
    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v0, 0xa

    if-le p0, v0, :cond_1

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter out of range"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_1
    add-int/lit8 v0, p0, 0x4

    mul-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private convert0()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const v3, 0x7fffffff

    .line 194
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->buildSortedPositions()Ljava/util/ArrayList;

    move-result-object v5

    .line 195
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->extractMethodArguments()Ljava/util/ArrayList;

    move-result-object v1

    .line 197
    invoke-direct {p0, v5, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 200
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 202
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 203
    :cond_0
    const-string v1, "%04x: prologue end"

    new-array v2, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 206
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 207
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v7

    move v2, v0

    .line 219
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalsAtAddress(I)I

    move-result v1

    .line 221
    invoke-direct {p0, v2, v5}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPositionsAtAddress(ILjava/util/ArrayList;)I

    move-result v4

    .line 230
    if-ge v1, v7, :cond_7

    .line 231
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v0

    move v2, v0

    .line 234
    :goto_1
    if-ge v4, v6, :cond_6

    .line 235
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v0

    .line 238
    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 241
    if-ne v8, v3, :cond_3

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitEndSequence()V

    .line 265
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 249
    :cond_3
    iget v9, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    if-ne v8, v9, :cond_4

    if-ne v2, v3, :cond_4

    if-eq v0, v3, :cond_2

    .line 255
    :cond_4
    if-ne v8, v0, :cond_5

    .line 257
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V

    move v0, v2

    :goto_3
    move v2, v0

    move v0, v1

    .line 261
    goto :goto_0

    .line 259
    :cond_5
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int v0, v8, v0

    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method private emitAdvanceLine(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 853
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 854
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    .line 855
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 857
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "line = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 859
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 865
    :cond_1
    return-void
.end method

.method private emitAdvancePc(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 875
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 877
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 878
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 879
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 881
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: advance pc"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 883
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 889
    :cond_1
    return-void
.end method

.method private emitEndSequence()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 916
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 917
    :cond_0
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 919
    :cond_1
    return-void
.end method

.method private emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_a

    :cond_0
    move v1, v3

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v4

    .line 375
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 376
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    .line 377
    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    iget v6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {v0, v6}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 381
    if-eqz v1, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    sub-int/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "line_start: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    move-result v4

    .line 387
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v6

    .line 388
    invoke-virtual {v6}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v7

    .line 394
    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    if-nez v0, :cond_12

    .line 395
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    .line 396
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v9

    if-ne v4, v9, :cond_3

    .line 397
    iget-object v8, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    aput-object v0, v8, v4

    .line 401
    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 405
    :goto_1
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v4

    .line 406
    iget-object v8, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v8, v7}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 408
    if-eqz v1, :cond_5

    .line 409
    iget-object v8, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v8}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v8

    sub-int v4, v8, v4

    const-string v8, "parameters_size: %04x"

    new-array v3, v3, [Ljava/lang/Object;

    .line 410
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-direct {p0, v4, v3}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_5
    move v3, v2

    move v4, v0

    .line 417
    :goto_2
    if-ge v3, v7, :cond_d

    .line 418
    invoke-virtual {v6, v3}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v8

    .line 421
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v9

    .line 423
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    .line 424
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v11

    if-ne v4, v11, :cond_6

    .line 427
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 432
    invoke-direct {p0, v5}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    .line 436
    :goto_3
    iget-object v10, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    aput-object v0, v10, v4

    .line 442
    :goto_4
    if-nez v0, :cond_7

    .line 448
    invoke-direct {p0, v5}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    .line 451
    :cond_7
    if-eqz v1, :cond_9

    .line 452
    if-eqz v0, :cond_8

    .line 453
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v10

    if-eqz v10, :cond_c

    :cond_8
    const-string v0, "<unnamed>"

    .line 455
    :goto_5
    iget-object v10, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v10}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v10

    sub-int v9, v10, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parameter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "v"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 460
    :cond_9
    invoke-virtual {v8}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    add-int/2addr v4, v0

    .line 417
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_a
    move v1, v2

    .line 371
    goto/16 :goto_0

    .line 434
    :cond_b
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    goto :goto_3

    .line 454
    :cond_c
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 468
    :cond_d
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 469
    if-nez v3, :cond_f

    .line 468
    :cond_e
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 473
    :cond_f
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v4

    .line 475
    if-eqz v4, :cond_e

    .line 476
    invoke-direct {p0, v3}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_7

    .line 479
    :cond_10
    return-void

    :cond_11
    move-object v0, v5

    goto :goto_4

    :cond_12
    move v0, v4

    goto/16 :goto_1
.end method

.method private emitLocalEnd(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 750
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 751
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 753
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: -local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 755
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 756
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 755
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 754
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 762
    :cond_1
    return-void
.end method

.method private emitLocalRestart(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 616
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 617
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    .line 619
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +local restart %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 622
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 621
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 628
    :cond_1
    return-void
.end method

.method private emitLocalStart(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 686
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 694
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    .line 695
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    .line 696
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitTypeIndex(Lcom/android/dx/rop/cst/CstType;)V

    .line 698
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    .line 699
    :cond_2
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 700
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 701
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 700
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 721
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 723
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    .line 724
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    .line 725
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitTypeIndex(Lcom/android/dx/rop/cst/CstType;)V

    .line 726
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V

    .line 728
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +localx %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 730
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 731
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 730
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 737
    :cond_1
    return-void
.end method

.method private emitLocalsAtAddress(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v1

    .line 284
    :goto_0
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    .line 285
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v0

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-ne v0, v2, :cond_5

    .line 286
    iget-object v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v2, p1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v3

    .line 288
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    aget-object v4, v4, v3

    .line 290
    if-ne v2, v4, :cond_0

    move p1, v0

    .line 296
    goto :goto_0

    .line 300
    :cond_0
    iget-object v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    aput-object v2, v5, v3

    .line 302
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalRestart(Lcom/android/dx/dex/code/LocalList$Entry;)V

    :cond_2
    :goto_1
    move p1, v0

    .line 335
    goto :goto_0

    .line 318
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStart(Lcom/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_1

    .line 330
    :cond_4
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v3

    sget-object v4, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-eq v3, v4, :cond_2

    .line 332
    invoke-direct {p0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalEnd(Lcom/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_1

    .line 337
    :cond_5
    return p1
.end method

.method private emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 775
    invoke-virtual {p1}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    .line 777
    invoke-virtual {p1}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v2

    .line 781
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    sub-int/2addr v0, v3

    .line 782
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int/2addr v2, v3

    .line 784
    if-gez v2, :cond_0

    .line 785
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position entries must be in ascending address order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_0
    const/4 v3, -0x4

    if-lt v0, v3, :cond_1

    const/16 v3, 0xa

    if-le v0, v3, :cond_2

    .line 791
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    move v0, v1

    .line 795
    :cond_2
    invoke-static {v0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v3

    .line 797
    and-int/lit16 v4, v3, -0x100

    if-lez v4, :cond_6

    .line 798
    invoke-direct {p0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    .line 800
    invoke-static {v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v2

    .line 802
    and-int/lit16 v3, v2, -0x100

    if-lez v3, :cond_5

    .line 803
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    .line 805
    invoke-static {v1, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v0

    move v2, v1

    move v3, v0

    move v0, v1

    .line 809
    :goto_0
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v4, v3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 811
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 812
    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 814
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    .line 815
    :cond_3
    const-string v0, "%04x: line %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 816
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-direct {p0, v5, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 818
    :cond_4
    return-void

    :cond_5
    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_6
    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0
.end method

.method private emitPositionsAtAddress(ILjava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 352
    :goto_0
    if-ge p1, v2, :cond_0

    .line 353
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v0

    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-ne v0, v1, :cond_0

    .line 355
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V

    move p1, v1

    goto :goto_0

    .line 357
    :cond_0
    return p1
.end method

.method private emitStringIndex(Lcom/android/dx/rop/cst/CstString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    if-nez v0, :cond_1

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 651
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    .line 644
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 643
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_0
.end method

.method private emitTypeIndex(Lcom/android/dx/rop/cst/CstType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    if-nez v0, :cond_1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 672
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    .line 665
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 664
    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_0
.end method

.method private emitUnsignedLeb128(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    if-gez p1, :cond_0

    .line 902
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed value where unsigned required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 907
    return-void
.end method

.method private entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 580
    if-nez v1, :cond_1

    .line 581
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 588
    if-nez v1, :cond_2

    .line 589
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :goto_1
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 596
    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :cond_1
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private extractMethodArguments()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/android/dx/rop/type/Prototype;

    .line 529
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    move-result v2

    .line 531
    new-instance v3, Ljava/util/BitSet;

    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    sub-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 532
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v4

    .line 534
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    .line 535
    iget-object v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v5, v0}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v5

    .line 536
    invoke-virtual {v5}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v6

    .line 538
    if-ge v6, v2, :cond_1

    .line 534
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    sub-int v7, v6, v2

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 547
    sub-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 548
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 552
    :cond_2
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoEncoder$2;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/DebugInfoEncoder$2;-><init>(Lcom/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 562
    return-object v1
.end method

.method private getParamBase()I
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/android/dx/rop/type/Prototype;

    .line 516
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v1

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convert()[B
    .locals 2

    .prologue
    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert0()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "...while encoding debug info"

    .line 165
    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    .line 185
    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/android/dx/util/AnnotatedOutput;

    .line 186
    iput-boolean p4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert()[B

    move-result-object v0

    .line 190
    return-object v0
.end method
