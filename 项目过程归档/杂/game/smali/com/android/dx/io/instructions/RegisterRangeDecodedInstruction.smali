.class public final Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;
.super Lcom/android/dx/io/instructions/DecodedInstruction;
.source "RegisterRangeDecodedInstruction.java"


# instance fields
.field private final a:I

.field private final registerCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    .line 40
    iput p8, p0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->a:I

    .line 41
    iput p9, p0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->registerCount:I

    .line 42
    return-void
.end method


# virtual methods
.method public getA()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->a:I

    return v0
.end method

.method public getRegisterCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->registerCount:I

    return v0
.end method

.method public withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 10

    .prologue
    .line 56
    new-instance v0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;

    .line 57
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getFormat()Lcom/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getIndexType()Lcom/android/dx/io/IndexType;

    move-result-object v4

    .line 58
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getTarget()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getLiteral()J

    move-result-wide v6

    iget v8, p0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->a:I

    iget v9, p0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;->registerCount:I

    move v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V

    return-object v0
.end method
