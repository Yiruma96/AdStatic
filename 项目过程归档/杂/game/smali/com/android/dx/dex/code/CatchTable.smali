.class public final Lcom/android/dx/dex/code/CatchTable;
.super Lcom/android/dx/util/FixedSizeList;
.source "CatchTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/CatchTable$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/code/CatchTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/CatchTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/dx/dex/code/CatchTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CatchTable;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/CatchTable;->EMPTY:Lcom/android/dx/dex/code/CatchTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/CatchTable;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v3

    .line 71
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v4

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    .line 74
    :goto_1
    if-ge v2, v5, :cond_3

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v1

    .line 76
    invoke-virtual {p1, v2}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v6

    .line 77
    invoke-virtual {v1, v6}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

    move-result v1

    .line 78
    if-eqz v1, :cond_2

    move v0, v1

    .line 79
    goto :goto_0

    .line 74
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 83
    :cond_3
    if-ge v3, v4, :cond_4

    .line 84
    const/4 v0, -0x1

    goto :goto_0

    .line 85
    :cond_4
    if-le v3, v4, :cond_0

    .line 86
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable;->compareTo(Lcom/android/dx/dex/code/CatchTable;)I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/android/dx/dex/code/CatchTable$Entry;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/CatchTable$Entry;

    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/CatchTable$Entry;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/CatchTable;->set0(ILjava/lang/Object;)V

    .line 61
    return-void
.end method
