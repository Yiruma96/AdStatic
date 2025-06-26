.class public Lcom/apportable/ui/BarButtonItem;
.super Lcom/apportable/ui/BarItem;
.source "BarButtonItem.java"


# static fields
.field public static final ACTION:I = 0x9

.field public static final ADD:I = 0x4

.field public static final BOOKMARKS:I = 0xb

.field public static final CAMERA:I = 0xf

.field public static final CANCEL:I = 0x1

.field public static final COMPOSE:I = 0x7

.field public static final CUSTOM:I = -0x1

.field public static final DONE:I = 0x0

.field public static final EDIT:I = 0x2

.field public static final FASTFORWARD:I = 0x14

.field public static final FIXED_SPACE:I = 0x6

.field public static final FLEXIBLE_SPACE:I = 0x5

.field public static final ORGANIZE:I = 0xa

.field public static final PAGECURL:I = 0x17

.field public static final PAUSE:I = 0x12

.field public static final PLAY:I = 0x11

.field public static final REDO:I = 0x16

.field public static final REFRESH:I = 0xd

.field public static final REPLY:I = 0x8

.field public static final REWIND:I = 0x13

.field public static final SAVE:I = 0x3

.field public static final SEARCH:I = 0xc

.field public static final STOP:I = 0xe

.field public static final TRASH:I = 0x10

.field public static final UNDO:I = 0x15


# instance fields
.field protected mButton:Landroid/widget/Button;

.field private mStyle:I

.field private mTitle:Ljava/lang/String;

.field protected mView:Lcom/apportable/ui/View;

.field private mWidth:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/BarItem;-><init>(Landroid/content/Context;I)V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mTitle:Ljava/lang/String;

    .line 51
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/apportable/ui/BarButtonItem;->mWidth:F

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/apportable/ui/BarButtonItem;->mStyle:I

    .line 58
    iput p2, p0, Lcom/apportable/ui/BarButtonItem;->mObject:I

    .line 59
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 61
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 62
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v7, [[I

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    aput v5, v3, v5

    aput-object v3, v2, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 75
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 76
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/apportable/ui/BarButtonItem$1;

    invoke-direct {v1, p0}, Lcom/apportable/ui/BarButtonItem$1;-><init>(Lcom/apportable/ui/BarButtonItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        -0x33000001    # -1.3421772E8f
        -0x1
    .end array-data
.end method

.method private _setStyle(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    :pswitch_0
    return-void

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, "Done"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :pswitch_3
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, "Edit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, "Save"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :pswitch_5
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080033

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 115
    :pswitch_6
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :pswitch_7
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :pswitch_8
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 128
    :pswitch_9
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080050

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 132
    :pswitch_a
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080051

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 136
    :pswitch_b
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 141
    :pswitch_c
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 145
    :pswitch_d
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x108004f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 149
    :pswitch_e
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 154
    :pswitch_f
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080038

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 158
    :pswitch_10
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080037

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 162
    :pswitch_11
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x108003c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 166
    :pswitch_12
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 170
    :pswitch_13
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 174
    :pswitch_14
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080025

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 178
    :pswitch_15
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const v1, 0x1080022

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 182
    :pswitch_16
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, "Undo"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    :pswitch_17
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, "Redo"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 190
    :pswitch_18
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/BarButtonItem;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/apportable/ui/BarButtonItem;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/BarButtonItem;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method protected native click(I)V
.end method

.method getLayout()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/apportable/ui/BarButtonItem;->mWidth:F

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mView:Lcom/apportable/ui/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mView:Lcom/apportable/ui/View;

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    goto :goto_0
.end method

.method public setCustomView(Lcom/apportable/ui/View;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/apportable/ui/BarButtonItem;->mView:Lcom/apportable/ui/View;

    .line 207
    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .prologue
    .line 219
    iput p1, p0, Lcom/apportable/ui/BarButtonItem;->mStyle:I

    .line 220
    invoke-direct {p0, p1}, Lcom/apportable/ui/BarButtonItem;->_setStyle(I)V

    .line 221
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/apportable/ui/BarButtonItem;->mTitle:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public setWidth(F)V
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 225
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/apportable/ui/BarButtonItem;->mWidth:F

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/apportable/ui/BarButtonItem;->getLayout()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void

    .line 227
    :cond_0
    iput p1, p0, Lcom/apportable/ui/BarButtonItem;->mWidth:F

    goto :goto_0
.end method
