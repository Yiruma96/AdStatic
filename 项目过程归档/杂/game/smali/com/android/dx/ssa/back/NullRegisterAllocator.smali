.class public Lcom/android/dx/ssa/back/NullRegisterAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;
.source "NullRegisterAllocator.java"


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    .line 36
    return-void
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .locals 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/dx/ssa/back/NullRegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    .line 50
    new-instance v2, Lcom/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v2, v1}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 52
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 53
    mul-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-object v2
.end method

.method public wantsParamsMovedHigh()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
