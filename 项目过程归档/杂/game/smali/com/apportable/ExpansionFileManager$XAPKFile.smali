.class Lcom/apportable/ExpansionFileManager$XAPKFile;
.super Ljava/lang/Object;
.source "ExpansionFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ExpansionFileManager;
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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/apportable/ExpansionFileManager$XAPKFile;->mIsMain:Z

    .line 66
    iput p2, p0, Lcom/apportable/ExpansionFileManager$XAPKFile;->mFileVersion:I

    .line 67
    iput-wide p3, p0, Lcom/apportable/ExpansionFileManager$XAPKFile;->mFileSize:J

    .line 68
    return-void
.end method
