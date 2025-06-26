.class public Lcom/apportable/ui/WebDialog;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/WebDialog$ApportableWebView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebDialog"

.field private static final WEBVIEW_INSET:I = 0x32


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mCtx:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Ljava/lang/String;

.field private mURL:Ljava/lang/String;

.field private mURLOverrideList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/apportable/ui/WebDialog;->mTitle:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/apportable/ui/WebDialog;->mURL:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method private _dismiss()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/WebDialog;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/apportable/ui/WebDialog;->_dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/apportable/ui/WebDialog;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/apportable/ui/WebDialog;->onClose()V

    return-void
.end method

.method static synthetic access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/apportable/ui/WebDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/ui/WebDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/apportable/ui/WebDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/apportable/ui/WebDialog;->onOverrideURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$602(Lcom/apportable/ui/WebDialog;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$700(Lcom/apportable/ui/WebDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/apportable/ui/WebDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private native onClose()V
.end method

.method private native onOverrideURL(Ljava/lang/String;)V
.end method


# virtual methods
.method public addOverrideURLLoadingPrefix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/apportable/ui/WebDialog;->_dismiss()V

    .line 80
    :cond_0
    return-void
.end method

.method public setOverrideURLLoadingPrefix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public declared-synchronized show()V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    new-instance v0, Lcom/apportable/ui/WebDialog$1;

    invoke-direct {v0, p0}, Lcom/apportable/ui/WebDialog$1;-><init>(Lcom/apportable/ui/WebDialog;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
