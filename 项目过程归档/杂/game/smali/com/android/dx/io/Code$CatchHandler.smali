.class public Lcom/android/dx/io/Code$CatchHandler;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchHandler"
.end annotation


# instance fields
.field final addresses:[I

.field final catchAllAddress:I

.field final typeIndexes:[I


# direct methods
.method public constructor <init>([I[II)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/dx/io/Code$CatchHandler;->typeIndexes:[I

    .line 98
    iput-object p2, p0, Lcom/android/dx/io/Code$CatchHandler;->addresses:[I

    .line 99
    iput p3, p0, Lcom/android/dx/io/Code$CatchHandler;->catchAllAddress:I

    .line 100
    return-void
.end method


# virtual methods
.method public getAddresses()[I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/dx/io/Code$CatchHandler;->addresses:[I

    return-object v0
.end method

.method public getCatchAllAddress()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/dx/io/Code$CatchHandler;->catchAllAddress:I

    return v0
.end method

.method public getTypeIndexes()[I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/dx/io/Code$CatchHandler;->typeIndexes:[I

    return-object v0
.end method
