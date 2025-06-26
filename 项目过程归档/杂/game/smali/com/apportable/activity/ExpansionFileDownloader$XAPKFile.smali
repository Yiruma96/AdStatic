.class Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;
.super Ljava/lang/Object;
.source "ExpansionFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/activity/ExpansionFileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XAPKFile"
.end annotation


# instance fields
.field public final mFileSize:J

.field public final mFileVersion:I

.field public final mIsMain:Z


# direct methods
.method constructor <init>(ZIJ)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mIsMain:Z

    .line 56
    iput p2, p0, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mFileVersion:I

    .line 57
    iput-wide p3, p0, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mFileSize:J

    .line 58
    return-void
.end method
