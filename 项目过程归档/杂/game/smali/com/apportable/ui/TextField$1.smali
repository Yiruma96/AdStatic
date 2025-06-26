.class Lcom/apportable/ui/TextField$1;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/TextField;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextField;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 478
    iget-object v0, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v0}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->isFirstResponder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->getWidth()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 481
    iget-object v0, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->getHeight()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-float v5, v8

    int-to-float v6, v9

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-float v5, v8

    int-to-float v6, v9

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusable(Z)V

    .line 485
    iget-object v1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusableInTouchMode(Z)V

    .line 486
    iget-object v1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/apportable/ui/TextField$TextFieldLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 487
    iget-object v1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 488
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 491
    :cond_0
    return-void
.end method
