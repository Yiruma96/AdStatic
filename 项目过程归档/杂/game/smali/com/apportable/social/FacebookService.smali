.class public Lcom/apportable/social/FacebookService;
.super Ljava/lang/Object;
.source "FacebookService.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;
.implements Lcom/facebook/Request$Callback;
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# instance fields
.field private mAppID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSession:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/apportable/social/FacebookService;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/apportable/social/FacebookService;->mAppID:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Lcom/facebook/Session;->setApplicationId(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/social/FacebookService;)Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;

    return-object v0
.end method

.method static synthetic access$002(Lcom/apportable/social/FacebookService;Lcom/facebook/Session;)Lcom/facebook/Session;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;

    return-object p1
.end method

.method public static nukeFacebookSharedSillyness(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->clear(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public static sendTrackingCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public authenticate(Z)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/apportable/social/FacebookService;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 67
    new-instance v1, Lcom/apportable/social/FacebookService$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/apportable/social/FacebookService$1;-><init>(Lcom/apportable/social/FacebookService;Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public native call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/apportable/social/FacebookService;->mAppID:Ljava/lang/String;

    return-object v0
.end method

.method public handleResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    iget-object v0, p0, Lcom/apportable/social/FacebookService;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 81
    return-void
.end method

.method public native onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
.end method

.method public native onCompleted(Lcom/facebook/Response;)V
.end method

.method public native onFailure(Landroid/os/Bundle;Ljava/lang/Exception;)V
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/apportable/social/FacebookService;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 114
    new-instance v1, Lcom/apportable/social/FacebookService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/apportable/social/FacebookService$3;-><init>(Lcom/apportable/social/FacebookService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 84
    iget-object v7, p0, Lcom/apportable/social/FacebookService;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    .line 85
    new-instance v0, Lcom/apportable/social/FacebookService$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/apportable/social/FacebookService$2;-><init>(Lcom/apportable/social/FacebookService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 59
    iget-object v0, p0, Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 60
    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 61
    iput-object v1, p0, Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;

    .line 63
    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p1}, Lcom/facebook/Session;->setApplicationId(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/apportable/social/FacebookService;->mAppID:Ljava/lang/String;

    .line 46
    return-void
.end method
