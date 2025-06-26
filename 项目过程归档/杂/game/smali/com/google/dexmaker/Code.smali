.class public final Lcom/google/dexmaker/Code;
.super Ljava/lang/Object;
.source "Code.java"


# instance fields
.field private final catchLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final catchTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;>;"
        }
    .end annotation
.end field

.field private catches:Lcom/android/dx/rop/type/StdTypeList;

.field private currentLabel:Lcom/google/dexmaker/Label;

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final locals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Local",
            "<*>;>;"
        }
    .end annotation
.end field

.field private localsInitialized:Z

.field private final method:Lcom/google/dexmaker/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/MethodId",
            "<**>;"
        }
    .end annotation
.end field

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Local",
            "<*>;>;"
        }
    .end annotation
.end field

.field private sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

.field private final thisLocal:Lcom/google/dexmaker/Local;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/Local",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/dexmaker/DexMaker$MethodDeclaration;)V
    .locals 5

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/Code;->locals:Ljava/util/List;

    .line 203
    sget-object v0, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    iput-object v0, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/Code;->catchLabels:Ljava/util/List;

    .line 206
    sget-object v0, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    iput-object v0, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    .line 209
    iget-object v0, p1, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->method:Lcom/google/dexmaker/MethodId;

    iput-object v0, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    .line 210
    invoke-virtual {p1}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    iget-object v1, v0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 217
    iget-object v4, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    invoke-static {p0, v3}, Lcom/google/dexmaker/Local;->get(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-static {p0, v0}, Lcom/google/dexmaker/Local;->get(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    .line 214
    iget-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    iget-object v1, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_1
    new-instance v0, Lcom/google/dexmaker/Label;

    invoke-direct {v0}, Lcom/google/dexmaker/Label;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    .line 220
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    .line 221
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/dexmaker/Label;->marked:Z

    .line 222
    return-void
.end method

.method private addInstruction(Lcom/android/dx/rop/code/Insn;)V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;Lcom/google/dexmaker/Label;)V

    .line 402
    return-void
.end method

.method private addInstruction(Lcom/android/dx/rop/code/Insn;Lcom/google/dexmaker/Label;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    iget-boolean v0, v0, Lcom/google/dexmaker/Label;->marked:Z

    if-nez v0, :cond_1

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no current label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    iget-object v0, v0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 451
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 416
    :pswitch_1
    if-eqz p2, :cond_3

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected branch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :pswitch_2
    if-eqz p2, :cond_2

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected branch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_2
    iput-object v2, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    .line 453
    :cond_3
    :goto_0
    return-void

    .line 429
    :pswitch_3
    if-nez p2, :cond_4

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "branch == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    iput-object p2, v0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    .line 433
    iput-object v2, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    goto :goto_0

    .line 437
    :pswitch_4
    if-nez p2, :cond_5

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "branch == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/dexmaker/Code;->splitCurrentLabel(Lcom/google/dexmaker/Label;Ljava/util/List;)V

    goto :goto_0

    .line 444
    :pswitch_5
    if-eqz p2, :cond_6

    .line 445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected branch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/dexmaker/Code;->catchLabels:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2, v0}, Lcom/google/dexmaker/Code;->splitCurrentLabel(Lcom/google/dexmaker/Label;Ljava/util/List;)V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private adopt(Lcom/google/dexmaker/Label;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p1, Lcom/google/dexmaker/Label;->code:Lcom/google/dexmaker/Code;

    if-ne v0, p0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p1, Lcom/google/dexmaker/Label;->code:Lcom/google/dexmaker/Code;

    if-eqz v0, :cond_1

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot adopt label; it belongs to another Code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    iput-object p0, p1, Lcom/google/dexmaker/Label;->code:Lcom/google/dexmaker/Code;

    .line 325
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private cleanUpLabels()V
    .locals 4

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 886
    iget-object v1, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Label;

    .line 888
    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 894
    goto :goto_0

    .line 891
    :cond_0
    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->compact()V

    .line 892
    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/google/dexmaker/Label;->id:I

    move v0, v2

    goto :goto_1

    .line 895
    :cond_1
    return-void
.end method

.method private coerce(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, p2}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    return-object p1
.end method

.method private static concatenate(Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)",
            "Lcom/android/dx/rop/code/RegisterSpecList;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 898
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 899
    :goto_0
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecList;

    array-length v3, p1

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 900
    if-eqz p0, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 903
    :cond_0
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 904
    add-int v3, v1, v0

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 898
    goto :goto_0

    .line 906
    :cond_2
    return-object v2
.end method

.method private getCastRop(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Rop;
    .locals 2

    .prologue
    .line 758
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 759
    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 768
    :cond_0
    invoke-static {p2, p1}, Lcom/android/dx/rop/code/Rops;->opConv(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    :goto_0
    return-object v0

    .line 761
    :sswitch_0
    sget-object v0, Lcom/android/dx/rop/code/Rops;->TO_SHORT:Lcom/android/dx/rop/code/Rop;

    goto :goto_0

    .line 763
    :sswitch_1
    sget-object v0, Lcom/android/dx/rop/code/Rops;->TO_CHAR:Lcom/android/dx/rop/code/Rop;

    goto :goto_0

    .line 765
    :sswitch_2
    sget-object v0, Lcom/android/dx/rop/code/Rops;->TO_BYTE:Lcom/android/dx/rop/code/Rop;

    goto :goto_0

    .line 759
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private varargs invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/dx/rop/code/Rop;",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 696
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    invoke-static {p4, p5}, Lcom/google/dexmaker/Code;->concatenate(Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p2, Lcom/google/dexmaker/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 698
    if-eqz p3, :cond_0

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 701
    :cond_0
    return-void
.end method

.method private moveResult(Lcom/google/dexmaker/Local;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 841
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    .line 842
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 844
    :goto_0
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {p0, v1}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 845
    return-void

    .line 842
    :cond_0
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    .line 843
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opMoveResult(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    goto :goto_0
.end method

.method private splitCurrentLabel(Lcom/google/dexmaker/Label;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Label;",
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lcom/google/dexmaker/Label;

    invoke-direct {v0}, Lcom/google/dexmaker/Label;-><init>()V

    .line 462
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    .line 463
    iget-object v1, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    iput-object v0, v1, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    .line 464
    iget-object v1, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    iput-object p1, v1, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    .line 465
    iget-object v1, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    iput-object p2, v1, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    .line 466
    iput-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    .line 467
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/dexmaker/Label;->marked:Z

    .line 468
    return-void
.end method

.method private toTypeList(Ljava/util/List;)Lcom/android/dx/rop/type/StdTypeList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;>;)",
            "Lcom/android/dx/rop/type/StdTypeList;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v2, Lcom/android/dx/rop/type/StdTypeList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 394
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 395
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-virtual {v2, v1, v0}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 394
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 397
    :cond_0
    return-object v2
.end method


# virtual methods
.method public addCatchClause(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/Label;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/google/dexmaker/Label;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already caught: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    .line 366
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->toTypeList(Ljava/util/List;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    .line 368
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchLabels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public aget(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    iget-object v1, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opAget(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 797
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    .line 796
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 798
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 799
    return-void
.end method

.method public aput(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 805
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    iget-object v1, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opAput(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 806
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    .line 805
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 807
    return-void
.end method

.method public arrayLength(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 777
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->ARRAY_LENGTH:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 778
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    .line 777
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 779
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 780
    return-void
.end method

.method public cast(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->getType()Lcom/google/dexmaker/TypeId;

    move-result-object v0

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->CHECK_CAST:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 748
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v5, v5, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 747
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 749
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 754
    :goto_0
    return-void

    .line 751
    :cond_0
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    iget-object v2, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v2, v2, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-direct {p0, v1, v2}, Lcom/google/dexmaker/Code;->getCastRop(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 752
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 751
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    goto :goto_0
.end method

.method public compare(Lcom/google/dexmaker/Comparison;Lcom/google/dexmaker/Label;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Comparison;",
            "Lcom/google/dexmaker/Label;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0, p2}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    .line 536
    iget-object v0, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    iget-object v1, p4, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/Comparison;->rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    const/4 v3, 0x0

    .line 538
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {p4}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 537
    invoke-direct {p0, v1, p2}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;Lcom/google/dexmaker/Label;)V

    .line 539
    return-void
.end method

.method public compareFloatingPoint(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 551
    iget-object v0, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opCmpg(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 557
    :goto_0
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 558
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 557
    invoke-direct {p0, v1}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 559
    return-void

    .line 552
    :cond_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 553
    iget-object v0, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opCmpl(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected 1 or -1 but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareLongs(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->CMPL_LONG:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 568
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 567
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 569
    return-void
.end method

.method public getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    if-eqz v0, :cond_0

    .line 243
    add-int/lit8 p1, p1, 0x1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Local;

    invoke-direct {p0, v0, p2}, Lcom/google/dexmaker/Code;->coerce(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v0

    return-object v0
.end method

.method public getThis(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "static methods cannot access \'this\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/Code;->coerce(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v0

    return-object v0
.end method

.method public iget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/FieldId",
            "<TD;TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opGetField(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 579
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 578
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 580
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 581
    return-void
.end method

.method initializeLocals()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 280
    iget-boolean v0, p0, Lcom/google/dexmaker/Code;->localsInitialized:Z

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/dexmaker/Code;->localsInitialized:Z

    .line 286
    iget-object v0, p0, Lcom/google/dexmaker/Code;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v6, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Local;

    .line 287
    invoke-virtual {v0, v6}, Lcom/google/dexmaker/Local;->initialize(I)I

    move-result v0

    add-int/2addr v0, v6

    move v6, v0

    .line 288
    goto :goto_0

    .line 290
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 291
    iget-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v6

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/dexmaker/Local;

    .line 292
    sub-int v0, v1, v6

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v5

    .line 293
    invoke-virtual {v3, v1}, Lcom/google/dexmaker/Local;->initialize(I)I

    move-result v0

    add-int v8, v1, v0

    .line 294
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    iget-object v1, v3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opMoveParam(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 295
    invoke-virtual {v3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 294
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v8

    .line 296
    goto :goto_1

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Label;

    iget-object v0, v0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    invoke-interface {v0, v7, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 298
    return-void
.end method

.method public instanceOfType(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/TypeId;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->INSTANCE_OF:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 712
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p3, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 711
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 713
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 714
    return-void
.end method

.method public varargs invokeDirect(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 661
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeDirect(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 662
    return-void
.end method

.method public varargs invokeInterface(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 691
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeInterface(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 692
    return-void
.end method

.method public varargs invokeStatic(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<*TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 633
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeStatic(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 634
    return-void
.end method

.method public varargs invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 673
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeSuper(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 674
    return-void
.end method

.method public invokeSuperNoArguments(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;)V"
        }
    .end annotation

    .prologue
    .line 678
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/dexmaker/Local;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/dexmaker/Code;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 679
    return-void
.end method

.method public varargs invokeVirtual(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 647
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeVirtual(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 648
    return-void
.end method

.method public iput(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/FieldId",
            "<TD;TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TD;>;",
            "Lcom/google/dexmaker/Local",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 588
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v1, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opPutField(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 589
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 588
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 590
    return-void
.end method

.method public jump(Lcom/google/dexmaker/Label;)V
    .locals 5

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    .line 349
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;Lcom/google/dexmaker/Label;)V

    .line 351
    return-void
.end method

.method public loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 477
    if-nez p2, :cond_0

    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONST_OBJECT_NOTHROW:Lcom/android/dx/rop/code/Rop;

    .line 480
    :goto_0
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 481
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 482
    invoke-static {p2}, Lcom/google/dexmaker/Constants;->getConstant(Ljava/lang/Object;)Lcom/android/dx/rop/cst/TypedConstant;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 481
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 488
    :goto_1
    return-void

    .line 477
    :cond_0
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    .line 479
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opConst(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    goto :goto_0

    .line 484
    :cond_1
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    .line 485
    invoke-static {p2}, Lcom/google/dexmaker/Constants;->getConstant(Ljava/lang/Object;)Lcom/android/dx/rop/cst/TypedConstant;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 484
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 486
    invoke-direct {p0, p1, v6}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    goto :goto_1
.end method

.method public mark(Lcom/google/dexmaker/Label;)V
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    .line 333
    iget-boolean v0, p1, Lcom/google/dexmaker/Label;->marked:Z

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already marked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/dexmaker/Label;->marked:Z

    .line 337
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/Code;->jump(Lcom/google/dexmaker/Label;)V

    .line 340
    :cond_1
    iput-object p1, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    .line 341
    return-void
.end method

.method public monitorEnter(Lcom/google/dexmaker/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 853
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->MONITOR_ENTER:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 854
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    .line 853
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 855
    return-void
.end method

.method public monitorExit(Lcom/google/dexmaker/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 861
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->MONITOR_ENTER:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 862
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    .line 861
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 863
    return-void
.end method

.method public move(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 495
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 494
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 496
    return-void
.end method

.method public newArray(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v1, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opNewArray(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 788
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v5, v5, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 787
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 789
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 790
    return-void
.end method

.method public varargs newInstance(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/MethodId;[Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/MethodId",
            "<TT;",
            "Ljava/lang/Void;",
            ">;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 619
    :cond_0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->NEW_INSTANCE:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p2, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    iget-object v5, v5, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/google/dexmaker/Code;->invokeDirect(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 623
    return-void
.end method

.method public newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/dexmaker/Code;->localsInitialized:Z

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot allocate locals after adding instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    invoke-static {p0, p1}, Lcom/google/dexmaker/Local;->get(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/google/dexmaker/Code;->locals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0
.end method

.method public op(Lcom/google/dexmaker/BinaryOp;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/BinaryOp;",
            "Lcom/google/dexmaker/Local",
            "<TT1;>;",
            "Lcom/google/dexmaker/Local",
            "<TT1;>;",
            "Lcom/google/dexmaker/Local",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 515
    iget-object v0, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    iget-object v1, p4, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/BinaryOp;->rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 516
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {p4}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 518
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 519
    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    iget-object v3, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {p0, v2}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_0
    new-instance v2, Lcom/android/dx/rop/code/ThrowingInsn;

    iget-object v3, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    invoke-direct {p0, v2}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 522
    invoke-direct {p0, p2, v5}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    goto :goto_0
.end method

.method public op(Lcom/google/dexmaker/UnaryOp;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/UnaryOp;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    iget-object v1, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    invoke-virtual {p1, v1}, Lcom/google/dexmaker/UnaryOp;->rop(Lcom/google/dexmaker/TypeId;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 505
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 504
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 506
    return-void
.end method

.method paramSize()I
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    iget-object v1, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Local;

    .line 307
    invoke-virtual {v0}, Lcom/google/dexmaker/Local;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 308
    goto :goto_0

    .line 309
    :cond_0
    return v1
.end method

.method public removeCatchClause(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Label;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/google/dexmaker/Label;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 376
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No catch clause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 380
    iget-object v1, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/dexmaker/Code;->toTypeList(Ljava/util/List;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    .line 381
    iget-object v1, p0, Lcom/google/dexmaker/Code;->catchLabels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Label;

    return-object v0
.end method

.method public returnValue(Lcom/google/dexmaker/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    iget-object v1, v1, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    iget-object v2, v2, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    iget-object v1, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opReturn(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    const/4 v3, 0x0

    .line 837
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 836
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 838
    return-void
.end method

.method public returnVoid()V
    .locals 5

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    iget-object v2, v2, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but returned void"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->RETURN_VOID:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 823
    return-void
.end method

.method public sget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/FieldId",
            "<*TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 596
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opGetStatic(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 598
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    .line 599
    return-void
.end method

.method public sput(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/FieldId",
            "<*TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 605
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opPutStatic(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 606
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v5, p1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 605
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 607
    return-void
.end method

.method public throwValue(Lcom/google/dexmaker/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    sget-object v1, Lcom/android/dx/rop/code/Rops;->THROW:Lcom/android/dx/rop/code/Rop;

    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 389
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    .line 388
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    .line 390
    return-void
.end method

.method toBasicBlocks()Lcom/android/dx/rop/code/BasicBlockList;
    .locals 3

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/google/dexmaker/Code;->localsInitialized:Z

    if-nez v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/google/dexmaker/Code;->initializeLocals()V

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/google/dexmaker/Code;->cleanUpLabels()V

    .line 874
    new-instance v2, Lcom/android/dx/rop/code/BasicBlockList;

    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/BasicBlockList;-><init>(I)V

    .line 875
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/Label;

    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->toBasicBlock()Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    .line 875
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 878
    :cond_1
    return-object v2
.end method
