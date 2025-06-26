.class Lcom/apportable/ui/Window$2;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Window;->makeKeyAndOrderFront()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousHeight:I

.field final synthetic this$0:Lcom/apportable/ui/Window;

.field final synthetic val$layout:Lcom/apportable/ui/Window$WindowLayout;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Window;Lcom/apportable/ui/Window$WindowLayout;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Lcom/apportable/ui/Window$2;->this$0:Lcom/apportable/ui/Window;

    iput-object p2, p0, Lcom/apportable/ui/Window$2;->val$layout:Lcom/apportable/ui/Window$WindowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/apportable/ui/Window$2;->previousHeight:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 266
    iget-object v1, p0, Lcom/apportable/ui/Window$2;->val$layout:Lcom/apportable/ui/Window$WindowLayout;

    invoke-virtual {v1, v0}, Lcom/apportable/ui/Window$WindowLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 267
    iget-object v1, p0, Lcom/apportable/ui/Window$2;->val$layout:Lcom/apportable/ui/Window$WindowLayout;

    invoke-virtual {v1}, Lcom/apportable/ui/Window$WindowLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    sub-int v0, v1, v0

    .line 269
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :cond_0
    iget v1, p0, Lcom/apportable/ui/Window$2;->previousHeight:I

    if-eq v0, v1, :cond_1

    .line 273
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    iget v2, p0, Lcom/apportable/ui/Window$2;->previousHeight:I

    invoke-virtual {v1, v2, v0}, Lcom/apportable/activity/VerdeActivity;->onSoftKeyboardChanged(II)V

    .line 274
    iput v0, p0, Lcom/apportable/ui/Window$2;->previousHeight:I

    .line 278
    :cond_1
    return-void
.end method
