.class public abstract Lcom/chartboost/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/f$b;,
        Lcom/chartboost/sdk/f$a;
    }
.end annotation


# static fields
.field public static a:Landroid/os/Handler;


# instance fields
.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/f$b;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/f$b;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/chartboost/sdk/Libraries/e$a;

.field protected e:Lcom/chartboost/sdk/Model/a;

.field protected f:Lcom/chartboost/sdk/Libraries/f;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field protected i:Z

.field private j:Z

.field private k:Lcom/chartboost/sdk/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/f;->b:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/f;->c:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->g:Ljava/util/Map;

    .line 211
    iput-boolean v1, p0, Lcom/chartboost/sdk/f;->h:Z

    iput-boolean v1, p0, Lcom/chartboost/sdk/f;->i:Z

    .line 214
    iput-object p1, p0, Lcom/chartboost/sdk/f;->e:Lcom/chartboost/sdk/Model/a;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    .line 216
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/f;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->j:Z

    .line 218
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 396
    if-eqz p0, :cond_0

    .line 397
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 401
    :catch_0
    move-exception v0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 407
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 408
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 410
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 411
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 417
    :cond_4
    :try_start_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 418
    :catch_1
    move-exception v0

    .line 419
    const-string v2, "CBViewProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error parsing color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/f;Lcom/chartboost/sdk/f$a;)Lcom/chartboost/sdk/f$a;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/f;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/chartboost/sdk/f;->j:Z

    return p1
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Libraries/f;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/f;

    return-object v0
.end method

.method protected a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 388
    if-eqz v0, :cond_0

    .line 389
    sget-object v1, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 334
    return-void
.end method

.method public a(Lcom/chartboost/sdk/f$b;)V
    .locals 1

    .prologue
    .line 241
    invoke-interface {p1}, Lcom/chartboost/sdk/f$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public a(ZLandroid/view/View;)V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 358
    return-void
.end method

.method public a(ZLandroid/view/View;Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1fe

    const/16 v0, 0x8

    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/f;->g:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 383
    :goto_0
    return-void

    .line 366
    :cond_2
    if-nez p3, :cond_4

    .line 367
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 368
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 371
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/f$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/f$1;-><init>(Lcom/chartboost/sdk/f;ZLandroid/view/View;)V

    .line 380
    invoke-static {p1, p2, v4, v5}, Lcom/chartboost/sdk/impl/bi;->a(ZLandroid/view/View;J)V

    .line 382
    invoke-virtual {p0, p2, v0, v4, v5}, Lcom/chartboost/sdk/f;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 1

    .prologue
    .line 226
    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->d:Lcom/chartboost/sdk/Libraries/e$a;

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Model/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    return v0
.end method

.method protected abstract b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
.end method

.method public b(Lcom/chartboost/sdk/f$b;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/chartboost/sdk/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/chartboost/sdk/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "CBViewProtocol"

    const-string v1, "not completed loading assets for impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->i()V

    .line 261
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->b()Landroid/app/Activity;

    move-result-object v1

    .line 270
    if-nez v1, :cond_1

    .line 271
    iput-object v0, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    .line 273
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->i:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->h:Z

    if-nez v2, :cond_2

    .line 277
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0

    .line 279
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/f;

    .line 280
    iget-object v2, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->i:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->h:Z

    if-nez v2, :cond_5

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/f;

    .line 284
    :cond_5
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/f;->b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    .line 286
    iget-object v2, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/f$a;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iput-object v0, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    .line 290
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->f()V

    .line 302
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 303
    sget-object v2, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 305
    return-void
.end method

.method public e()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->b()V

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->k:Lcom/chartboost/sdk/f$a;

    .line 318
    return-void
.end method

.method public g()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/chartboost/sdk/f;->j:Z

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->j:Z

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->b()V

    goto :goto_0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->c()V

    .line 347
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method
