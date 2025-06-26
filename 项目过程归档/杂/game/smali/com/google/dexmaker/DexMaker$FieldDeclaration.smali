.class Lcom/google/dexmaker/DexMaker$FieldDeclaration;
.super Ljava/lang/Object;
.source "DexMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldDeclaration"
.end annotation


# instance fields
.field private final accessFlags:I

.field final fieldId:Lcom/google/dexmaker/FieldId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/FieldId",
            "<**>;"
        }
    .end annotation
.end field

.field private final staticValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/FieldId",
            "<**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "instance fields may not have a value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->fieldId:Lcom/google/dexmaker/FieldId;

    .line 463
    iput p2, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->accessFlags:I

    .line 464
    iput-object p3, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->staticValue:Ljava/lang/Object;

    .line 465
    return-void
.end method

.method static synthetic access$800(Lcom/google/dexmaker/DexMaker$FieldDeclaration;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->staticValue:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public isStatic()Z
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->accessFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toEncodedField()Lcom/android/dx/dex/file/EncodedField;
    .locals 3

    .prologue
    .line 468
    new-instance v0, Lcom/android/dx/dex/file/EncodedField;

    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->fieldId:Lcom/google/dexmaker/FieldId;

    iget-object v1, v1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    iget v2, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->accessFlags:I

    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    return-object v0
.end method
