.class public Lcom/android/dx/io/OpcodeInfo$Info;
.super Ljava/lang/Object;
.source "OpcodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/OpcodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final format:Lcom/android/dx/io/instructions/InstructionCodec;

.field private final indexType:Lcom/android/dx/io/IndexType;

.field private final name:Ljava/lang/String;

.field private final opcode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/dx/io/instructions/InstructionCodec;Lcom/android/dx/io/IndexType;)V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1438
    iput p1, p0, Lcom/android/dx/io/OpcodeInfo$Info;->opcode:I

    .line 1439
    iput-object p2, p0, Lcom/android/dx/io/OpcodeInfo$Info;->name:Ljava/lang/String;

    .line 1440
    iput-object p3, p0, Lcom/android/dx/io/OpcodeInfo$Info;->format:Lcom/android/dx/io/instructions/InstructionCodec;

    .line 1441
    iput-object p4, p0, Lcom/android/dx/io/OpcodeInfo$Info;->indexType:Lcom/android/dx/io/IndexType;

    .line 1442
    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/dx/io/instructions/InstructionCodec;
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/dx/io/OpcodeInfo$Info;->format:Lcom/android/dx/io/instructions/InstructionCodec;

    return-object v0
.end method

.method public getIndexType()Lcom/android/dx/io/IndexType;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/dx/io/OpcodeInfo$Info;->indexType:Lcom/android/dx/io/IndexType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/dx/io/OpcodeInfo$Info;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpcode()I
    .locals 1

    .prologue
    .line 1445
    iget v0, p0, Lcom/android/dx/io/OpcodeInfo$Info;->opcode:I

    return v0
.end method
