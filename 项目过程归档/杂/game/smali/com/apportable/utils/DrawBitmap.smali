.class public Lcom/apportable/utils/DrawBitmap;
.super Ljava/lang/Object;
.source "DrawBitmap.java"


# static fields
.field private static sDrawBitmap:Landroid/graphics/Bitmap;

.field private static sDrawBitmapCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sMaxDrawBitmapCacheArea:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawBitmap:Landroid/graphics/Bitmap;

.field private mDrawBitmapPaint:Landroid/graphics/Paint;

.field private mDrawBitmapRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    .line 181
    const/4 v0, 0x0

    sput v0, Lcom/apportable/utils/DrawBitmap;->sMaxDrawBitmapCacheArea:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapPaint:Landroid/graphics/Paint;

    .line 22
    iput-object p1, p0, Lcom/apportable/utils/DrawBitmap;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private static createDrawBitmap(II)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 121
    sget-object v7, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    monitor-enter v7

    .line 125
    const v4, 0x7fffffff

    .line 127
    const/4 v2, -0x1

    .line 128
    const/4 v1, 0x0

    move-object v3, v6

    :goto_0
    :try_start_0
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 129
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 130
    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    move-object v2, v3

    move v3, v4

    .line 128
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    move-object v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v5, p0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v5, p1, :cond_1

    move v0, v1

    move v1, v2

    move-object v2, v3

    move v3, v4

    .line 136
    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v5, v8

    mul-int v8, p0, p1

    sub-int/2addr v5, v8

    .line 139
    if-ge v5, v4, :cond_6

    move-object v2, v0

    move v3, v5

    move v0, v1

    .line 142
    goto :goto_1

    .line 146
    :cond_2
    if-eqz v3, :cond_5

    .line 147
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 148
    int-to-float v1, v4

    int-to-float v5, v0

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v5, v8

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    .line 149
    int-to-float v1, v4

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    .line 150
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object v0, v6

    .line 157
    :goto_2
    if-eqz v0, :cond_4

    .line 158
    sget-object v1, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    monitor-exit v7

    .line 161
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v7

    goto :goto_3

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move-object v0, v3

    goto :goto_2

    :cond_6
    move v0, v1

    move v1, v2

    move-object v2, v3

    move v3, v4

    goto :goto_1
.end method

.method private static recycleDrawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 90
    sget-object v3, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    monitor-enter v3

    .line 91
    :try_start_0
    sget v0, Lcom/apportable/utils/DrawBitmap;->sMaxDrawBitmapCacheArea:I

    if-nez v0, :cond_0

    .line 92
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 94
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v0, v2

    .line 97
    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/apportable/utils/DrawBitmap;->sMaxDrawBitmapCacheArea:I

    :cond_0
    move v2, v1

    .line 101
    :goto_0
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 102
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 103
    if-nez v0, :cond_1

    .line 104
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    .line 101
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v0, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 112
    sget v1, Lcom/apportable/utils/DrawBitmap;->sMaxDrawBitmapCacheArea:I

    if-gt v0, v1, :cond_3

    .line 113
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmapCache:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :goto_2
    monitor-exit v3

    .line 118
    return-void

    .line 115
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static usingSharedDrawBitmap()Z
    .locals 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/apportable/utils/DrawBitmap;->usingSharedDrawBitmap()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    .line 63
    :goto_0
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 66
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public get(II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 30
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmapRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 31
    invoke-static {}, Lcom/apportable/utils/DrawBitmap;->usingSharedDrawBitmap()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 35
    :cond_0
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 36
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 37
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    sput-object v2, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    .line 40
    :cond_1
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 41
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    .line 43
    :cond_2
    sget-object v0, Lcom/apportable/utils/DrawBitmap;->sDrawBitmap:Landroid/graphics/Bitmap;

    .line 54
    :goto_0
    return-object v0

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_4

    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_5

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/apportable/utils/DrawBitmap;->recycleDrawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 49
    iput-object v2, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 52
    invoke-static {p1, p2}, Lcom/apportable/utils/DrawBitmap;->createDrawBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 54
    :cond_6
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/apportable/utils/DrawBitmap;->recycleDrawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/utils/DrawBitmap;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    return-void
.end method
