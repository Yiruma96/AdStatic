.class final Lcom/apportable/app/SplashScreen$1;
.super Lcom/apportable/ApportableOrientationEventListener;
.source "SplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/app/SplashScreen;->show(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private currentOrientation:I

.field private lastEvent:J

.field private mCurrentOrientation:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/apportable/ApportableOrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 159
    const/4 v0, -0x2

    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->mCurrentOrientation:I

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apportable/app/SplashScreen$1;->lastEvent:J

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    return-void
.end method


# virtual methods
.method public onOrientationChangedWithCompatibilityAdjustments(I)V
    .locals 10

    .prologue
    const/16 v9, 0x13b

    const/16 v8, 0xe1

    const/16 v7, 0x87

    const/16 v6, 0x2d

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 166
    iget v2, p0, Lcom/apportable/app/SplashScreen$1;->mCurrentOrientation:I

    if-eq p1, v2, :cond_4

    iget-wide v2, p0, Lcom/apportable/app/SplashScreen$1;->lastEvent:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 167
    iput-wide v0, p0, Lcom/apportable/app/SplashScreen$1;->lastEvent:J

    .line 168
    iput p1, p0, Lcom/apportable/app/SplashScreen$1;->mCurrentOrientation:I

    .line 171
    # getter for: Lcom/apportable/app/SplashScreen;->isLandscapeDevice:Z
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    add-int/lit8 v0, p1, -0x5a

    .line 175
    :goto_0
    if-gez v0, :cond_0

    .line 176
    add-int/lit16 v0, v0, 0x168

    .line 179
    :cond_0
    const/16 v1, 0x168

    if-le v0, v1, :cond_1

    .line 180
    add-int/lit16 v0, v0, -0x168

    .line 182
    :cond_1
    iget v1, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    .line 183
    if-le v9, v0, :cond_2

    if-gt v0, v6, :cond_5

    .line 185
    :cond_2
    # getter for: Lcom/apportable/app/SplashScreen;->orientations:I
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$100()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    .line 206
    :cond_3
    :goto_1
    iget v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    if-eq v1, v0, :cond_4

    .line 207
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    iget v1, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->_setRequestedOrientation(I)V

    .line 210
    :cond_4
    return-void

    .line 188
    :cond_5
    if-ge v6, v0, :cond_6

    if-ge v0, v7, :cond_6

    .line 190
    # getter for: Lcom/apportable/app/SplashScreen;->orientations:I
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$100()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    goto :goto_1

    .line 193
    :cond_6
    if-gt v7, v0, :cond_7

    if-gt v0, v8, :cond_7

    .line 195
    # getter for: Lcom/apportable/app/SplashScreen;->orientations:I
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$100()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 196
    const/4 v0, 0x2

    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    goto :goto_1

    .line 198
    :cond_7
    if-ge v8, v0, :cond_3

    if-ge v0, v9, :cond_3

    .line 200
    # getter for: Lcom/apportable/app/SplashScreen;->orientations:I
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$100()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 201
    const/4 v0, 0x3

    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    goto :goto_1

    :cond_8
    move v0, p1

    goto :goto_0
.end method
