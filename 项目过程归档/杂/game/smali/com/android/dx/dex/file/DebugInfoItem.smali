.class public Lcom/android/dx/dex/file/DebugInfoItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "DebugInfoItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x1

.field private static final ENABLE_ENCODER_SELF_CHECK:Z


# instance fields
.field private final code:Lcom/android/dx/dex/code/DalvCode;

.field private encoded:[B

.field private final isStatic:Z

.field private final ref:Lcom/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/DalvCode;ZLcom/android/dx/rop/cst/CstMethodRef;)V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    .line 52
    iput-boolean p2, p0, Lcom/android/dx/dex/file/DebugInfoItem;->isStatic:Z

    .line 53
    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    .line 54
    return-void
.end method

.method private encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B
    .locals 1

    .prologue
    .line 142
    invoke-direct/range {p0 .. p5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode0(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v0

    .line 156
    return-object v0
.end method

.method private encode0(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B
    .locals 8

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getPositions()Lcom/android/dx/dex/code/PositionList;

    move-result-object v1

    .line 174
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getLocals()Lcom/android/dx/dex/code/LocalList;

    move-result-object v2

    .line 175
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v4

    .line 177
    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v5

    .line 179
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoEncoder;

    iget-boolean v6, p0, Lcom/android/dx/dex/file/DebugInfoItem;->isStatic:Z

    iget-object v7, p0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/dx/dex/file/DebugInfoEncoder;-><init>(Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;Lcom/android/dx/dex/file/DexFile;IIZLcom/android/dx/rop/cst/CstMethodRef;)V

    .line 185
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert()[B

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public annotateTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 99
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    .line 100
    return-void
.end method

.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 109
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    .line 110
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .locals 6

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->encoded:[B

    .line 75
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->encoded:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/DebugInfoItem;->setWriteSize(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while placing debug info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    .line 78
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/DebugInfoItem;->offsetString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 122
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->encoded:[B

    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    .line 126
    return-void
.end method
