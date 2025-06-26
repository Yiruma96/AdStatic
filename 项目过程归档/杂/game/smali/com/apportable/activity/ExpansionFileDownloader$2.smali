.class Lcom/apportable/activity/ExpansionFileDownloader$2;
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
    .line 195
    iput-object p1, p0, Lcom/apportable/activity/ExpansionFileDownloader$2;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$2;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$300(Lcom/apportable/activity/ExpansionFileDownloader;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method
