.class public final Lcom/android/dx/rop/cst/CstMethodRef;
.super Lcom/android/dx/rop/cst/CstBaseMethodRef;
.source "CstMethodRef.java"


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstBaseMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 32
    return-void
.end method


# virtual methods
.method public typeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "method"

    return-object v0
.end method
