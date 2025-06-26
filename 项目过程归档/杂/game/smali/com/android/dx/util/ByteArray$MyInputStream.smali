.class public Lcom/android/dx/util/ByteArray$MyInputStream;
.super Ljava/io/InputStream;
.source "ByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/util/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyInputStream"
.end annotation


# instance fields
.field private cursor:I

.field private mark:I

.field final synthetic this$0:Lcom/android/dx/util/ByteArray;


# direct methods
.method public constructor <init>(Lcom/android/dx/util/ByteArray;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 299
    iput-object p1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 300
    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    .line 301
    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    .line 302
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    # getter for: Lcom/android/dx/util/ByteArray;->size:I
    invoke-static {v0}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    move-result v0

    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    .line 335
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iget-object v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    # getter for: Lcom/android/dx/util/ByteArray;->size:I
    invoke-static {v1}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 306
    const/4 v0, -0x1

    .line 311
    :goto_0
    return v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    # invokes: Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I
    invoke-static {v0, v1}, Lcom/android/dx/util/ByteArray;->access$100(Lcom/android/dx/util/ByteArray;I)I

    move-result v0

    .line 310
    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    .line 315
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 316
    array-length v0, p1

    sub-int p3, v0, p2

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    # getter for: Lcom/android/dx/util/ByteArray;->size:I
    invoke-static {v0}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    move-result v0

    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    sub-int/2addr v0, v1

    .line 320
    if-le p3, v0, :cond_1

    move p3, v0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    # getter for: Lcom/android/dx/util/ByteArray;->bytes:[B
    invoke-static {v0}, Lcom/android/dx/util/ByteArray;->access$200(Lcom/android/dx/util/ByteArray;)[B

    move-result-object v0

    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iget-object v2, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    # getter for: Lcom/android/dx/util/ByteArray;->start:I
    invoke-static {v2}, Lcom/android/dx/util/ByteArray;->access$300(Lcom/android/dx/util/ByteArray;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    .line 326
    return p3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    .line 339
    return-void
.end method
