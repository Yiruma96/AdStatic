.class Lcom/apportable/activity/ExpansionFileDownloader$1;
.super Ljava/lang/Object;
.source "ExpansionFileDownloader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/ExpansionFileDownloader;->initializeDownloadUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/ExpansionFileDownloader;


# direct methods
.method constructor <init>(Lcom/apportable/activity/ExpansionFileDownloader;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadStatePaused:Z
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$100(Lcom/apportable/activity/ExpansionFileDownloader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadStatePaused:Z
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$100(Lcom/apportable/activity/ExpansionFileDownloader;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    # invokes: Lcom/apportable/activity/ExpansionFileDownloader;->setButtonPausedState(Z)V
    invoke-static {v1, v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$200(Lcom/apportable/activity/ExpansionFileDownloader;Z)V

    .line 192
    :cond_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$1;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    goto :goto_0

    .line 190
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
