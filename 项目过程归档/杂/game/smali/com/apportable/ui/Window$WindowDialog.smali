.class public Lcom/apportable/ui/Window$WindowDialog;
.super Landroid/app/Dialog;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowDialog"
.end annotation


# instance fields
.field private handledKeyEventDown:I

.field private mWindow:Lcom/apportable/ui/Window;

.field final synthetic this$0:Lcom/apportable/ui/Window;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/Window;Landroid/content/Context;Lcom/apportable/ui/Window;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lcom/apportable/ui/Window$WindowDialog;->this$0:Lcom/apportable/ui/Window;

    .line 79
    const v0, 0x1030011

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 80
    iput-object p3, p0, Lcom/apportable/ui/Window$WindowDialog;->mWindow:Lcom/apportable/ui/Window;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Window$WindowDialog;->setCancelable(Z)V

    .line 82
    return-void
.end method

.method static synthetic access$201(Lcom/apportable/ui/Window$WindowDialog;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 96
    :pswitch_0
    iget v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    # invokes: Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z
    invoke-static {v0}, Lcom/apportable/ui/Window;->access$100(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/apportable/ui/Window$WindowDialog;->this$0:Lcom/apportable/ui/Window;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/apportable/ui/Window;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_2
    :pswitch_1
    iget v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    if-lez v0, :cond_1

    .line 102
    iget v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    .line 103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    # invokes: Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z
    invoke-static {v0}, Lcom/apportable/ui/Window;->access$100(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/apportable/ui/Window$WindowDialog;->this$0:Lcom/apportable/ui/Window;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/apportable/ui/Window;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/apportable/ui/Window$WindowDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 87
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/apportable/ui/Window$WindowDialog;->mWindow:Lcom/apportable/ui/Window;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/Window;->motionEvent(Landroid/view/MotionEvent;)V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/apportable/ui/Window$WindowDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Window$WindowDialog$1;-><init>(Lcom/apportable/ui/Window$WindowDialog;Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
