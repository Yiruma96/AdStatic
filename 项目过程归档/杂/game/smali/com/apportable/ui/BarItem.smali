.class public Lcom/apportable/ui/BarItem;
.super Ljava/lang/Object;
.source "BarItem.java"


# instance fields
.field protected mObject:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/apportable/ui/BarItem;->mObject:I

    .line 21
    iput p2, p0, Lcom/apportable/ui/BarItem;->mObject:I

    .line 22
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/BarItem;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/apportable/ui/BarItem;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/BarItem;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method getLayout()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
