.class Lcom/google/dexmaker/DexMaker$TypeDeclaration;
.super Ljava/lang/Object;
.source "DexMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeDeclaration"
.end annotation


# instance fields
.field private declared:Z

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/dexmaker/FieldId;",
            "Lcom/google/dexmaker/DexMaker$FieldDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private interfaces:Lcom/google/dexmaker/TypeList;

.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/dexmaker/MethodId;",
            "Lcom/google/dexmaker/DexMaker$MethodDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private sourceFile:Ljava/lang/String;

.field private supertype:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation
.end field

.field private final type:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/dexmaker/TypeId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;

    .line 411
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;

    .line 415
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->type:Lcom/google/dexmaker/TypeId;

    .line 416
    return-void
.end method

.method static synthetic access$000(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Z)Z
    .locals 0

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/dexmaker/DexMaker$TypeDeclaration;I)I
    .locals 0

    .prologue
    .line 399
    iput p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->flags:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/TypeId;
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->supertype:Lcom/google/dexmaker/TypeId;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->sourceFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Lcom/google/dexmaker/TypeList;)Lcom/google/dexmaker/TypeList;
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->interfaces:Lcom/google/dexmaker/TypeList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method toClassDefItem()Lcom/android/dx/dex/file/ClassDefItem;
    .locals 8

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeclared type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->type:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " declares members: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;

    .line 421
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    new-instance v6, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v6}, Lcom/android/dx/dex/DexOptions;-><init>()V

    .line 425
    const/16 v0, 0xd

    iput v0, v6, Lcom/android/dx/dex/DexOptions;->targetApiLevel:I

    .line 427
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->type:Lcom/google/dexmaker/TypeId;

    iget-object v1, v0, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    .line 429
    new-instance v0, Lcom/android/dx/dex/file/ClassDefItem;

    iget v2, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->flags:I

    iget-object v3, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->supertype:Lcom/google/dexmaker/TypeId;

    iget-object v3, v3, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    iget-object v4, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->interfaces:Lcom/google/dexmaker/TypeList;

    iget-object v4, v4, Lcom/google/dexmaker/TypeList;->ropTypes:Lcom/android/dx/rop/type/StdTypeList;

    new-instance v5, Lcom/android/dx/rop/cst/CstString;

    iget-object v7, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->sourceFile:Ljava/lang/String;

    invoke-direct {v5, v7}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/ClassDefItem;-><init>(Lcom/android/dx/rop/cst/CstType;ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstString;)V

    .line 432
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/DexMaker$MethodDeclaration;

    .line 433
    invoke-virtual {v1, v6}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->toEncodedMethod(Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/file/EncodedMethod;

    move-result-object v3

    .line 434
    invoke-virtual {v1}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/ClassDefItem;->addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/ClassDefItem;->addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/DexMaker$FieldDeclaration;

    .line 441
    invoke-virtual {v1}, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->toEncodedField()Lcom/android/dx/dex/file/EncodedField;

    move-result-object v3

    .line 442
    invoke-virtual {v1}, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 443
    # getter for: Lcom/google/dexmaker/DexMaker$FieldDeclaration;->staticValue:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->access$800(Lcom/google/dexmaker/DexMaker$FieldDeclaration;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/dexmaker/Constants;->getConstant(Ljava/lang/Object;)Lcom/android/dx/rop/cst/TypedConstant;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/dx/dex/file/ClassDefItem;->addStaticField(Lcom/android/dx/dex/file/EncodedField;Lcom/android/dx/rop/cst/Constant;)V

    goto :goto_1

    .line 445
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/ClassDefItem;->addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V

    goto :goto_1

    .line 449
    :cond_4
    return-object v0
.end method
