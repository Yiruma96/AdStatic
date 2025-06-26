.class Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Lcom/android/dx/ssa/PhiInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->updateSuccessorPhis()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 3

    .prologue
    .line 633
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getRopResultReg()I

    move-result v0

    .line 634
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v1, v1, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    # invokes: Lcom/android/dx/ssa/SsaRenamer;->isBelowThresholdRegister(I)Z
    invoke-static {v1, v0}, Lcom/android/dx/ssa/SsaRenamer;->access$800(Lcom/android/dx/ssa/SsaRenamer;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    # getter for: Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->access$200(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    aget-object v0, v1, v0

    .line 648
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v1, v1, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    # invokes: Lcom/android/dx/ssa/SsaRenamer;->isVersionZeroRegister(I)Z
    invoke-static {v1, v2}, Lcom/android/dx/ssa/SsaRenamer;->access$900(Lcom/android/dx/ssa/SsaRenamer;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    # getter for: Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-static {v1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->access$1000(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/dx/ssa/PhiInsn;->addPhiOperand(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_0
.end method
