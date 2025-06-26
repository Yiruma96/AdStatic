.class Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
.super Ljava/lang/Object;
.source "RopTranslator.java"

# interfaces
.implements Lcom/android/dx/rop/code/Insn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationVisitor"
.end annotation


# instance fields
.field private block:Lcom/android/dx/rop/code/BasicBlock;

.field private lastAddress:Lcom/android/dx/dex/code/CodeAddress;

.field private final output:Lcom/android/dx/dex/code/OutputCollector;

.field final synthetic this$0:Lcom/android/dx/dex/code/RopTranslator;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    .line 515
    return-void
.end method

.method private getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 669
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v1

    .line 671
    if-gez v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-object v0

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    .line 676
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;
    invoke-static {v2}, Lcom/android/dx/dex/code/RopTranslator;->access$500(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v1

    .line 678
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_0

    .line 681
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addOutput(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 797
    return-void
.end method

.method protected addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputCollector;->addSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 806
    return-void
.end method

.method public setBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CodeAddress;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    .line 526
    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    .line 527
    return-void
.end method

.method public visitFillArrayDataInsn(Lcom/android/dx/rop/code/FillArrayDataInsn;)V
    .locals 6

    .prologue
    .line 766
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 767
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 768
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getInitValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 769
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    .line 771
    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 772
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_0
    new-instance v3, Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v3, v0}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    .line 775
    new-instance v4, Lcom/android/dx/dex/code/ArrayData;

    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v4, v0, v5, v2, v1}, Lcom/android/dx/dex/code/ArrayData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V

    .line 778
    new-instance v1, Lcom/android/dx/dex/code/TargetInsn;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->FILL_ARRAY_DATA:Lcom/android/dx/dex/code/Dop;

    .line 779
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-direct {v1, v2, v0, v5, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 782
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 783
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 785
    new-instance v1, Lcom/android/dx/dex/code/OddSpacer;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 786
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 787
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 788
    return-void
.end method

.method public visitPlainCstInsn(Lcom/android/dx/rop/code/PlainCstInsn;)V
    .locals 6

    .prologue
    .line 579
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 580
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v2

    .line 581
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    .line 585
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 586
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    # getter for: Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z
    invoke-static {v0}, Lcom/android/dx/dex/code/RopTranslator;->access$200(Lcom/android/dx/dex/code/RopTranslator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 598
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    .line 599
    iget-object v4, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    .line 600
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->regCount:I
    invoke-static {v4}, Lcom/android/dx/dex/code/RopTranslator;->access$300(Lcom/android/dx/dex/code/RopTranslator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    # getter for: Lcom/android/dx/dex/code/RopTranslator;->paramSize:I
    invoke-static {v5}, Lcom/android/dx/dex/code/RopTranslator;->access$400(Lcom/android/dx/dex/code/RopTranslator;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 601
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v4

    .line 600
    invoke-static {v0, v4}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 602
    new-instance v4, Lcom/android/dx/dex/code/SimpleInsn;

    .line 603
    invoke-static {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {v4, v2, v1, v0}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 604
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 608
    :cond_2
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 609
    new-instance v3, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 610
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    goto :goto_0
.end method

.method public visitPlainInsn(Lcom/android/dx/rop/code/PlainInsn;)V
    .locals 6

    .prologue
    .line 531
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_0

    .line 544
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 545
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v2

    .line 548
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 570
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_2
    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 574
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    goto :goto_0

    .line 564
    :pswitch_3
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 565
    new-instance v0, Lcom/android/dx/dex/code/TargetInsn;

    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    .line 566
    # getter for: Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;
    invoke-static {v5}, Lcom/android/dx/dex/code/RopTranslator;->access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v3

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    goto :goto_1

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visitSwitchInsn(Lcom/android/dx/rop/code/SwitchInsn;)V
    .locals 8

    .prologue
    .line 616
    invoke-virtual {p1}, Lcom/android/dx/rop/code/SwitchInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 617
    invoke-virtual {p1}, Lcom/android/dx/rop/code/SwitchInsn;->getCases()Lcom/android/dx/util/IntList;

    move-result-object v2

    .line 618
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v3

    .line 619
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    move-result v4

    .line 620
    invoke-virtual {v3}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 621
    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v5

    .line 631
    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_0

    .line 632
    invoke-virtual {v3, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    if-eq v5, v0, :cond_1

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_1
    new-array v5, v4, [Lcom/android/dx/dex/code/CodeAddress;

    .line 638
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    .line 639
    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    .line 640
    iget-object v7, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    # getter for: Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;
    invoke-static {v7}, Lcom/android/dx/dex/code/RopTranslator;->access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v6

    aput-object v6, v5, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_2
    new-instance v3, Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v3, v1}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    .line 644
    new-instance v4, Lcom/android/dx/dex/code/SwitchData;

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v4, v1, v0, v2, v5}, Lcom/android/dx/dex/code/SwitchData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V

    .line 646
    invoke-virtual {v4}, Lcom/android/dx/dex/code/SwitchData;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/android/dx/dex/code/Dop;

    .line 648
    :goto_1
    new-instance v2, Lcom/android/dx/dex/code/TargetInsn;

    .line 649
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 651
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 652
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 654
    new-instance v0, Lcom/android/dx/dex/code/OddSpacer;

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 655
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 656
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 657
    return-void

    .line 646
    :cond_3
    sget-object v0, Lcom/android/dx/dex/code/Dops;->SPARSE_SWITCH:Lcom/android/dx/dex/code/Dop;

    goto :goto_1
.end method

.method public visitThrowingCstInsn(Lcom/android/dx/rop/code/ThrowingCstInsn;)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 687
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v3

    .line 688
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    .line 689
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v5

    .line 690
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 692
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v7, 0x6

    if-eq v2, v7, :cond_0

    .line 693
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 698
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 700
    new-instance v1, Lcom/android/dx/dex/code/CstInsn;

    invoke-direct {v1, v4, v3, v0, v6}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 702
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 736
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 706
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1, v7}, Lcom/android/dx/dex/code/RopTranslator;->access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    .line 709
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    move-result v2

    if-nez v2, :cond_2

    .line 710
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/16 v9, 0x2b

    if-ne v2, v9, :cond_3

    :cond_2
    move v2, v0

    .line 712
    :goto_1
    if-eqz v7, :cond_4

    :goto_2
    if-eq v2, v0, :cond_5

    .line 713
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v1

    .line 710
    goto :goto_1

    :cond_4
    move v0, v1

    .line 712
    goto :goto_2

    .line 718
    :cond_5
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_6

    .line 719
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    .line 725
    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-direct {v0, v4, v3, v8}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 734
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    goto :goto_0

    .line 731
    :cond_6
    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    invoke-direct {v0, v4, v3, v8, v6}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    goto :goto_3
.end method

.method public visitThrowingInsn(Lcom/android/dx/rop/code/ThrowingInsn;)V
    .locals 5

    .prologue
    .line 740
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 741
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v2

    .line 742
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    .line 746
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 751
    invoke-virtual {v2}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    move-result v4

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq v4, v0, :cond_2

    .line 752
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 758
    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    .line 759
    # invokes: Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {p1, v3}, Lcom/android/dx/dex/code/RopTranslator;->access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 761
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 762
    return-void
.end method
