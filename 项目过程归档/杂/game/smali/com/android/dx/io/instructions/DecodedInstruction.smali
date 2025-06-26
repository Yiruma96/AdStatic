.class public abstract Lcom/android/dx/io/instructions/DecodedInstruction;
.super Ljava/lang/Object;
.source "DecodedInstruction.java"


# instance fields
.field private final format:Lcom/android/dx/io/instructions/InstructionCodec;

.field private final index:I

.field private final indexType:Lcom/android/dx/io/IndexType;

.field private final literal:J

.field private final opcode:I

.field private final target:I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-static {p2}, Lcom/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iput-object p1, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->format:Lcom/android/dx/io/instructions/InstructionCodec;

    .line 112
    iput p2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->opcode:I

    .line 113
    iput p3, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->index:I

    .line 114
    iput-object p4, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->indexType:Lcom/android/dx/io/IndexType;

    .line 115
    iput p5, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->target:I

    .line 116
    iput-wide p6, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    .line 117
    return-void
.end method

.method public static decode(Lcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p0}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 71
    invoke-static {v0}, Lcom/android/dx/io/Opcodes;->extractOpcodeFromUnit(I)I

    move-result v1

    .line 72
    invoke-static {v1}, Lcom/android/dx/io/OpcodeInfo;->getFormat(I)Lcom/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0, p0}, Lcom/android/dx/io/instructions/InstructionCodec;->decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static decodeAll([S)[Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 4

    .prologue
    .line 83
    array-length v0, p0

    .line 84
    new-array v0, v0, [Lcom/android/dx/io/instructions/DecodedInstruction;

    .line 85
    new-instance v1, Lcom/android/dx/io/instructions/ShortArrayCodeInput;

    invoke-direct {v1, p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;-><init>([S)V

    .line 88
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    move-result v2

    invoke-static {v1}, Lcom/android/dx/io/instructions/DecodedInstruction;->decode(Lcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/android/dx/util/DexException;

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final encode(Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->format:Lcom/android/dx/io/instructions/InstructionCodec;

    invoke-virtual {v0, p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V

    .line 471
    return-void
.end method

.method public getA()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public final getAByte()S
    .locals 6

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    .line 305
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register A out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getANibble()S
    .locals 6

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    .line 319
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 320
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register A out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getAUnit()S
    .locals 6

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    .line 291
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 292
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register A out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public getB()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public final getBByte()S
    .locals 6

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    .line 347
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register B out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getBNibble()S
    .locals 6

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    .line 361
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 362
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register B out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getBUnit()S
    .locals 6

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    .line 333
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 334
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register B out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public getC()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public final getCByte()S
    .locals 6

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    .line 389
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_0

    .line 390
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register C out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getCNibble()S
    .locals 6

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    .line 403
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 404
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register C out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getCUnit()S
    .locals 6

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    .line 375
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 376
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register C out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public getD()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public final getDByte()S
    .locals 6

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    .line 431
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_0

    .line 432
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register D out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getDNibble()S
    .locals 6

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    .line 445
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 446
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register D out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getDUnit()S
    .locals 6

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    .line 417
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 418
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register D out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public getE()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public final getENibble()S
    .locals 6

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getE()I

    move-result v0

    .line 459
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 460
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register E out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getFormat()Lcom/android/dx/io/instructions/InstructionCodec;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->format:Lcom/android/dx/io/instructions/InstructionCodec;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->index:I

    return v0
.end method

.method public final getIndexType()Lcom/android/dx/io/IndexType;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->indexType:Lcom/android/dx/io/IndexType;

    return-object v0
.end method

.method public final getIndexUnit()S
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->index:I

    int-to-short v0, v0

    return v0
.end method

.method public final getLiteral()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    return-wide v0
.end method

.method public final getLiteralByte()I
    .locals 4

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lcom/android/dx/util/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getLiteralInt()I
    .locals 4

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/android/dx/util/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v0, v0

    return v0
.end method

.method public final getLiteralNibble()I
    .locals 4

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    const-wide/16 v2, -0x8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Lcom/android/dx/util/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final getLiteralUnit()S
    .locals 4

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v2

    int-to-short v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/dx/util/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public final getOpcode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->opcode:I

    return v0
.end method

.method public final getOpcodeUnit()S
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->opcode:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRegisterCount()I
.end method

.method public final getRegisterCountUnit()S
    .locals 6

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    move-result v0

    .line 276
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register count out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    .line 278
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getTarget()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->target:I

    return v0
.end method

.method public final getTarget(I)I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->target:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final getTargetByte(I)I
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    move-result v0

    .line 187
    int-to-byte v1, v0

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 189
    invoke-static {v0}, Lcom/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getTargetUnit(I)S
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    move-result v0

    .line 171
    int-to-short v1, v0

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    invoke-static {v0}, Lcom/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public abstract withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
.end method
