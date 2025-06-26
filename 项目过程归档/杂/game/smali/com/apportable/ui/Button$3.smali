.class Lcom/apportable/ui/Button$3;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Button;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Button;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Button;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apportable/ui/Button;->sendEvent(I)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v2, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    # getter for: Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/apportable/ui/Button;->access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    # getter for: Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/apportable/ui/Button;->access$000(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    iget-object v2, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    # getter for: Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/apportable/ui/Button;->access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    # getter for: Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/apportable/ui/Button;->access$200(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    cmpg-float v2, v4, v0

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    invoke-virtual {v2}, Lcom/apportable/ui/Button;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v4, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    .line 127
    invoke-virtual {v0}, Lcom/apportable/ui/Button;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    # getter for: Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/Button;->access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    # getter for: Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/apportable/ui/Button;->access$200(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    # getter for: Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/Button;->access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    # getter for: Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/apportable/ui/Button;->access$000(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/apportable/ui/Button$3;->this$0:Lcom/apportable/ui/Button;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/apportable/ui/Button;->sendEvent(I)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
