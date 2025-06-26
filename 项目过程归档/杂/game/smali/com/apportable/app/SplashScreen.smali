.class public Lcom/apportable/app/SplashScreen;
.super Ljava/lang/Object;
.source "SplashScreen.java"


# static fields
.field private static isLandscapeDevice:Z

.field private static listener:Lcom/apportable/ApportableOrientationEventListener;

.field private static orientations:I

.field private static sAlreadyShown:Z

.field private static sSplashLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/apportable/app/SplashScreen;->sAlreadyShown:Z

    .line 40
    sput-object v1, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    .line 41
    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    .line 42
    sput-object v1, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    .line 43
    sput-boolean v0, Lcom/apportable/app/SplashScreen;->isLandscapeDevice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/apportable/app/SplashScreen;->isLandscapeDevice:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    return v0
.end method

.method private static getAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 50
    .line 51
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    .line 53
    :try_start_0
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSplashScreen()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 63
    const-string v0, "Default-568h@2x.png"

    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    const-string v0, "Default-568h@2x~iphone.png"

    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 73
    const-string v0, "Default@2x.png"

    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 78
    const-string v0, "Default@2x~iphone.png"

    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 83
    const-string v0, "Default.png"

    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 88
    const-string v0, "Default~iphone.png"

    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static hide(Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 343
    sget-boolean v0, Lcom/apportable/app/SplashScreen;->sAlreadyShown:Z

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    sget-object v0, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    if-eqz v0, :cond_2

    .line 347
    sget-object v0, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    invoke-virtual {v0}, Lcom/apportable/ApportableOrientationEventListener;->disable()V

    .line 349
    :cond_2
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 350
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method public static isShown()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show(Landroid/widget/FrameLayout;)V
    .locals 15

    .prologue
    .line 99
    sget-boolean v0, Lcom/apportable/app/SplashScreen;->sAlreadyShown:Z

    if-nez v0, :cond_6

    .line 101
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/apportable/app/SplashScreen;->sAlreadyShown:Z

    .line 102
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Info.plist"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 105
    const-string v1, "UISupportedInterfaceOrientations"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSArray;

    .line 106
    if-nez v1, :cond_1e

    .line 107
    const-string v1, "UISupportedInterfaceOrientations~iphone"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSArray;

    move-object v2, v1

    .line 109
    :goto_0
    if-nez v2, :cond_0

    .line 110
    const-string v1, "UISupportedInterfaceOrientations~ipad"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSArray;

    move-object v2, v1

    .line 112
    :cond_0
    if-nez v2, :cond_3

    .line 113
    const-string v1, "UIInterfaceOrientation"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSString;

    .line 114
    if-nez v1, :cond_1

    .line 115
    const-string v1, "UIInterfaceOrientation~iphone"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSString;

    .line 117
    :cond_1
    if-nez v1, :cond_2

    .line 118
    const-string v1, "UIInterfaceOrientation~ipad"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSString;

    move-object v1, v0

    .line 120
    :cond_2
    if-eqz v1, :cond_3

    .line 121
    new-instance v0, Lcom/dd/plist/NSArray;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/dd/plist/NSObject;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-direct {v0, v2}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    move-object v2, v0

    .line 124
    :cond_3
    if-eqz v2, :cond_9

    .line 125
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lcom/dd/plist/NSArray;->count()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 126
    invoke-virtual {v2, v1}, Lcom/dd/plist/NSArray;->objectAtIndex(I)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSString;

    .line 127
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UIInterfaceOrientationPortrait"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 128
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    .line 125
    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 129
    :cond_5
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UIInterfaceOrientationPortraitUpsideDown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 130
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const-string v0, "VerdeDebug"

    const-string v1, "Exception caught while setting splash screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_6
    :goto_3
    return-void

    .line 131
    :cond_7
    :try_start_1
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UIInterfaceOrientationLandscapeLeft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 132
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    goto :goto_2

    .line 133
    :cond_8
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UIInterfaceOrientationLandscapeRight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    goto :goto_2

    .line 138
    :cond_9
    const/16 v0, 0xf

    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    .line 141
    :cond_a
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 142
    const-string v0, "window"

    invoke-virtual {v3, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 143
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 146
    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    if-eqz v0, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    :cond_b
    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 149
    :cond_c
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/app/SplashScreen;->isLandscapeDevice:Z

    .line 152
    :cond_d
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    .line 157
    new-instance v0, Lcom/apportable/app/SplashScreen$1;

    invoke-direct {v0, v3}, Lcom/apportable/app/SplashScreen$1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    .line 212
    sget-object v0, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    invoke-virtual {v0}, Lcom/apportable/ApportableOrientationEventListener;->enable()V

    .line 215
    :cond_e
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    .line 217
    invoke-static {}, Lcom/apportable/app/SplashScreen;->getSplashScreen()Ljava/io/InputStream;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_1d

    .line 220
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_15

    .line 222
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    .line 223
    const-string v1, "letterbox"

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 227
    const-string v2, "landscape"

    .line 228
    if-eqz v4, :cond_f

    .line 229
    const-string v2, "apportable.orientation"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    :cond_f
    if-nez v2, :cond_16

    const/4 v2, 0x0

    .line 232
    :goto_4
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 234
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 236
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 239
    const/16 v3, 0xfe

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 240
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x11

    invoke-direct {v3, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 242
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 243
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 244
    if-eqz v4, :cond_10

    .line 245
    const-string v1, "apportable.splash_screen_type"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 250
    if-eqz v1, :cond_11

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "letterbox"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 251
    :cond_11
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 252
    if-eqz v2, :cond_17

    .line 253
    float-to-int v1, v8

    float-to-int v2, v7

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 254
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    int-to-float v4, v6

    int-to-float v10, v5

    div-float v10, v8, v10

    mul-float/2addr v4, v10

    .line 256
    sub-float v10, v7, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 258
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-lez v11, :cond_12

    .line 259
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v5, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v0, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 260
    :cond_12
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/RectF;

    const/4 v13, 0x0

    add-float/2addr v4, v10

    invoke-direct {v12, v13, v10, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v0, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 262
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-lez v4, :cond_13

    .line 263
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    add-int/lit8 v12, v6, -0x1

    invoke-direct {v4, v11, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    sub-float v10, v7, v10

    invoke-direct {v5, v6, v10, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 264
    :cond_13
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    :cond_14
    :goto_5
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 332
    :cond_15
    :goto_6
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 230
    :cond_16
    const-string v7, "portrait"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_4

    .line 277
    :cond_17
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 278
    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 279
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 282
    int-to-float v2, v6

    div-float v2, v8, v2

    int-to-float v3, v5

    div-float v3, v7, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 283
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 286
    int-to-float v3, v6

    mul-float/2addr v3, v2

    sub-float v3, v8, v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 287
    int-to-float v4, v5

    mul-float/2addr v2, v4

    sub-float v2, v7, v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 288
    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 291
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 292
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 293
    const/high16 v1, -0x1000000

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 294
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 297
    :cond_18
    const-string v4, "aspect_fit"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 298
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 299
    float-to-int v1, v8

    float-to-int v2, v7

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 301
    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v7, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v7, v11

    invoke-virtual {v2, v4, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 302
    int-to-float v4, v6

    mul-float/2addr v4, v7

    int-to-float v10, v5

    div-float/2addr v4, v10

    .line 303
    sub-float/2addr v8, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 304
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    add-float/2addr v4, v8

    invoke-direct {v5, v6, v8, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v0, v10, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 305
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 306
    :cond_19
    const-string v3, "stretch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 307
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 308
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 309
    if-nez v2, :cond_1a

    .line 310
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 312
    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 313
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 312
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 315
    :cond_1b
    const-string v2, "aspect_fill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 316
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 317
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 318
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 319
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 320
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 319
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 322
    :cond_1c
    const-string v2, "native"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 323
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 324
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 329
    :cond_1d
    const-string v0, "VerdeDebug"

    const-string v1, "Default.png not found for splash screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_1e
    move-object v2, v1

    goto/16 :goto_0
.end method
