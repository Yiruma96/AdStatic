.class public Lcom/apportable/utils/Single7z$SZErrorException;
.super Ljava/io/IOException;
.source "Single7z.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/utils/Single7z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SZErrorException"
.end annotation


# instance fields
.field private mError:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    iput p1, p0, Lcom/apportable/utils/Single7z$SZErrorException;->mError:I

    .line 32
    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/apportable/utils/Single7z$SZErrorException;->mError:I

    return v0
.end method
