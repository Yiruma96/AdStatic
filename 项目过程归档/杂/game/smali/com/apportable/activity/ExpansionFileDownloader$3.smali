.class Lcom/apportable/activity/ExpansionFileDownloader$3;
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
    .line 204
    iput-object p1, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    .line 209
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$3;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$400(Lcom/apportable/activity/ExpansionFileDownloader;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    return-void
.end method
