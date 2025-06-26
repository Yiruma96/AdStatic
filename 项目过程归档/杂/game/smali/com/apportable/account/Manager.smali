.class public Lcom/apportable/account/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field private static sManager:Landroid/accounts/AccountManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    if-nez v0, :cond_0

    .line 24
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    sput-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/apportable/account/Manager;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/apportable/account/Manager$1;

    invoke-direct {v0, p0}, Lcom/apportable/account/Manager$1;-><init>(Lcom/apportable/account/Manager;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/account/Manager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/apportable/account/Manager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/apportable/account/Manager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/apportable/account/Manager;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/apportable/account/Manager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/apportable/account/Manager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/accounts/AccountManager;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    return-object v0
.end method


# virtual methods
.method public getAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsForType(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/apportable/account/Callback;)V
    .locals 6

    .prologue
    .line 44
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/apportable/account/Manager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/apportable/account/Manager$2;-><init>(Lcom/apportable/account/Manager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/apportable/account/Callback;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
