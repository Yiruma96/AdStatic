.class Lcom/apportable/ui/Switch;
.super Lcom/apportable/ui/Control;
.source "Switch.java"


# instance fields
.field private mChecked:Z

.field private mSwitch:Landroid/widget/CheckBox;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    .line 36
    invoke-direct {p0}, Lcom/apportable/ui/Switch;->init()V

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    .line 41
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    .line 42
    invoke-direct {p0}, Lcom/apportable/ui/Switch;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/Switch;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/Switch;)Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/apportable/ui/Switch;Z)Z
    .locals 0

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    return p1
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Switch;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/apportable/ui/Switch;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Switch;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Switch;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/apportable/ui/Switch;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Switch;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/apportable/ui/Switch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    .line 22
    iget-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Switch;->setContentView(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    new-instance v1, Lcom/apportable/ui/Switch$1;

    invoke-direct {v1, p0}, Lcom/apportable/ui/Switch$1;-><init>(Lcom/apportable/ui/Switch;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    .line 48
    iget-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    return-void
.end method
