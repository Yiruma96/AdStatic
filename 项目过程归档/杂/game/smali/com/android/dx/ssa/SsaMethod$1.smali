.class Lcom/android/dx/ssa/SsaMethod$1;
.super Ljava/lang/Object;
.source "SsaMethod.java"

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/dx/ssa/SsaMethod$1;->this$0:Lcom/android/dx/ssa/SsaMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod$1;->this$0:Lcom/android/dx/ssa/SsaMethod;

    # getter for: Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;
    invoke-static {v0}, Lcom/android/dx/ssa/SsaMethod;->access$000(Lcom/android/dx/ssa/SsaMethod;)[Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    aput-object p1, v0, v1

    .line 423
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod$1;->this$0:Lcom/android/dx/ssa/SsaMethod;

    # getter for: Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;
    invoke-static {v0}, Lcom/android/dx/ssa/SsaMethod;->access$000(Lcom/android/dx/ssa/SsaMethod;)[Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    aput-object p1, v0, v1

    .line 432
    :cond_0
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod$1;->this$0:Lcom/android/dx/ssa/SsaMethod;

    # getter for: Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;
    invoke-static {v0}, Lcom/android/dx/ssa/SsaMethod;->access$000(Lcom/android/dx/ssa/SsaMethod;)[Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    aput-object p1, v0, v1

    .line 426
    return-void
.end method
