.class public final Lcom/android/dx/util/Uint;
.super Ljava/lang/Object;
.source "Uint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/util/Uint;",
        ">;"
    }
.end annotation


# instance fields
.field public final intValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/dx/util/Uint;->intValue:I

    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/util/Uint;)I
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/android/dx/util/Uint;->intValue:I

    iget v1, p1, Lcom/android/dx/util/Uint;->intValue:I

    invoke-static {v0, v1}, Lcom/android/dx/util/Unsigned;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/android/dx/util/Uint;

    invoke-virtual {p0, p1}, Lcom/android/dx/util/Uint;->compareTo(Lcom/android/dx/util/Uint;)I

    move-result v0

    return v0
.end method
