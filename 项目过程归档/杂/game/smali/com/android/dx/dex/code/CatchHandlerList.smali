.class public final Lcom/android/dx/dex/code/CatchHandlerList;
.super Lcom/android/dx/util/FixedSizeList;
.source "CatchHandlerList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/code/CatchHandlerList;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/dx/dex/code/CatchHandlerList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public catchesAll()Z
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sget-object v1, Lcom/android/dx/rop/cst/CstType;->OBJECT:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v3

    .line 143
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v4

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    .line 146
    :goto_1
    if-ge v2, v5, :cond_3

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v1

    .line 148
    invoke-virtual {p1, v2}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v6

    .line 149
    invoke-virtual {v1, v6}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList$Entry;)I

    move-result v1

    .line 150
    if-eqz v1, :cond_2

    move v0, v1

    .line 151
    goto :goto_0

    .line 146
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 155
    :cond_3
    if-ge v3, v4, :cond_4

    .line 156
    const/4 v0, -0x1

    goto :goto_0

    .line 157
    :cond_4
    if-le v3, v4, :cond_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchHandlerList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/CatchHandlerList$Entry;)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method public set(ILcom/android/dx/rop/cst/CstType;I)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    invoke-direct {v0, p2, p3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;-><init>(Lcom/android/dx/rop/cst/CstType;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v2

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, "catch "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v3

    .line 77
    if-eqz v0, :cond_0

    .line 78
    const-string v4, ",\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    const-string v4, "<any>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :goto_1
    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v3

    invoke-static {v3}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
