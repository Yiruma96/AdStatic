.class public final Lcom/chartboost/sdk/impl/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bi$3;,
        Lcom/chartboost/sdk/impl/bi$a;,
        Lcom/chartboost/sdk/impl/bi$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/bi;->b(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/bi;->c(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V

    return-void
.end method

.method public static a(ZLandroid/view/View;)V
    .locals 2

    .prologue
    .line 249
    const-wide/16 v0, 0x1fe

    invoke-static {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/bi;->a(ZLandroid/view/View;J)V

    .line 250
    return-void
.end method

.method public static a(ZLandroid/view/View;J)V
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 255
    if-eqz p0, :cond_0

    .line 256
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_0
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    if-eqz p0, :cond_1

    move v2, v1

    :goto_0
    if-eqz p0, :cond_2

    :goto_1
    invoke-direct {v3, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 258
    const-wide/16 v0, 0x1fe

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 260
    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    return-void

    :cond_1
    move v2, v0

    .line 257
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static b(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/bi;->c(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V

    .line 56
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V
    .locals 7

    .prologue
    .line 61
    sget-object v0, Lcom/chartboost/sdk/impl/bi$b;->g:Lcom/chartboost/sdk/impl/bi$b;

    if-ne p0, v0, :cond_1

    .line 62
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/chartboost/sdk/impl/bi$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->i:Lcom/chartboost/sdk/impl/bq;

    if-nez v0, :cond_3

    .line 68
    :cond_2
    const-string v0, "CBAnimationManager"

    const-string v1, "Transition of impression canceled due to lack of container"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->i:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->f()Landroid/view/View;

    move-result-object v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    const-string v0, "CBAnimationManager"

    const-string v1, "Transition of impression canceled due to lack of view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 77
    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/chartboost/sdk/impl/bi$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bi$1;-><init>(Landroid/view/View;Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private static c(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V
    .locals 16

    .prologue
    .line 90
    const-wide/16 v12, 0x258

    .line 91
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 92
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/chartboost/sdk/Model/a;->i:Lcom/chartboost/sdk/impl/bq;

    if-nez v2, :cond_2

    .line 96
    :cond_0
    const-string v2, "CBAnimationManager"

    const-string v3, "Transition of impression canceled due to lack of container"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/chartboost/sdk/Model/a;->i:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bq;->f()Landroid/view/View;

    move-result-object v14

    .line 100
    if-nez v14, :cond_3

    .line 101
    const-string v2, "CBAnimationManager"

    const-string v3, "Transition of impression canceled due to lack of view"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v9, v2

    .line 106
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v8, v2

    .line 107
    const/high16 v4, 0x42700000    # 60.0f

    .line 108
    const v10, 0x3ecccccd    # 0.4f

    .line 109
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v2, v3

    .line 116
    sget-object v2, Lcom/chartboost/sdk/impl/bi$3;->a:[I

    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/impl/bi$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v2, v11

    .line 230
    :goto_1
    sget-object v3, Lcom/chartboost/sdk/impl/bi$b;->g:Lcom/chartboost/sdk/impl/bi$b;

    move-object/from16 v0, p0

    if-ne v0, v3, :cond_10

    .line 231
    if-eqz p2, :cond_1

    .line 232
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bi$a;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 118
    :pswitch_0
    if-eqz p3, :cond_4

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 120
    :goto_2
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 122
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 123
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v3

    .line 124
    goto :goto_1

    .line 119
    :cond_4
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_2

    .line 126
    :pswitch_1
    if-eqz p3, :cond_5

    .line 127
    new-instance v2, Lcom/chartboost/sdk/impl/bn;

    neg-float v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/bn;-><init>(FFFFZ)V

    .line 130
    :goto_3
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 132
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 134
    if-eqz p3, :cond_6

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v10, v3, v10, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 136
    :goto_4
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 138
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 140
    if-eqz p3, :cond_7

    .line 141
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    mul-float v3, v9, v15

    const/4 v4, 0x0

    neg-float v5, v8

    mul-float/2addr v5, v10

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 144
    :goto_5
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 145
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 146
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v11

    .line 148
    goto :goto_1

    .line 129
    :cond_5
    new-instance v2, Lcom/chartboost/sdk/impl/bn;

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/bn;-><init>(FFFFZ)V

    goto :goto_3

    .line 135
    :cond_6
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v10, v4, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_4

    .line 143
    :cond_7
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    mul-float v4, v9, v15

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_5

    .line 150
    :pswitch_2
    if-eqz p3, :cond_8

    .line 151
    new-instance v2, Lcom/chartboost/sdk/impl/bn;

    neg-float v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/bn;-><init>(FFFFZ)V

    .line 154
    :goto_6
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 156
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    if-eqz p3, :cond_9

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v10, v3, v10, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 160
    :goto_7
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 161
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 162
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 164
    if-eqz p3, :cond_a

    .line 165
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v9

    mul-float/2addr v3, v10

    const/4 v4, 0x0

    mul-float v5, v8, v15

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 168
    :goto_8
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 169
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 170
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v11

    .line 172
    goto/16 :goto_1

    .line 153
    :cond_8
    new-instance v2, Lcom/chartboost/sdk/impl/bn;

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/bn;-><init>(FFFFZ)V

    goto :goto_6

    .line 159
    :cond_9
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v10, v4, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_7

    .line 167
    :cond_a
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    mul-float v5, v8, v15

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_8

    .line 175
    :pswitch_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 177
    if-eqz p3, :cond_b

    move v3, v8

    .line 178
    :goto_9
    if-eqz p3, :cond_c

    const/4 v2, 0x0

    .line 179
    :goto_a
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v4, v5, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 180
    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 181
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 182
    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v11

    .line 183
    goto/16 :goto_1

    .line 177
    :cond_b
    const/4 v2, 0x0

    move v3, v2

    goto :goto_9

    :cond_c
    move v2, v8

    .line 178
    goto :goto_a

    .line 187
    :pswitch_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 189
    if-eqz p3, :cond_d

    neg-float v2, v8

    move v3, v2

    .line 190
    :goto_b
    if-eqz p3, :cond_e

    const/4 v2, 0x0

    .line 191
    :goto_c
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v4, v5, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 192
    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 194
    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v11

    .line 195
    goto/16 :goto_1

    .line 189
    :cond_d
    const/4 v2, 0x0

    move v3, v2

    goto :goto_b

    .line 190
    :cond_e
    neg-float v2, v8

    goto :goto_c

    .line 198
    :pswitch_5
    if-eqz p3, :cond_f

    .line 199
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f8ccccd    # 1.1f

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f8ccccd    # 1.1f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 200
    long-to-float v3, v12

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 202
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 203
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 205
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f51745c

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f51745c

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 206
    long-to-float v3, v12

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 207
    long-to-float v3, v12

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 210
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 212
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8e38e4

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f8e38e4

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 213
    long-to-float v3, v12

    const v4, 0x3dccccc8    # 0.099999964f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 214
    long-to-float v3, v12

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 215
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 216
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v11

    goto/16 :goto_1

    .line 219
    :cond_f
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 220
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 221
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 222
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 223
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v11

    .line 225
    goto/16 :goto_1

    .line 236
    :cond_10
    if-eqz p2, :cond_11

    .line 237
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/chartboost/sdk/impl/bi$2;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/chartboost/sdk/impl/bi$2;-><init>(Lcom/chartboost/sdk/impl/bi$a;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v3, v4, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    :cond_11
    invoke-virtual {v14, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
