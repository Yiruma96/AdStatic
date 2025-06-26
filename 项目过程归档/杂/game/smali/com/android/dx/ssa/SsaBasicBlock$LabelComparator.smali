.class public final Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;
.super Ljava/lang/Object;
.source "SsaBasicBlock.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/SsaBasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dx/ssa/SsaBasicBlock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)I
    .locals 2

    .prologue
    .line 1020
    # getter for: Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I
    invoke-static {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->access$000(Lcom/android/dx/ssa/SsaBasicBlock;)I

    move-result v0

    .line 1021
    # getter for: Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I
    invoke-static {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->access$000(Lcom/android/dx/ssa/SsaBasicBlock;)I

    move-result v1

    .line 1023
    if-ge v0, v1, :cond_0

    .line 1024
    const/4 v0, -0x1

    .line 1028
    :goto_0
    return v0

    .line 1025
    :cond_0
    if-le v0, v1, :cond_1

    .line 1026
    const/4 v0, 0x1

    goto :goto_0

    .line 1028
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1016
    check-cast p1, Lcom/android/dx/ssa/SsaBasicBlock;

    check-cast p2, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {p0, p1, p2}, Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;->compare(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)I

    move-result v0

    return v0
.end method
