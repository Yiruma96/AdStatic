.class public final Lcom/android/dx/dex/file/MethodIdItem;
.super Lcom/android/dx/dex/file/MemberIdItem;
.source "MethodIdItem.java"


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstBaseMethodRef;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;-><init>(Lcom/android/dx/rop/cst/CstMemberRef;)V

    .line 32
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    .line 45
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdItem;->getMethodRef()Lcom/android/dx/rop/cst/CstBaseMethodRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/ProtoIdsSection;->intern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/dex/file/ProtoIdItem;

    .line 47
    return-void
.end method

.method public getMethodRef()Lcom/android/dx/rop/cst/CstBaseMethodRef;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdItem;->getRef()Lcom/android/dx/rop/cst/CstMemberRef;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    return-object v0
.end method

.method protected getTypoidIdx(Lcom/android/dx/dex/file/DexFile;)I
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdItem;->getMethodRef()Lcom/android/dx/rop/cst/CstBaseMethodRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/ProtoIdsSection;->indexOf(Lcom/android/dx/rop/type/Prototype;)I

    move-result v0

    return v0
.end method

.method protected getTypoidName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "proto_idx"

    return-object v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method
