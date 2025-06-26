.class public final Lcom/android/dx/io/Code;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/io/Code$CatchHandler;,
        Lcom/android/dx/io/Code$Try;
    }
.end annotation


# instance fields
.field private final catchHandlers:[Lcom/android/dx/io/Code$CatchHandler;

.field private final debugInfoOffset:I

.field private final insSize:I

.field private final instructions:[S

.field private final outsSize:I

.field private final registersSize:I

.field private final tries:[Lcom/android/dx/io/Code$Try;


# direct methods
.method public constructor <init>(IIII[S[Lcom/android/dx/io/Code$Try;[Lcom/android/dx/io/Code$CatchHandler;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/dx/io/Code;->registersSize:I

    .line 31
    iput p2, p0, Lcom/android/dx/io/Code;->insSize:I

    .line 32
    iput p3, p0, Lcom/android/dx/io/Code;->outsSize:I

    .line 33
    iput p4, p0, Lcom/android/dx/io/Code;->debugInfoOffset:I

    .line 34
    iput-object p5, p0, Lcom/android/dx/io/Code;->instructions:[S

    .line 35
    iput-object p6, p0, Lcom/android/dx/io/Code;->tries:[Lcom/android/dx/io/Code$Try;

    .line 36
    iput-object p7, p0, Lcom/android/dx/io/Code;->catchHandlers:[Lcom/android/dx/io/Code$CatchHandler;

    .line 37
    return-void
.end method


# virtual methods
.method public getCatchHandlers()[Lcom/android/dx/io/Code$CatchHandler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/dx/io/Code;->catchHandlers:[Lcom/android/dx/io/Code$CatchHandler;

    return-object v0
.end method

.method public getDebugInfoOffset()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/dx/io/Code;->debugInfoOffset:I

    return v0
.end method

.method public getInsSize()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/dx/io/Code;->insSize:I

    return v0
.end method

.method public getInstructions()[S
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/dx/io/Code;->instructions:[S

    return-object v0
.end method

.method public getOutsSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/dx/io/Code;->outsSize:I

    return v0
.end method

.method public getRegistersSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/dx/io/Code;->registersSize:I

    return v0
.end method

.method public getTries()[Lcom/android/dx/io/Code$Try;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/dx/io/Code;->tries:[Lcom/android/dx/io/Code$Try;

    return-object v0
.end method
