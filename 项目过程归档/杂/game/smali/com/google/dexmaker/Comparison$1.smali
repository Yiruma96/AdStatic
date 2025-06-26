.class final enum Lcom/google/dexmaker/Comparison$1;
.super Lcom/google/dexmaker/Comparison;
.source "Comparison.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/Comparison;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/dexmaker/Comparison;-><init>(Ljava/lang/String;ILcom/google/dexmaker/Comparison$1;)V

    return-void
.end method


# virtual methods
.method rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;
    .locals 1

    .prologue
    .line 31
    invoke-static {p1}, Lcom/android/dx/rop/code/Rops;->opIfLt(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    return-object v0
.end method
