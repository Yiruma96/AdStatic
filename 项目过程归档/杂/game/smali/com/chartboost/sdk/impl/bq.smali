.class public final Lcom/chartboost/sdk/impl/bq;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/f$a;

.field private b:Lcom/chartboost/sdk/impl/bj;

.field private c:Lcom/chartboost/sdk/impl/bj;

.field private d:Lcom/chartboost/sdk/impl/bp;

.field private e:Lcom/chartboost/sdk/Model/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->e:Lcom/chartboost/sdk/Model/a;

    .line 23
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bq;->e:Lcom/chartboost/sdk/Model/a;

    .line 24
    new-instance v0, Lcom/chartboost/sdk/impl/bj;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->b:Lcom/chartboost/sdk/impl/bj;

    .line 25
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->b:Lcom/chartboost/sdk/impl/bj;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v0, Lcom/chartboost/sdk/impl/bj;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->c:Lcom/chartboost/sdk/impl/bj;

    .line 28
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->c:Lcom/chartboost/sdk/impl/bj;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->c:Lcom/chartboost/sdk/impl/bj;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bj;->setVisibility(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->a:Lcom/chartboost/sdk/f$a;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->l()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->a:Lcom/chartboost/sdk/f$a;

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->a:Lcom/chartboost/sdk/f$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->a:Lcom/chartboost/sdk/f$a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->a:Lcom/chartboost/sdk/f$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->a()V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bq;->c()V

    .line 43
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->e:Lcom/chartboost/sdk/Model/a;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/a;->k:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->e:Lcom/chartboost/sdk/Model/a;

    iput-boolean v1, v3, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 48
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    if-nez v3, :cond_2

    .line 49
    new-instance v3, Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bq;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/chartboost/sdk/impl/bp;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    .line 50
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/impl/bp;->setVisibility(I)V

    .line 51
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/bq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bq;->g()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/bp;->setVisibility(I)V

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bq;->e()Lcom/chartboost/sdk/impl/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bj;->a()V

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/bi;->a(ZLandroid/view/View;)V

    .line 69
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 46
    goto :goto_0

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->c:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bj;->bringToFront()V

    .line 55
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->c:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/bj;->setVisibility(I)V

    .line 56
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->c:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bj;->a()V

    .line 57
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->b:Lcom/chartboost/sdk/impl/bj;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/bi;->a(ZLandroid/view/View;)V

    .line 58
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bp;->bringToFront()V

    .line 59
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bp;->a()V

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bp;->clearAnimation()V

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bp;->setVisibility(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public e()Lcom/chartboost/sdk/impl/bj;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->b:Lcom/chartboost/sdk/impl/bj;

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->a:Lcom/chartboost/sdk/f$a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->d:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bp;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method
