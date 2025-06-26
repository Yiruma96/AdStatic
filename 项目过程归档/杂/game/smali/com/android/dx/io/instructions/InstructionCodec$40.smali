.class final enum Lcom/android/dx/io/instructions/InstructionCodec$40;
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
    .line 813
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 816
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 817
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v6

    .line 819
    packed-switch v0, :pswitch_data_0

    .line 859
    :pswitch_0
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bogus element_width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 860
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :pswitch_1
    new-array v7, v6, [B

    move v0, v2

    move v4, v2

    move v5, v1

    .line 823
    :goto_0
    if-ge v4, v6, :cond_2

    .line 824
    if-eqz v5, :cond_0

    .line 825
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 827
    :cond_0
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v7, v4

    .line 828
    shr-int/lit8 v3, v0, 0x8

    .line 823
    add-int/lit8 v4, v4, 0x1

    if-nez v5, :cond_1

    move v0, v1

    :goto_1
    move v5, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 830
    :cond_2
    new-instance v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v7}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[B)V

    .line 854
    :goto_2
    return-object v0

    .line 834
    :pswitch_2
    new-array v1, v6, [S

    .line 835
    :goto_3
    if-ge v2, v6, :cond_3

    .line 836
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v1, v2

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 838
    :cond_3
    new-instance v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[S)V

    goto :goto_2

    .line 842
    :pswitch_3
    new-array v1, v6, [I

    .line 843
    :goto_4
    if-ge v2, v6, :cond_4

    .line 844
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v0

    aput v0, v1, v2

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 846
    :cond_4
    new-instance v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[I)V

    goto :goto_2

    .line 850
    :pswitch_4
    new-array v1, v6, [J

    .line 851
    :goto_5
    if-ge v2, v6, :cond_5

    .line 852
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readLong()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 851
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 854
    :cond_5
    new-instance v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[J)V

    goto :goto_2

    .line 819
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 4

    .prologue
    .line 864
    check-cast p1, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    .line 866
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getElementWidthUnit()S

    move-result v1

    .line 867
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 869
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 870
    invoke-interface {p2, v1}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 871
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getSize()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 873
    packed-switch v1, :pswitch_data_0

    .line 879
    :pswitch_0
    new-instance v0, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bogus element_width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 880
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :pswitch_1
    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write([B)V

    .line 883
    :goto_0
    return-void

    .line 875
    :pswitch_2
    check-cast v0, [S

    check-cast v0, [S

    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write([S)V

    goto :goto_0

    .line 876
    :pswitch_3
    check-cast v0, [I

    check-cast v0, [I

    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write([I)V

    goto :goto_0

    .line 877
    :pswitch_4
    check-cast v0, [J

    check-cast v0, [J

    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write([J)V

    goto :goto_0

    .line 873
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
