.class Lcom/google/dexmaker/DexMaker$MethodDeclaration;
.super Ljava/lang/Object;
.source "DexMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodDeclaration"
.end annotation


# instance fields
.field private final code:Lcom/google/dexmaker/Code;

.field private final flags:I

.field final method:Lcom/google/dexmaker/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/MethodId",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/MethodId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/MethodId",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->method:Lcom/google/dexmaker/MethodId;

    .line 483
    iput p2, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    .line 484
    new-instance v0, Lcom/google/dexmaker/Code;

    invoke-direct {v0, p0}, Lcom/google/dexmaker/Code;-><init>(Lcom/google/dexmaker/DexMaker$MethodDeclaration;)V

    iput-object v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;

    .line 485
    return-void
.end method

.method static synthetic access$600(Lcom/google/dexmaker/DexMaker$MethodDeclaration;)Lcom/google/dexmaker/Code;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;

    return-object v0
.end method


# virtual methods
.method isDirect()Z
    .locals 2

    .prologue
    .line 492
    iget v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    const v1, 0x1000a

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNative()Z
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStatic()Z
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toEncodedMethod(Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/file/EncodedMethod;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->isNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Lcom/android/dx/dex/file/EncodedMethod;

    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->method:Lcom/google/dexmaker/MethodId;

    iget-object v1, v1, Lcom/google/dexmaker/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    iget v2, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    sget-object v3, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/dx/dex/file/EncodedMethod;-><init>(Lcom/android/dx/rop/cst/CstMethodRef;ILcom/android/dx/dex/code/DalvCode;Lcom/android/dx/rop/type/TypeList;)V

    .line 507
    :goto_0
    return-object v0

    .line 503
    :cond_0
    new-instance v0, Lcom/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;

    invoke-virtual {v1}, Lcom/google/dexmaker/Code;->toBasicBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    .line 505
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;

    .line 506
    invoke-virtual {v2}, Lcom/google/dexmaker/Code;->paramSize()I

    move-result v2

    .line 505
    invoke-static {v0, v1, v4, v2, p1}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    move-result-object v1

    .line 507
    new-instance v0, Lcom/android/dx/dex/file/EncodedMethod;

    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->method:Lcom/google/dexmaker/MethodId;

    iget-object v2, v2, Lcom/google/dexmaker/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    iget v3, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    sget-object v4, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/dx/dex/file/EncodedMethod;-><init>(Lcom/android/dx/rop/cst/CstMethodRef;ILcom/android/dx/dex/code/DalvCode;Lcom/android/dx/rop/type/TypeList;)V

    goto :goto_0
.end method
