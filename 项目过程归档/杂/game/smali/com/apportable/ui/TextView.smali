.class Lcom/apportable/ui/TextView;
.super Lcom/apportable/ui/View;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/TextView$EditText;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDisableChangeCallbacks:Z

.field private mEditable:Z

.field private mFontSize:F

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextView:Lcom/apportable/ui/TextView$EditText;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 29
    const-string v0, "TextView"

    iput-object v0, p0, Lcom/apportable/ui/TextView;->TAG:Ljava/lang/String;

    .line 145
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/apportable/ui/TextView;->mTypeface:Landroid/graphics/Typeface;

    .line 146
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/apportable/ui/TextView;->mFontSize:F

    .line 147
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/apportable/ui/TextView;->mTextColor:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mEditable:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    .line 175
    invoke-direct {p0}, Lcom/apportable/ui/TextView;->init()V

    .line 176
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 29
    const-string v0, "TextView"

    iput-object v0, p0, Lcom/apportable/ui/TextView;->TAG:Ljava/lang/String;

    .line 145
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/apportable/ui/TextView;->mTypeface:Landroid/graphics/Typeface;

    .line 146
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/apportable/ui/TextView;->mFontSize:F

    .line 147
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/apportable/ui/TextView;->mTextColor:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mEditable:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    .line 180
    invoke-direct {p0}, Lcom/apportable/ui/TextView;->init()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/TextView;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextView;->actionBarWillShow(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/apportable/ui/TextView;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextView;->actionBarWillHide(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/apportable/ui/TextView;III)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/TextView;->selectionChange(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/apportable/ui/TextView;ILjava/lang/String;II)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apportable/ui/TextView;->textShouldChange(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/apportable/ui/TextView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/TextView;->textDidChange(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/apportable/ui/TextView;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/apportable/ui/TextView;->didBeginEditing()V

    return-void
.end method

.method static synthetic access$600(Lcom/apportable/ui/TextView;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    return v0
.end method

.method static synthetic access$700(Lcom/apportable/ui/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/apportable/ui/TextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/apportable/ui/TextView;)Lcom/apportable/ui/TextView$EditText;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/apportable/ui/TextView;ILjava/lang/String;III)V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/apportable/ui/TextView;->textWillChange(ILjava/lang/String;III)V

    return-void
.end method

.method private native actionBarWillHide(I)V
.end method

.method private native actionBarWillShow(I)V
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/TextView;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/apportable/ui/TextView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/TextView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/TextView;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/apportable/ui/TextView;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/TextView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private native didBeginEditing()V
.end method

.method private init()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/apportable/ui/TextView$1;

    invoke-virtual {p0}, Lcom/apportable/ui/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/apportable/ui/TextView$1;-><init>(Lcom/apportable/ui/TextView;Landroid/content/Context;Lcom/apportable/ui/TextView;)V

    iput-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    .line 167
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextView$EditText;->setGravity(I)V

    .line 169
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextView;->setContentView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method private native selectionChange(III)V
.end method

.method private native textDidChange(ILjava/lang/String;)V
.end method

.method private native textShouldChange(ILjava/lang/String;II)Z
.end method

.method private native textWillChange(ILjava/lang/String;III)V
.end method


# virtual methods
.method public _setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->_setBackgroundColor(I)V

    .line 203
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setBackgroundColor(I)V

    .line 204
    return-void
.end method

.method public becomeFirstResponder()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0}, Lcom/apportable/ui/TextView$EditText;->becomeFirstResponder()V

    .line 243
    :cond_0
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/apportable/ui/TextView;->mTextColor:I

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/apportable/ui/TextView;->mEditable:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    new-instance v1, Lcom/apportable/ui/TextView$2;

    invoke-direct {v1, p0}, Lcom/apportable/ui/TextView$2;-><init>(Lcom/apportable/ui/TextView;)V

    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextView$EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 282
    const/4 v1, 0x0

    new-instance v2, Lcom/apportable/ui/TextView$3;

    invoke-direct {v2, p0}, Lcom/apportable/ui/TextView$3;-><init>(Lcom/apportable/ui/TextView;)V

    aput-object v2, v0, v1

    .line 292
    iget-object v1, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v1, v0}, Lcom/apportable/ui/TextView$EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 293
    return-void
.end method

.method public resignFirstResponder()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0}, Lcom/apportable/ui/TextView$EditText;->resignFirstResponder()V

    .line 249
    :cond_0
    return-void
.end method

.method public setEditable(Z)V
    .locals 2

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/apportable/ui/TextView;->mEditable:Z

    .line 221
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setClickable(Z)V

    .line 222
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setLongClickable(Z)V

    .line 223
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setFocusable(Z)V

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    .line 226
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setTextIsSelectable(Z)V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    .line 229
    :cond_0
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;F)V
    .locals 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/apportable/ui/TextView;->mTypeface:Landroid/graphics/Typeface;

    .line 195
    iput p2, p0, Lcom/apportable/ui/TextView;->mFontSize:F

    .line 196
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/apportable/ui/TextView$EditText;->setTextSize(IF)V

    .line 197
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 198
    return-void
.end method

.method protected setMaxLines(I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setMaxLines(I)V

    .line 237
    return-void
.end method

.method public setSelection(II)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1, p2}, Lcom/apportable/ui/TextView$EditText;->setSelection(II)V

    .line 208
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    iput-object p1, p0, Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 211
    iput p1, p0, Lcom/apportable/ui/TextView;->mTextColor:I

    .line 212
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setTextColor(I)V

    .line 213
    return-void
.end method
