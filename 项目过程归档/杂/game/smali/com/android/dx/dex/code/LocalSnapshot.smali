.class public final Lcom/android/dx/dex/code/LocalSnapshot;
.super Lcom/android/dx/dex/code/ZeroSizeInsn;
.source "LocalSnapshot.java"


# instance fields
.field private final locals:Lcom/android/dx/rop/code/RegisterSpecSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 48
    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    return-object v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v1

    .line 82
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v0, 0x28

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 84
    const-string v0, "local-snapshot"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_0

    .line 89
    const-string v4, "\n  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v3}, Lcom/android/dx/dex/code/LocalStart;->localString(Lcom/android/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalSnapshot;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/RegisterSpecSet;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V

    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalSnapshot;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V

    return-object v0
.end method
