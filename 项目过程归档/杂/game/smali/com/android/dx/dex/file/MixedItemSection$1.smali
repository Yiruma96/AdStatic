.class final Lcom/android/dx/dex/file/MixedItemSection$1;
.super Ljava/lang/Object;
.source "MixedItemSection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/MixedItemSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dx/dex/file/OffsettedItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/dex/file/OffsettedItem;Lcom/android/dx/dex/file/OffsettedItem;)I
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object v0

    .line 58
    invoke-virtual {p2}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/ItemType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lcom/android/dx/dex/file/OffsettedItem;

    check-cast p2, Lcom/android/dx/dex/file/OffsettedItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/file/MixedItemSection$1;->compare(Lcom/android/dx/dex/file/OffsettedItem;Lcom/android/dx/dex/file/OffsettedItem;)I

    move-result v0

    return v0
.end method
