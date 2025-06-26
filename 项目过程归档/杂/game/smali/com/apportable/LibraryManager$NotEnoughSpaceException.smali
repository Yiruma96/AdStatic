.class public Lcom/apportable/LibraryManager$NotEnoughSpaceException;
.super Ljava/io/IOException;
.source "LibraryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/LibraryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotEnoughSpaceException"
.end annotation


# instance fields
.field private mAvailableSize:J

.field private mRequiredSize:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->mRequiredSize:J

    .line 48
    iput-wide p3, p0, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->mAvailableSize:J

    .line 49
    return-void
.end method


# virtual methods
.method public getAvailableSize()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->mAvailableSize:J

    return-wide v0
.end method

.method public getRequiredSize()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->mRequiredSize:J

    return-wide v0
.end method
