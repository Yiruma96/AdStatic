.class Lcom/apportable/ui/Control;
.super Lcom/apportable/ui/View;
.source "Control.java"


# static fields
.field public static final EDITING_CHANGED_EVENT:I = 0x20000

.field public static final EDITING_DIDBEGIN_EVENT:I = 0x10000

.field public static final EDITING_DIDENDONEXIT_EVENT:I = 0x80000

.field public static final EDITING_DIDEND_EVENT:I = 0x40000

.field public static final NSTextAlignmentCenter:I = 0x1

.field public static final NSTextAlignmentJustified:I = 0x3

.field public static final NSTextAlignmentLeft:I = 0x0

.field public static final NSTextAlignmentNatural:I = 0x4

.field public static final NSTextAlignmentRight:I = 0x2

.field public static final TOUCH_CANCEL_EVENT:I = 0x100

.field public static final TOUCH_DOWNREPEAT_EVENT:I = 0x2

.field public static final TOUCH_DOWN_EVENT:I = 0x1

.field public static final TOUCH_DRAGENTER_EVENT:I = 0x10

.field public static final TOUCH_DRAGEXIT_EVENT:I = 0x20

.field public static final TOUCH_DRAGINSIDE_EVENT:I = 0x4

.field public static final TOUCH_DRAGOUTSIDE_EVENT:I = 0x8

.field public static final TOUCH_UPINSIDE_EVENT:I = 0x40

.field public static final TOUCH_UPOUTSIDE_EVENT:I = 0x80

.field public static final UICONTROLSTATE_DISABLED:I = 0x2

.field public static final UICONTROLSTATE_HIGHLIGHTED:I = 0x1

.field public static final UICONTROLSTATE_NORMAL:I = 0x0

.field public static final UICONTROLSTATE_SELECTED:I = 0x4

.field public static final VALUE_CHANGED_EVENT:I = 0x1000


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 53
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Control;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/apportable/ui/Control;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Control;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/apportable/ui/Control;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method


# virtual methods
.method protected native event(II)V
.end method

.method protected sendEvent(I)V
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/apportable/ui/Control;->mObject:I

    invoke-virtual {p0, v0, p1}, Lcom/apportable/ui/Control;->event(II)V

    .line 65
    return-void
.end method
