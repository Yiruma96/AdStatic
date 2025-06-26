.class Lcom/apportable/ui/AlertView$1;
.super Ljava/lang/Object;
.source "AlertView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/AlertView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/AlertView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/AlertView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v4, 0x0

    .line 96
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v1}, Lcom/apportable/ui/AlertView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v2, v0

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$000(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$100(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$100(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v0}, Lcom/apportable/ui/AlertView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 109
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v0}, Lcom/apportable/ui/AlertView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v3, v4

    move v5, v4

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v0}, Lcom/apportable/ui/AlertView;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v0, v3}, Lcom/apportable/ui/AlertView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apportable/ui/View;

    .line 114
    instance-of v1, v0, Lcom/apportable/ui/TextField;

    if-eqz v1, :cond_a

    .line 115
    check-cast v0, Lcom/apportable/ui/TextField;

    .line 116
    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->getLayer()Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v8

    .line 117
    invoke-virtual {v8}, Lcom/apportable/ui/TextField$TextFieldLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 118
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    :cond_1
    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->getLayer()Lcom/apportable/ui/TextField$TextFieldLayer;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    add-int/lit8 v1, v5, 0x1

    .line 124
    :goto_2
    if-lt v1, v11, :cond_8

    .line 128
    :cond_2
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/apportable/ui/AlertView;->access$202(Lcom/apportable/ui/AlertView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 131
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 132
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 133
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$300(Lcom/apportable/ui/AlertView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 139
    iget-object v2, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v2, v10, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 142
    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    move v4, v6

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$400(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/apportable/ui/AlertView;->access$400(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v0, v9, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 152
    return-void

    .line 100
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v1}, Lcom/apportable/ui/AlertView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    goto/16 :goto_0

    .line 112
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v1

    goto/16 :goto_1

    .line 147
    :cond_9
    if-nez v4, :cond_6

    .line 148
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "Ok"

    iget-object v2, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    invoke-virtual {v0, v9, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_a
    move v1, v5

    goto/16 :goto_2
.end method
