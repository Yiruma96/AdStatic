.class public Lcom/apportable/ui/AlertView;
.super Lcom/apportable/ui/View;
.source "AlertView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mButtonTitles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelButton:I

.field private mCancelTitle:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    .line 32
    iput-object v1, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;

    .line 34
    iput-object v1, p0, Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;

    .line 41
    invoke-direct {p0}, Lcom/apportable/ui/AlertView;->init()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    .line 32
    iput-object v1, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;

    .line 34
    iput-object v1, p0, Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;

    .line 46
    invoke-direct {p0}, Lcom/apportable/ui/AlertView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/AlertView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/AlertView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/apportable/ui/AlertView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/apportable/ui/AlertView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/ui/AlertView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/apportable/ui/AlertView;II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/AlertView;->nativeOnClick(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/apportable/ui/AlertView;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/apportable/ui/AlertView;->nativeOnDismiss(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/apportable/ui/AlertView;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/apportable/ui/AlertView;->nativeOnCancel(I)V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/AlertView;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/apportable/ui/AlertView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/AlertView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/AlertView;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/apportable/ui/AlertView;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/AlertView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method private native nativeOnCancel(I)V
.end method

.method private native nativeOnClick(II)V
.end method

.method private native nativeOnDismiss(I)V
.end method

.method private onClick(I)V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/apportable/ui/AlertView$3;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/AlertView$3;-><init>(Lcom/apportable/ui/AlertView;I)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method


# virtual methods
.method public addButtonWithTitle(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 159
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/AlertView$2;

    invoke-direct {v1, p0}, Lcom/apportable/ui/AlertView$2;-><init>(Lcom/apportable/ui/AlertView;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/apportable/ui/AlertView$5;

    invoke-direct {v0, p0}, Lcom/apportable/ui/AlertView$5;-><init>(Lcom/apportable/ui/AlertView;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 178
    const/4 v3, -0x1

    .line 179
    iget v2, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    .line 180
    iget-object v4, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    if-gez v4, :cond_0

    move v2, v1

    .line 182
    :cond_0
    packed-switch p2, :pswitch_data_0

    move v0, v3

    .line 193
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/apportable/ui/AlertView;->onClick(I)V

    .line 194
    return-void

    :pswitch_0
    move v0, v2

    .line 185
    goto :goto_0

    .line 187
    :pswitch_1
    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 190
    :pswitch_2
    if-eqz v2, :cond_2

    iget v1, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    if-ne v1, v0, :cond_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/apportable/ui/AlertView$4;

    invoke-direct {v0, p0}, Lcom/apportable/ui/AlertView$4;-><init>(Lcom/apportable/ui/AlertView;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public setCancelButtonIndex(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    .line 76
    return-void
.end method

.method public setCancelButtonTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    .line 93
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/AlertView$1;

    invoke-direct {v1, p0}, Lcom/apportable/ui/AlertView$1;-><init>(Lcom/apportable/ui/AlertView;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    :cond_0
    return-void
.end method
