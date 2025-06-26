.class final Lcom/apportable/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/utils/Utils;->choosePreferredConfigOrder(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/SurfaceHolder;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)[Ljavax/microedition/khronos/egl/EGLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljavax/microedition/khronos/egl/EGLConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$alpha:I

.field final synthetic val$blue:I

.field final synthetic val$depthBuffer:Z

.field final synthetic val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

.field final synthetic val$egl:Ljavax/microedition/khronos/egl/EGL10;

.field final synthetic val$green:I

.field final synthetic val$isATC:Z

.field final synthetic val$red:I

.field final synthetic val$stencilBuffer:Z


# direct methods
.method constructor <init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;ZZZIIII)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iput-object p2, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-boolean p3, p0, Lcom/apportable/utils/Utils$1;->val$isATC:Z

    iput-boolean p4, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    iput-boolean p5, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    iput p6, p0, Lcom/apportable/utils/Utils$1;->val$red:I

    iput p7, p0, Lcom/apportable/utils/Utils$1;->val$green:I

    iput p8, p0, Lcom/apportable/utils/Utils$1;->val$blue:I

    iput p9, p0, Lcom/apportable/utils/Utils$1;->val$alpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 294
    check-cast p1, Ljavax/microedition/khronos/egl/EGLConfig;

    check-cast p2, Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, p1, p2}, Lcom/apportable/utils/Utils$1;->compare(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLConfig;)I

    move-result v0

    return v0
.end method

.method public compare(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLConfig;)I
    .locals 13

    .prologue
    const/16 v9, 0x3033

    const/16 v7, 0x3027

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    .line 298
    new-array v6, v1, [I

    .line 304
    iget-object v0, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v4, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 305
    aget v0, v6, v2

    const/16 v4, 0x3051

    if-ne v0, v4, :cond_28

    move v0, v1

    .line 306
    :goto_0
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, p2, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 307
    aget v4, v6, v2

    const/16 v5, 0x3051

    if-ne v4, v5, :cond_27

    move v4, v1

    .line 308
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 420
    :cond_0
    :goto_2
    return v2

    .line 309
    :cond_1
    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_2

    .line 310
    :cond_2
    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_2

    .line 312
    :cond_3
    iget-boolean v0, p0, Lcom/apportable/utils/Utils$1;->val$isATC:Z

    if-eqz v0, :cond_6

    .line 314
    iget-object v0, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v4, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 315
    aget v0, v6, v2

    const/16 v4, 0x3050

    if-ne v0, v4, :cond_26

    move v0, v3

    .line 316
    :goto_3
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, p2, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 317
    aget v4, v6, v2

    const/16 v5, 0x3050

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 331
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, p1, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 332
    aget v4, v6, v2

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_22

    move v4, v1

    .line 333
    :goto_5
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v5, v7, p2, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 334
    aget v5, v6, v2

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_21

    move v5, v1

    .line 335
    :goto_6
    if-eqz v4, :cond_5

    if-nez v5, :cond_0

    .line 336
    :cond_5
    if-eqz v4, :cond_9

    move v2, v1

    goto :goto_2

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v4, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 322
    aget v0, v6, v2

    const/16 v4, 0x3050

    if-ne v0, v4, :cond_25

    move v0, v1

    .line 323
    :goto_7
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, p2, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 324
    aget v4, v6, v2

    const/16 v5, 0x3050

    if-ne v4, v5, :cond_24

    move v4, v1

    .line 325
    :goto_8
    if-eqz v0, :cond_7

    if-nez v4, :cond_0

    .line 326
    :cond_7
    if-eqz v0, :cond_8

    move v2, v1

    goto :goto_2

    .line 327
    :cond_8
    if-eqz v4, :cond_23

    move v2, v3

    goto :goto_2

    .line 337
    :cond_9
    if-eqz v5, :cond_a

    move v2, v3

    goto :goto_2

    .line 340
    :cond_a
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v7, 0x3025

    invoke-interface {v4, v5, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 341
    aget v4, v6, v2

    .line 343
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v8, 0x3025

    invoke-interface {v5, v7, p2, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 344
    aget v5, v6, v2

    .line 346
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    if-eqz v7, :cond_b

    if-gtz v4, :cond_b

    if-lez v5, :cond_0

    .line 347
    :cond_b
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    if-eqz v7, :cond_c

    if-gtz v4, :cond_c

    move v2, v1

    goto/16 :goto_2

    .line 348
    :cond_c
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    if-eqz v7, :cond_d

    if-gtz v5, :cond_d

    move v2, v3

    goto/16 :goto_2

    .line 350
    :cond_d
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    if-nez v7, :cond_e

    if-lez v4, :cond_e

    if-gtz v5, :cond_0

    .line 351
    :cond_e
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    if-nez v7, :cond_f

    if-lez v4, :cond_f

    move v2, v1

    goto/16 :goto_2

    .line 352
    :cond_f
    iget-boolean v4, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    if-nez v4, :cond_10

    if-lez v5, :cond_10

    move v2, v3

    goto/16 :goto_2

    .line 355
    :cond_10
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v7, 0x3026

    invoke-interface {v4, v5, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 356
    aget v4, v6, v2

    .line 357
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v8, 0x3026

    invoke-interface {v5, v7, p2, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 358
    aget v5, v6, v2

    .line 360
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    if-eqz v7, :cond_11

    if-gtz v4, :cond_11

    if-lez v5, :cond_0

    .line 361
    :cond_11
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    if-eqz v7, :cond_12

    if-gtz v4, :cond_12

    move v2, v1

    goto/16 :goto_2

    .line 362
    :cond_12
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    if-eqz v7, :cond_13

    if-gtz v5, :cond_13

    move v2, v3

    goto/16 :goto_2

    .line 364
    :cond_13
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    if-nez v7, :cond_14

    if-lez v4, :cond_14

    if-gtz v5, :cond_0

    .line 365
    :cond_14
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    if-nez v7, :cond_15

    if-lez v4, :cond_15

    move v2, v1

    goto/16 :goto_2

    .line 366
    :cond_15
    iget-boolean v1, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    if-nez v1, :cond_16

    if-lez v5, :cond_16

    move v2, v3

    goto/16 :goto_2

    .line 369
    :cond_16
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v3, p1, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 370
    aget v1, v6, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    add-int/lit8 v0, v0, -0x2

    .line 371
    :cond_17
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v3, p2, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 372
    aget v1, v6, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x2

    .line 375
    :cond_18
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v3, p1, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 376
    aget v1, v6, v2

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_19

    add-int/lit8 v0, v0, -0x2

    .line 377
    :cond_19
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v3, p2, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 378
    aget v1, v6, v2

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1a

    add-int/lit8 v0, v0, 0x2

    .line 380
    :cond_1a
    iget-boolean v1, p0, Lcom/apportable/utils/Utils$1;->val$isATC:Z

    if-eqz v1, :cond_1f

    .line 382
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v4, 0x302d

    invoke-interface {v1, v3, p1, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 383
    aget v1, v6, v2

    if-lez v1, :cond_1b

    add-int/lit8 v0, v0, -0x8

    .line 384
    :cond_1b
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v4, 0x302d

    invoke-interface {v1, v3, p2, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 385
    aget v1, v6, v2

    if-lez v1, :cond_1c

    add-int/lit8 v0, v0, 0x8

    .line 396
    :cond_1c
    :goto_9
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v4, 0x3024

    invoke-interface {v1, v3, p1, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 397
    aget v1, v6, v2

    .line 398
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3024

    invoke-interface {v3, v4, p2, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 399
    aget v3, v6, v2

    .line 401
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v7, 0x3023

    invoke-interface {v4, v5, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 402
    aget v4, v6, v2

    .line 403
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v8, 0x3023

    invoke-interface {v5, v7, p2, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 404
    aget v5, v6, v2

    .line 406
    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v9, 0x3022

    invoke-interface {v7, v8, p1, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 407
    aget v7, v6, v2

    .line 408
    iget-object v8, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v10, 0x3022

    invoke-interface {v8, v9, p2, v10, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 409
    aget v8, v6, v2

    .line 411
    iget-object v9, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v10, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v11, 0x3021

    invoke-interface {v9, v10, p1, v11, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 412
    aget v9, v6, v2

    .line 413
    iget-object v10, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v11, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v12, 0x3021

    invoke-interface {v10, v11, p2, v12, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 414
    aget v2, v6, v2

    .line 417
    iget v6, p0, Lcom/apportable/utils/Utils$1;->val$red:I

    if-ne v1, v6, :cond_1d

    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$green:I

    if-ne v4, v1, :cond_1d

    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$blue:I

    if-ne v7, v1, :cond_1d

    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$alpha:I

    if-ne v9, v1, :cond_1d

    add-int/lit8 v0, v0, -0x4

    .line 418
    :cond_1d
    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$red:I

    if-ne v3, v1, :cond_1e

    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$green:I

    if-ne v5, v1, :cond_1e

    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$blue:I

    if-ne v8, v1, :cond_1e

    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$alpha:I

    if-ne v2, v1, :cond_1e

    add-int/lit8 v0, v0, 0x4

    :cond_1e
    move v2, v0

    .line 420
    goto/16 :goto_2

    .line 389
    :cond_1f
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v4, 0x302d

    invoke-interface {v1, v3, p1, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 390
    aget v1, v6, v2

    if-lez v1, :cond_20

    add-int/lit8 v0, v0, 0x40

    .line 391
    :cond_20
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v4, 0x302d

    invoke-interface {v1, v3, p2, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 392
    aget v1, v6, v2

    if-lez v1, :cond_1c

    add-int/lit8 v0, v0, -0x40

    goto/16 :goto_9

    :cond_21
    move v5, v2

    goto/16 :goto_6

    :cond_22
    move v4, v2

    goto/16 :goto_5

    :cond_23
    move v0, v2

    goto/16 :goto_4

    :cond_24
    move v4, v2

    goto/16 :goto_8

    :cond_25
    move v0, v2

    goto/16 :goto_7

    :cond_26
    move v0, v2

    goto/16 :goto_3

    :cond_27
    move v4, v2

    goto/16 :goto_1

    :cond_28
    move v0, v2

    goto/16 :goto_0
.end method
