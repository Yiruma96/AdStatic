.class Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;
.super Lcom/android/dx/ssa/RegisterMapper;
.source "SsaRenamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenamingMapper"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-direct {p0}, Lcom/android/dx/ssa/RegisterMapper;-><init>()V

    .line 329
    return-void
.end method


# virtual methods
.method public getNewRegisterCount()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v0, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    # getter for: Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I
    invoke-static {v0}, Lcom/android/dx/ssa/SsaRenamer;->access$100(Lcom/android/dx/ssa/SsaRenamer;)I

    move-result v0

    return v0
.end method

.method public map(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 2

    .prologue
    .line 340
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 358
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    # getter for: Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->access$200(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_0
.end method
