.class public Lcom/apportable/activity/ExpansionFileDownloader;
.super Ljava/lang/Object;
.source "ExpansionFileDownloader.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;,
        Lcom/apportable/activity/ExpansionFileDownloader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpansionFileDownloader"


# instance fields
.field private heightDiff:I

.field private mActivity:Landroid/app/Activity;

.field private mAppReady:Z

.field private mApproveCellular:Landroid/widget/ScrollView;

.field private mAverageSpeed:Landroid/widget/TextView;

.field private mCallback:Lcom/apportable/activity/ExpansionFileDownloader$Callback;

.field private mCellMessage:Landroid/view/View;

.field private mDashboard:Landroid/view/View;

.field private mDownloadState:I

.field private mDownloadStatePaused:Z

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mExpansionFileManager:Lcom/apportable/ExpansionFileManager;

.field private mPB:Landroid/widget/ProgressBar;

.field private mPauseButton:Landroid/widget/Button;

.field private mPaused:Z

.field private mProgressFraction:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressView:Landroid/view/View;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private mRequestedOrientation:I

.field private mRestartIntent:Landroid/app/PendingIntent;

.field private mResumeOnCell:Landroid/widget/Button;

.field private mStatusText:Landroid/widget/TextView;

.field private mTimeRemaining:Landroid/widget/TextView;

.field private mWiFiSettingsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPaused:Z

    .line 84
    iput v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->heightDiff:I

    .line 92
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mExpansionFileManager:Lcom/apportable/ExpansionFileManager;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/activity/ExpansionFileDownloader;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/activity/ExpansionFileDownloader;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadStatePaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/apportable/activity/ExpansionFileDownloader;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/apportable/activity/ExpansionFileDownloader;->setButtonPausedState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/apportable/activity/ExpansionFileDownloader;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/activity/ExpansionFileDownloader;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;

    return-object v0
.end method

.method private checkForExpansionFiles()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 217
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 218
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x8000000

    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;

    invoke-static {v1, v0, v2}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v0

    .line 232
    const-string v1, "ExpansionFileDownloader"

    const-string v2, "Intent start result %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/apportable/activity/ExpansionFileDownloader;->initializeDownloadUI()V

    .line 238
    :cond_1
    return-void
.end method

.method private initializeDownloadUI()V
    .locals 5

    .prologue
    .line 148
    const-string v0, "ExpansionFileDownloader"

    const-string v1, ">initializeDownloadUI"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mRestartIntent:Landroid/app/PendingIntent;

    .line 151
    const-class v0, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;

    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 152
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$layout;->download:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 157
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$layout;->download:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressView:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPB:Landroid/widget/ProgressBar;

    .line 160
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->statusText:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mStatusText:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->appDownloadIcon:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "icon"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->appName:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.app_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->progressAsFraction:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressFraction:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->progressAsPercentage:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressPercent:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->progressAverageSpeed:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mAverageSpeed:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->progressTimeRemaining:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->downloaderDashboard:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDashboard:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->approveCellular:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->pauseButton:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPauseButton:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->wifiSettingsButton:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mWiFiSettingsButton:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPauseButton:Landroid/widget/Button;

    new-instance v1, Lcom/apportable/activity/ExpansionFileDownloader$1;

    invoke-direct {v1, p0}, Lcom/apportable/activity/ExpansionFileDownloader$1;-><init>(Lcom/apportable/activity/ExpansionFileDownloader;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mWiFiSettingsButton:Landroid/widget/Button;

    new-instance v1, Lcom/apportable/activity/ExpansionFileDownloader$2;

    invoke-direct {v1, p0}, Lcom/apportable/activity/ExpansionFileDownloader$2;-><init>(Lcom/apportable/activity/ExpansionFileDownloader;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/apportable/activity/R$id;->resumeOverCellular:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 204
    new-instance v1, Lcom/apportable/activity/ExpansionFileDownloader$3;

    invoke-direct {v1, p0}, Lcom/apportable/activity/ExpansionFileDownloader$3;-><init>(Lcom/apportable/activity/ExpansionFileDownloader;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method private setButtonPausedState(Z)V
    .locals 2

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadStatePaused:Z

    .line 249
    if-eqz p1, :cond_0

    sget v0, Lcom/apportable/activity/R$string;->text_button_resume:I

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 252
    return-void

    .line 249
    :cond_0
    sget v0, Lcom/apportable/activity/R$string;->text_button_pause:I

    goto :goto_0
.end method

.method private setDownloadState(I)V
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadState:I

    if-eq v0, p1, :cond_0

    .line 242
    iput p1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloadState:I

    .line 243
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mStatusText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public expansionFilesDelivered()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    new-array v3, v1, [Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;

    new-instance v2, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;

    .line 135
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "apportable.expansion.main.version"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "apportable.expansion.main.size"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {v2, v1, v4, v6, v7}, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;-><init>(ZIJ)V

    aput-object v2, v3, v0

    .line 138
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 139
    iget-object v6, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    iget-boolean v7, v5, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mIsMain:Z

    iget v8, v5, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mFileVersion:I

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v6

    .line 140
    iget-object v7, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    iget-wide v8, v5, Lcom/apportable/activity/ExpansionFileDownloader$XAPKFile;->mFileSize:J

    invoke-static {v7, v6, v8, v9, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    :goto_1
    return v0

    .line 138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 144
    goto :goto_1
.end method

.method public hasExpansionFiles()Z
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "apportable.expansion.main.size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/app/Activity;Lcom/apportable/activity/ExpansionFileDownloader$Callback;)V
    .locals 6

    .prologue
    .line 96
    iput-object p2, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCallback:Lcom/apportable/activity/ExpansionFileDownloader$Callback;

    .line 97
    iput-object p1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    .line 98
    invoke-virtual {p0}, Lcom/apportable/activity/ExpansionFileDownloader;->hasExpansionFiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/apportable/activity/ExpansionFileDownloader;->expansionFilesDelivered()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "ExpansionFileDownloader"

    const-string v2, "Cannot find own package! MAYDAY!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    :try_start_1
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 114
    const-class v1, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;

    invoke-static {p1, v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v0

    .line 115
    const-string v1, "ExpansionFileDownloader"

    const-string v2, "Intent start result %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/apportable/activity/ExpansionFileDownloader;->initializeDownloadUI()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCallback:Lcom/apportable/activity/ExpansionFileDownloader$Callback;

    invoke-interface {v0}, Lcom/apportable/activity/ExpansionFileDownloader$Callback;->onFinished()V

    goto :goto_1
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 262
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mAverageSpeed:Landroid/widget/TextView;

    const-string v1, "%1$s KB/s"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSpeedString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    const-string v1, "Time remaining: %1$s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    iput-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    .line 266
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPB:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    shr-long/2addr v2, v7

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 267
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPB:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    shr-long/2addr v2, v7

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 268
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressFraction:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 274
    invoke-direct {p0, p1}, Lcom/apportable/activity/ExpansionFileDownloader;->setDownloadState(I)V

    .line 280
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v3, v0

    move v4, v0

    move v5, v1

    .line 352
    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    .line 353
    :goto_1
    iget-object v6, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDashboard:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v0, :cond_0

    .line 354
    iget-object v6, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDashboard:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_0
    if-eqz v5, :cond_3

    .line 357
    :goto_2
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCellMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mPB:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 361
    invoke-direct {p0, v4}, Lcom/apportable/activity/ExpansionFileDownloader;->setButtonPausedState(Z)V

    .line 362
    :goto_3
    return-void

    :pswitch_1
    move v3, v0

    move v4, v1

    move v5, v1

    .line 286
    goto :goto_0

    :pswitch_2
    move v3, v0

    move v4, v1

    move v5, v1

    .line 292
    goto :goto_0

    :pswitch_3
    move v3, v1

    move v4, v1

    move v5, v1

    .line 297
    goto :goto_0

    .line 304
    :pswitch_4
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    move v4, v0

    move v5, v1

    .line 305
    goto :goto_0

    .line 313
    :pswitch_5
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    move v4, v0

    move v5, v1

    move v0, v1

    .line 314
    goto :goto_0

    .line 321
    :pswitch_6
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    const-string v4, "Need Wifi"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    move v4, v0

    move v5, v0

    move v0, v1

    .line 322
    goto :goto_0

    :pswitch_7
    move v3, v1

    move v4, v0

    move v5, v1

    .line 326
    goto :goto_0

    .line 330
    :pswitch_8
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    const-string v4, "Cannot download while roaming"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    move v4, v0

    move v5, v1

    .line 331
    goto :goto_0

    .line 335
    :pswitch_9
    iget-object v3, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    const-string v4, "Cannot download, SD card unavailable"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    move v4, v0

    move v5, v1

    .line 336
    goto :goto_0

    .line 342
    :pswitch_a
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mTimeRemaining:Landroid/widget/TextView;

    const-string v1, "Download Complete"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/apportable/activity/VerdeActivity;

    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->primaryContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mExpansionFileManager:Lcom/apportable/ExpansionFileManager;

    invoke-virtual {v0}, Lcom/apportable/ExpansionFileManager;->updateAPKExpansionFile()V

    .line 345
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mCallback:Lcom/apportable/activity/ExpansionFileDownloader$Callback;

    invoke-interface {v0}, Lcom/apportable/activity/ExpansionFileDownloader$Callback;->onFinished()V

    goto :goto_3

    :cond_2
    move v0, v2

    .line 352
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 356
    goto/16 :goto_2

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 256
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 257
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/apportable/activity/ExpansionFileDownloader;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 258
    return-void
.end method
