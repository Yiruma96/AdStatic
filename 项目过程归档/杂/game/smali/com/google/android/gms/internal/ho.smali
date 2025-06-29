.class public Lcom/google/android/gms/internal/ho;
.super Lcom/google/android/gms/internal/dk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ho$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dk",
        "<",
        "Lcom/google/android/gms/internal/hm;",
        ">;"
    }
.end annotation


# instance fields
.field private final CE:I

.field private final gr:Landroid/app/Activity;

.field private final jD:Ljava/lang/String;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;ILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/dk;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ho;->gr:Landroid/app/Activity;

    iput p4, p0, Lcom/google/android/gms/internal/ho;->CE:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ho;->jD:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/ho;->mTheme:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ho;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ho;->gr:Landroid/app/Activity;

    return-object v0
.end method

.method private fy()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.wallet.EXTRA_ENVIRONMENT"

    iget v2, p0, Lcom/google/android/gms/internal/ho;->CE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "androidPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/ho;->gr:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ho;->jD:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/internal/ho;->jD:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v1, "com.google.android.gms.wallet.EXTRA_THEME"

    iget v2, p0, Lcom/google/android/gms/internal/ho;->mTheme:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/internal/dk$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x3f0e94

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dp;I)V

    return-void
.end method

.method protected am()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wallet.service.BIND"

    return-object v0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    return-object v0
.end method

.method protected ay(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hm;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/hm$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hm;

    move-result-object v0

    return-object v0
.end method

.method public changeMaskedWallet(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "googleTransactionId"    # Ljava/lang/String;
    .param p2, "merchantTransactionId"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ho;->fy()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ho$a;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/ho$a;-><init>(Lcom/google/android/gms/internal/ho;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ho;->bC()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hm;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/hm;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/hn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException changing masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v4, v4}, Lcom/google/android/gms/internal/ho$a;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public checkForPreAuthorization(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/ho;->fy()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ho$a;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ho$a;-><init>(Lcom/google/android/gms/internal/ho;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ho;->bC()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hm;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/hm;->a(Landroid/os/Bundle;Lcom/google/android/gms/internal/hn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException during checkForPreAuthorization"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ho$a;->a(IZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public loadFullWallet(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/gms/wallet/FullWalletRequest;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ho$a;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ho$a;-><init>(Lcom/google/android/gms/internal/ho;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ho;->fy()Landroid/os/Bundle;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ho;->bC()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hm;

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/hn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WalletClientImpl"

    const-string v3, "RemoteException getting full wallet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v4, v4}, Lcom/google/android/gms/internal/ho$a;->a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public loadMaskedWallet(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ho;->fy()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ho$a;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/ho$a;-><init>(Lcom/google/android/gms/internal/ho;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ho;->bC()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hm;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/hn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException getting masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v4, v4}, Lcom/google/android/gms/internal/ho$a;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public notifyTransactionStatus(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/ho;->fy()Landroid/os/Bundle;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ho;->bC()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hm;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ho;->ay(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hm;

    move-result-object v0

    return-object v0
.end method
