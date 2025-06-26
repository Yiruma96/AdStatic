.class public final Lcom/android/dx/dex/code/LocalEnd;
.super Lcom/android/dx/dex/code/ZeroSizeInsn;
.source "LocalEnd.java"


# instance fields
.field private final local:Lcom/android/dx/rop/code/RegisterSpec;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "local == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    .line 55
    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocal()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local-end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-static {v1}, Lcom/android/dx/dex/code/LocalStart;->localString(Lcom/android/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/android/dx/dex/code/LocalEnd;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalEnd;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/code/LocalEnd;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/android/dx/dex/code/LocalEnd;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalEnd;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalEnd;->local:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/code/LocalEnd;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method
