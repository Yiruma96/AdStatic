.class public Lcom/apportable/ui/Window;
.super Lcom/apportable/ui/View;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/Window$WindowDialog;,
        Lcom/apportable/ui/Window$WindowLayout;
    }
.end annotation


# static fields
.field private static final DUMP_MOTION_EVENTS:Z = false

.field private static final TAG:Ljava/lang/String; = "Window"

.field private static sKeyWindowDialog:Landroid/app/Dialog;


# instance fields
.field private handledKeyEventDown:I

.field private mHeightMeasureSpec:I

.field private mKeepSystemVisibilityFlag:Z

.field private mSystemVisibility:I

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/ui/Window;->sKeyWindowDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 36
    iput v0, p0, Lcom/apportable/ui/Window;->mSystemVisibility:I

    .line 37
    iput-boolean v0, p0, Lcom/apportable/ui/Window;->mKeepSystemVisibilityFlag:Z

    .line 41
    invoke-static {p1}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(UIKit)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 45
    new-instance v0, Lcom/apportable/ui/Window$1;

    invoke-direct {v0, p0}, Lcom/apportable/ui/Window$1;-><init>(Lcom/apportable/ui/Window;)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Window;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/Window;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/apportable/ui/Window;->reapplySystemUiVisibility()V

    return-void
.end method

.method static synthetic access$100(I)Z
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Window;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/apportable/ui/Window;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Window;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static dumpEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 351
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOWN"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "UP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MOVE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "CANCEL"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "OUTSIDE"

    aput-object v3, v1, v2

    const-string v2, "POINTER_DOWN"

    aput-object v2, v1, v6

    const-string v2, "POINTER_UP"

    aput-object v2, v1, v7

    const/4 v2, 0x7

    const-string v3, "7?"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8?"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9?"

    aput-object v3, v1, v2

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 357
    and-int/lit16 v4, v3, 0xff

    .line 358
    const-string v5, "event ACTION_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_1

    .line 362
    :cond_0
    const-string v1, "(pid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_1
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 367
    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, "(pid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, ")="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 372
    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v0, "Window"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method

.method public static getKeyWindowDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/apportable/ui/Window;->sKeyWindowDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 208
    :pswitch_0
    const-string v0, "MotionEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 149
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 150
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 152
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v1, v2, v0, v4, v5}, Lcom/apportable/ui/Window;->nativeTouchesBegin(IFFJ)V

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 158
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 159
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 160
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/apportable/ui/Window;->nativeTouchesBegin(IFFJ)V

    goto :goto_0

    .line 164
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 165
    new-array v2, v1, [I

    .line 166
    new-array v3, v1, [F

    .line 167
    new-array v4, v1, [F

    .line 169
    :goto_1
    if-ge v0, v1, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v2, v0

    .line 171
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aput v5, v3, v0

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/apportable/ui/Window;->nativeTouchesMove([I[F[FJ)V

    goto :goto_0

    .line 178
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 179
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 180
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 181
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 182
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v1, v2, v0, v4, v5}, Lcom/apportable/ui/Window;->nativeTouchesEnd(IFFJ)V

    goto :goto_0

    .line 187
    :pswitch_5
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 188
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 189
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 190
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/apportable/ui/Window;->nativeTouchesEnd(IFFJ)V

    goto/16 :goto_0

    .line 194
    :pswitch_6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 195
    new-array v2, v1, [I

    .line 196
    new-array v3, v1, [F

    .line 197
    new-array v4, v1, [F

    .line 199
    :goto_2
    if-ge v0, v1, :cond_1

    .line 200
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v2, v0

    .line 201
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aput v5, v3, v0

    .line 202
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 204
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/apportable/ui/Window;->nativeTouchesCancel([I[F[FJ)V

    goto/16 :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static isNativeKeyCode(I)Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x54

    if-eq p0, v0, :cond_0

    const/16 v0, 0x60

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-eq p0, v0, :cond_0

    const/16 v0, 0x62

    if-eq p0, v0, :cond_0

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    const/16 v0, 0x67

    if-eq p0, v0, :cond_0

    const/16 v0, 0x68

    if-eq p0, v0, :cond_0

    const/16 v0, 0x69

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeKeyDown(IIJI)Z
.end method

.method private static native nativeKeyUp(IIJI)Z
.end method

.method private static native nativeOnWindowFocusChanged(Z)V
.end method

.method private static native nativeTouchesBegin(IFFJ)V
.end method

.method private static native nativeTouchesCancel([I[F[FJ)V
.end method

.method private static native nativeTouchesEnd(IFFJ)V
.end method

.method private static native nativeTouchesMove([I[F[FJ)V
.end method

.method private reapplySystemUiVisibility()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/apportable/ui/Window;->mKeepSystemVisibilityFlag:Z

    if-eqz v0, :cond_0

    .line 70
    iget v0, p0, Lcom/apportable/ui/Window;->mSystemVisibility:I

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Window;->setSystemUiVisibility(I)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected _setSystemUiVisibility(I)V
    .locals 2

    .prologue
    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 285
    iput p1, p0, Lcom/apportable/ui/Window;->mSystemVisibility:I

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/Window;->mKeepSystemVisibilityFlag:Z

    .line 287
    iget v0, p0, Lcom/apportable/ui/Window;->mSystemVisibility:I

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Window;->setSystemUiVisibility(I)V

    .line 289
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget v0, p0, Lcom/apportable/ui/Window;->mWidthMeasureSpec:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apportable/ui/Window;->mHeightMeasureSpec:I

    if-eqz v0, :cond_0

    .line 309
    iget v0, p0, Lcom/apportable/ui/Window;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/apportable/ui/Window;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/Window;->measure(II)V

    .line 310
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/apportable/ui/Window;->layout(IIII)V

    .line 313
    :cond_0
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public makeKeyAndOrderFront()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 248
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    .line 249
    new-instance v2, Lcom/apportable/ui/Window$WindowDialog;

    invoke-direct {v2, p0, v1, p0}, Lcom/apportable/ui/Window$WindowDialog;-><init>(Lcom/apportable/ui/Window;Landroid/content/Context;Lcom/apportable/ui/Window;)V

    .line 250
    new-instance v3, Lcom/apportable/ui/Window$WindowLayout;

    invoke-direct {v3, p0, v1}, Lcom/apportable/ui/Window$WindowLayout;-><init>(Lcom/apportable/ui/Window;Landroid/content/Context;)V

    .line 251
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 253
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v0, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, p0, v0}, Lcom/apportable/ui/Window$WindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {v2, v3}, Lcom/apportable/ui/Window$WindowDialog;->setContentView(Landroid/view/View;)V

    .line 255
    invoke-virtual {v2}, Lcom/apportable/ui/Window$WindowDialog;->show()V

    .line 256
    invoke-static {v1}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/ViewServer;->setFocusedWindow(Landroid/view/View;)V

    .line 257
    sput-object v2, Lcom/apportable/ui/Window;->sKeyWindowDialog:Landroid/app/Dialog;

    .line 258
    invoke-virtual {v3}, Lcom/apportable/ui/Window$WindowLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/Window$2;

    invoke-direct {v1, p0, v3}, Lcom/apportable/ui/Window$2;-><init>(Lcom/apportable/ui/Window;Lcom/apportable/ui/Window$WindowLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 280
    return-void
.end method

.method public native motionEvent(Landroid/view/MotionEvent;)V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 220
    invoke-static {p1}, Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 222
    iget v0, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    .line 224
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/apportable/ui/Window;->nativeKeyDown(IIJI)Z

    .line 227
    :goto_1
    return v1

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-static {p1}, Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    if-nez v0, :cond_0

    .line 234
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 240
    :goto_0
    return v1

    .line 236
    :cond_0
    iget v0, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    .line 237
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/apportable/ui/Window;->nativeKeyUp(IIJI)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 240
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/View;->onMeasure(II)V

    .line 319
    iput p1, p0, Lcom/apportable/ui/Window;->mWidthMeasureSpec:I

    .line 320
    iput p2, p0, Lcom/apportable/ui/Window;->mHeightMeasureSpec:I

    .line 321
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 140
    invoke-static {p1}, Lcom/apportable/ui/Window;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->onWindowFocusChanged(Z)V

    .line 130
    invoke-static {p1}, Lcom/apportable/ui/Window;->nativeOnWindowFocusChanged(Z)V

    .line 131
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apportable/Lifecycle;->onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/apportable/ui/Window;->reapplySystemUiVisibility()V

    .line 136
    :cond_0
    return-void
.end method
