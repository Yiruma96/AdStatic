.class public Lcom/apportable/utils/Single7z;
.super Ljava/lang/Object;
.source "Single7z.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/utils/Single7z$SZErrorException;
    }
.end annotation


# static fields
.field public static final SZ_ERROR_ARCHIVE:I = 0x10

.field public static final SZ_ERROR_CRC:I = 0x3

.field public static final SZ_ERROR_DATA:I = 0x1

.field public static final SZ_ERROR_FAIL:I = 0xb

.field public static final SZ_ERROR_INPUT_EOF:I = 0x6

.field public static final SZ_ERROR_MEM:I = 0x2

.field public static final SZ_ERROR_NO_ARCHIVE:I = 0x11

.field public static final SZ_ERROR_OPEN:I = 0x64

.field public static final SZ_ERROR_OUTPUT_EOF:I = 0x7

.field public static final SZ_ERROR_PARAM:I = 0x5

.field public static final SZ_ERROR_PROGRESS:I = 0xa

.field public static final SZ_ERROR_READ:I = 0x8

.field public static final SZ_ERROR_THREAD:I = 0xc

.field public static final SZ_ERROR_UNSUPPORTED:I = 0x4

.field public static final SZ_ERROR_WRITE:I = 0x9

.field public static final SZ_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "Single7z"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    long-to-int v0, p1

    new-array v1, v0, [B

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_1

    .line 43
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 44
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 45
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 47
    :cond_0
    add-int/2addr v0, v2

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v1, p3}, Lcom/apportable/utils/Single7z;->extract([BLjava/lang/String;)V

    .line 52
    return-void
.end method

.method public static native extract([BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/utils/Single7z$SZErrorException;
        }
    .end annotation
.end method

.method private static throwSZErrorException(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/utils/Single7z$SZErrorException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/apportable/utils/Single7z$SZErrorException;

    invoke-direct {v0, p0, p1}, Lcom/apportable/utils/Single7z$SZErrorException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
