.class final enum Lcom/android/dx/io/instructions/InstructionCodec$12;
.super Lcom/android/dx/io/instructions/InstructionCodec;
.source "InstructionCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/instructions/InstructionCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 228
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte0(I)I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    move-result v2

    .line 229
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte1(I)I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$200(I)I

    move-result v8

    .line 230
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    int-to-short v0, v0

    int-to-long v4, v0

    .line 237
    const/16 v0, 0x15

    if-ne v2, v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    shl-long v6, v4, v0

    .line 239
    new-instance v0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;

    const/4 v4, 0x0

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V

    return-object v0

    .line 237
    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v1

    .line 248
    const/16 v0, 0x15

    if-ne v1, v0, :cond_0

    const/16 v0, 0x10

    .line 249
    :goto_0
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getLiteral()J

    move-result-wide v2

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-short v0, v0

    .line 251
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v2

    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S
    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(SS)V

    .line 252
    return-void

    .line 248
    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method
