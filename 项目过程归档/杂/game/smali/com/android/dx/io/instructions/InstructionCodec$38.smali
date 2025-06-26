.class final enum Lcom/android/dx/io/instructions/InstructionCodec$38;
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
    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->baseAddressForCursor()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 745
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v2

    .line 746
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v3

    .line 747
    new-array v4, v2, [I

    .line 749
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 750
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v5

    add-int/2addr v5, v1

    aput v5, v4, v0

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_0
    new-instance v0, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v3, v4}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;II[I)V

    return-object v0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 5

    .prologue
    .line 758
    check-cast p1, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    .line 760
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getTargets()[I

    move-result-object v1

    .line 761
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->baseAddressForCursor()I

    move-result v2

    .line 763
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 764
    array-length v0, v1

    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->asUnsignedUnit(I)S
    invoke-static {v0}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1700(I)S

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 765
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getFirstKey()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 767
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v1, v0

    .line 768
    sub-int/2addr v4, v2

    invoke-interface {p2, v4}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_0
    return-void
.end method
