.class public final Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;
.super Lcom/android/dx/io/instructions/DecodedInstruction;
.source "ZeroRegisterDecodedInstruction.java"


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    .line 31
    return-void
.end method


# virtual methods
.method public getRegisterCount()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 8

    .prologue
    .line 40
    new-instance v0, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    .line 41
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getFormat()Lcom/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getIndexType()Lcom/android/dx/io/IndexType;

    move-result-object v4

    .line 42
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getTarget()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getLiteral()J

    move-result-wide v6

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    return-object v0
.end method
