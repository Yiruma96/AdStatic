.class public Lcom/apportable/activity/VerdeActivity;
.super Landroid/app/Activity;
.source "VerdeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;
    }
.end annotation


# static fields
.field private static final KITKAT_API_LEVEL:I = 0x13

.field private static TAG:Ljava/lang/String;

.field private static mOnCreateRestartAttempted:Z

.field private static theVerdeActivity:Lcom/apportable/activity/VerdeActivity;


# instance fields
.field private mContentHeight:I

.field private mContentWidth:I

.field private mCurrentSplashPath:Ljava/lang/String;

.field private mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

.field private mPaused:Z

.field private mRequestedOrientation:I

.field private mScalingFactor:F

.field private rootOfAllEvil:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "VerdeActivity"

    sput-object v0, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/apportable/activity/VerdeActivity;->mPaused:Z

    .line 74
    iput v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentWidth:I

    .line 75
    iput v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentHeight:I

    .line 95
    sput-object p0, Lcom/apportable/activity/VerdeActivity;->theVerdeActivity:Lcom/apportable/activity/VerdeActivity;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/activity/VerdeActivity;)Lcom/apportable/activity/BackgroundLibraryLoader;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/activity/VerdeActivity;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->nativeRootGeometryChanged()V

    return-void
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnPause()V

    return-void
.end method

.method static synthetic access$1100()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnStop()V

    return-void
.end method

.method static synthetic access$1200()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnRestart()V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnDestroy()V

    return-void
.end method

.method static synthetic access$1400(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0}, Lcom/apportable/activity/VerdeActivity;->nativeOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0}, Lcom/apportable/activity/VerdeActivity;->nativeOnNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/apportable/activity/VerdeActivity;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/apportable/activity/VerdeActivity;->mContentWidth:I

    return p1
.end method

.method static synthetic access$1702(Lcom/apportable/activity/VerdeActivity;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/apportable/activity/VerdeActivity;->mContentHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnCreate()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0}, Lcom/apportable/activity/VerdeActivity;->nativeHandleUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/apportable/activity/VerdeActivity;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/apportable/activity/VerdeActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$702(Lcom/apportable/activity/VerdeActivity;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/apportable/activity/VerdeActivity;->mPaused:Z

    return p1
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnStart()V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnResume()V

    return-void
.end method

.method public static getActivity()Lcom/apportable/activity/VerdeActivity;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->theVerdeActivity:Lcom/apportable/activity/VerdeActivity;

    return-object v0
.end method

.method private static native nativeHandleUri(Ljava/lang/String;)V
.end method

.method private static native nativeOnActivityResult(IILandroid/content/Intent;)V
.end method

.method private static native nativeOnConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method private static native nativeOnCreate()V
.end method

.method private static native nativeOnDestroy()V
.end method

.method private static native nativeOnLowMemory()V
.end method

.method private static native nativeOnNewIntent(Landroid/content/Intent;)V
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnRestart()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSoftKeyboardChanged(II)V
.end method

.method private static native nativeOnStart()V
.end method

.method private static native nativeOnStop()V
.end method

.method private native nativeRootGeometryChanged()V
.end method

.method private static native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private prefsUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apportable/activity/VerdeActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    const-string v1, ""

    .line 452
    const-string v1, "_uuid_"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 454
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 455
    const-string v2, "_uuid_"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 460
    :goto_0
    return-object v0

    .line 458
    :cond_0
    const-string v1, "_uuid_"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 753
    return-void
.end method


# virtual methods
.method public _getRequestedOrientation()I
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getRequestedOrientation()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 540
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 532
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 534
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 536
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 538
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 530
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public _setRequestedOrientation(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 545
    packed-switch p1, :pswitch_data_0

    .line 565
    :goto_0
    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    invoke-virtual {p0, v0}, Lcom/apportable/activity/VerdeActivity;->setRequestedOrientation(I)V

    .line 566
    return-void

    .line 547
    :pswitch_0
    iput v3, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    goto :goto_0

    .line 550
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_0

    .line 551
    const/16 v0, 0x9

    iput v0, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    goto :goto_0

    .line 553
    :cond_0
    iput v3, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    goto :goto_0

    .line 556
    :pswitch_2
    iput v2, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    goto :goto_0

    .line 559
    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    .line 560
    iput v1, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    goto :goto_0

    .line 562
    :cond_1
    iput v2, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/apportable/activity/VerdeActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/activity/VerdeActivity$5;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    .line 302
    return-void
.end method

.method public canSendEmail()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    const-string v2, "message/rfc822"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 572
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 573
    sget-object v3, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canSendEmail:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 573
    :cond_0
    const-string v0, "no"

    goto :goto_0

    :cond_1
    move v0, v1

    .line 574
    goto :goto_1
.end method

.method public createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 644
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apportable/gl/GLSurfaceView;->createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 1

    .prologue
    .line 648
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apportable/gl/GLSurfaceView;->destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    return v0
.end method

.method public gc()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public getAttributionId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 741
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 742
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-object v3

    .line 746
    :cond_1
    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 747
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getScreenHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getScreenWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 636
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView;->getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getSplashScreenHeight()I
    .locals 1

    .prologue
    .line 735
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 736
    float-to-int v0, v0

    return v0
.end method

.method public getSplashScreenWidth()I
    .locals 1

    .prologue
    .line 729
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 730
    float-to-int v0, v0

    return v0
.end method

.method public hasActivityForAction(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 508
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 510
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSystemFeature(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/apportable/activity/VerdeActivity;->mPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apportable/gl/GLSurfaceView;->makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 621
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-static {p1, p2, p3}, Lcom/apportable/activity/VerdeActivity;->nativeOnActivityResult(IILandroid/content/Intent;)V

    .line 625
    :cond_0
    :try_start_0
    const-string v0, "com.apportable.iap.ApportableIAP"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_1

    .line 627
    const-string v1, "handleActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 628
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_1
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    sget-object v1, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult raised an exception (but this is likely to be OK):"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 432
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Lcom/apportable/activity/VerdeActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/apportable/activity/VerdeActivity$12;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/res/Configuration;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    .line 440
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-static {p0}, Lcom/apportable/media/AndroidAudioManager;->getInstance(Landroid/content/Context;)Lcom/apportable/media/AndroidAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/media/AndroidAudioManager;->onCreate()V

    .line 122
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 123
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 125
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "apportable.ui.keepScreenOn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 129
    :cond_0
    new-instance v0, Lcom/apportable/activity/BackgroundLibraryLoader;

    invoke-direct {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;-><init>()V

    iput-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    .line 131
    new-instance v0, Lcom/apportable/activity/VerdeActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/apportable/activity/VerdeActivity$1;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    .line 142
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->show(Landroid/widget/FrameLayout;)V

    .line 144
    invoke-static {p0}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/ViewServer;->addWindow(Landroid/app/Activity;)V

    .line 149
    sget-boolean v0, Lcom/apportable/activity/VerdeActivity;->mOnCreateRestartAttempted:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/apportable/MainThread;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sput-boolean v2, Lcom/apportable/activity/VerdeActivity;->mOnCreateRestartAttempted:Z

    .line 151
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    const-string v1, "MainThread is already running! Possibly a library failed to load? Attempting to restart..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/apportable/activity/VerdeActivity$2;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$2;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {}, Lcom/apportable/MainThread;->start()V

    .line 169
    new-instance v0, Lcom/apportable/activity/ExpansionFileDownloader;

    invoke-direct {v0}, Lcom/apportable/activity/ExpansionFileDownloader;-><init>()V

    .line 170
    new-instance v1, Lcom/apportable/activity/VerdeActivity$3;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$3;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/apportable/activity/ExpansionFileDownloader;->load(Landroid/app/Activity;Lcom/apportable/activity/ExpansionFileDownloader$Callback;)V

    .line 229
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$4;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$4;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onCreate(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 408
    invoke-static {p0}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/ViewServer;->removeWindow(Landroid/app/Activity;)V

    .line 410
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$11;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$11;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onDestroy(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 423
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnLowMemory()V

    .line 426
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/apportable/activity/VerdeActivity$13;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onNewIntent(Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 350
    invoke-static {}, Lcom/apportable/MainThread;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apportable/app/SplashScreen;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$8;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$8;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onPause(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 395
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$10;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$10;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onRestart(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 328
    invoke-static {p0}, Lcom/apportable/media/AndroidAudioManager;->getInstance(Landroid/content/Context;)Lcom/apportable/media/AndroidAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/media/AndroidAudioManager;->onResume()V

    .line 330
    invoke-static {p0}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/ViewServer;->setFocusedWindow(Landroid/app/Activity;)V

    .line 332
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$7;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$7;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onResume(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method public onSoftKeyboardChanged(II)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 103
    if-nez p2, :cond_0

    .line 104
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "apportable.ui.resizeOnKeyboard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 106
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {p1, p2}, Lcom/apportable/activity/VerdeActivity;->nativeOnSoftKeyboardChanged(II)V

    .line 112
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 308
    new-instance v0, Lcom/apportable/SocialShareManager;

    invoke-direct {v0, p0}, Lcom/apportable/SocialShareManager;-><init>(Landroid/app/Activity;)V

    .line 310
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$6;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$6;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onStart(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 378
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$9;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$9;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onStop(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public primaryContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 652
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 653
    return-void
.end method

.method public rektEGLContext()V
    .locals 1

    .prologue
    .line 756
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView;->stopEglSurfaceLocked()V

    .line 762
    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView;->readySurface()V

    .line 763
    return-void
.end method

.method public runOnThread(Ljava/lang/Runnable;I)V
    .locals 1

    .prologue
    .line 518
    packed-switch p2, :pswitch_data_0

    .line 527
    :goto_0
    return-void

    .line 520
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 523
    :pswitch_1
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public savePreferenceEditorHack(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 697
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 698
    return-void
.end method

.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 578
    .line 579
    if-eqz p1, :cond_1

    .line 580
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 583
    :cond_0
    :try_start_0
    const-string v0, "file"

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/apportable/activity/VerdeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 584
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 585
    const/4 v2, 0x0

    array-length v3, p8

    invoke-virtual {v1, p8, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 586
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    if-eqz v0, :cond_2

    .line 594
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 596
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 598
    :cond_2
    if-eqz p4, :cond_6

    const-string v0, "text/plain"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailIntent.setType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    if-eqz p5, :cond_3

    .line 602
    const-string v0, "android.intent.extra.EMAIL"

    const-string v2, ","

    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    :cond_3
    if-eqz p6, :cond_4

    .line 605
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    :cond_4
    if-eqz p7, :cond_5

    .line 608
    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    :cond_5
    const-string v0, "text/html"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 611
    const-string v0, "android.intent.extra.TEXT"

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 615
    :goto_2
    const-string v0, "Send"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apportable/activity/VerdeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 598
    :cond_6
    const-string v0, "message/rfc822"

    goto :goto_1

    .line 613
    :cond_7
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 587
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public setContentSize(FF)V
    .locals 1

    .prologue
    .line 701
    new-instance v0, Lcom/apportable/activity/VerdeActivity$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/activity/VerdeActivity$14;-><init>(Lcom/apportable/activity/VerdeActivity;FF)V

    invoke-virtual {p0, v0}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 709
    return-void
.end method

.method public swapBuffers()Z
    .locals 1

    .prologue
    .line 484
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView;->swapBuffers()Z

    move-result v0

    return v0
.end method

.method public uuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 464
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->prefsUuid()Ljava/lang/String;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    .line 467
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 468
    if-nez v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->prefsUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 472
    array-length v1, v0

    if-nez v1, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->prefsUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_2
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
