.class Lcom/android/dx/ssa/LiteralOpUpgrader$1;
.super Ljava/lang/Object;
.source "LiteralOpUpgrader.java"

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/LiteralOpUpgrader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

.field final synthetic val$advice:Lcom/android/dx/rop/code/TranslationAdvice;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/rop/code/TranslationAdvice;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

    iput-object p2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/android/dx/rop/code/TranslationAdvice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

    # invokes: Lcom/android/dx/ssa/LiteralOpUpgrader;->tryReplacingWithConstant(Lcom/android/dx/ssa/NormalSsaInsn;)Z
    invoke-static {v2, p1}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$000(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 112
    invoke-virtual {v1, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    # invokes: Lcom/android/dx/ssa/LiteralOpUpgrader;->isConstIntZeroOrKnownNull(Lcom/android/dx/rop/code/RegisterSpec;)Z
    invoke-static {v2}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$100(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 114
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    invoke-static {v0}, Lcom/android/dx/rop/code/RegOps;->flippedIfOpcode(I)I

    move-result v0

    .line 113
    # invokes: Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V
    invoke-static {v2, p1, v1, v0, v4}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$200(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v1, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    # invokes: Lcom/android/dx/ssa/LiteralOpUpgrader;->isConstIntZeroOrKnownNull(Lcom/android/dx/rop/code/RegisterSpec;)Z
    invoke-static {v2}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$100(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    .line 116
    # invokes: Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V
    invoke-static {v2, p1, v1, v0, v4}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$200(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/android/dx/rop/code/TranslationAdvice;

    .line 120
    invoke-virtual {v1, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 119
    invoke-interface {v2, v0, v3, v4}, Lcom/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->upgradeToLiteral()V

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->isCommutative()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/android/dx/rop/code/TranslationAdvice;

    .line 124
    invoke-virtual {v1, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 123
    invoke-interface {v2, v0, v3, v4}, Lcom/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v1, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v1, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/android/dx/ssa/NormalSsaInsn;->setNewSources(Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 133
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->upgradeToLiteral()V

    goto :goto_0
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
