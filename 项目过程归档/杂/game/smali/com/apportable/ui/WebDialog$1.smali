.class Lcom/apportable/ui/WebDialog$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebDialog;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebDialog;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 98
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$300(Lcom/apportable/ui/WebDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v2, Lcom/apportable/ui/WebDialog$ApportableWebView;

    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    iget-object v3, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/apportable/ui/WebDialog$ApportableWebView;-><init>(Lcom/apportable/ui/WebDialog;Landroid/content/Context;)V

    .line 102
    invoke-virtual {v2}, Lcom/apportable/ui/WebDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 103
    invoke-virtual {v2}, Lcom/apportable/ui/WebDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 104
    invoke-virtual {v2}, Lcom/apportable/ui/WebDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    invoke-virtual {v2}, Lcom/apportable/ui/WebDialog$ApportableWebView;->requestFocusFromTouch()Z

    .line 106
    new-instance v0, Lcom/apportable/ui/WebDialog$1$1;

    invoke-direct {v0, p0}, Lcom/apportable/ui/WebDialog$1$1;-><init>(Lcom/apportable/ui/WebDialog$1;)V

    invoke-virtual {v2, v0}, Lcom/apportable/ui/WebDialog$ApportableWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    new-instance v0, Lcom/apportable/ui/WebDialog$1$2;

    invoke-direct {v0, p0}, Lcom/apportable/ui/WebDialog$1$2;-><init>(Lcom/apportable/ui/WebDialog$1;)V

    invoke-virtual {v2, v0}, Lcom/apportable/ui/WebDialog$ApportableWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mURL:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$700(Lcom/apportable/ui/WebDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apportable/ui/WebDialog$ApportableWebView;->loadUrl(Ljava/lang/String;)V

    .line 154
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    new-instance v4, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v5}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x1010079

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    # setter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0, v4}, Lcom/apportable/ui/WebDialog;->access$602(Lcom/apportable/ui/WebDialog;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 156
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 157
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget-object v4, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v5, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 165
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 168
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 169
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    invoke-virtual {v4, v3, v8, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 173
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v0, v0, -0x32

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v3, v3, -0x32

    invoke-virtual {v4, v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 174
    const/4 v0, -0x2

    invoke-virtual {v4, v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 176
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    const-string v0, "Close"

    new-instance v2, Lcom/apportable/ui/WebDialog$1$3;

    invoke-direct {v2, p0}, Lcom/apportable/ui/WebDialog$1$3;-><init>(Lcom/apportable/ui/WebDialog$1;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/apportable/ui/WebDialog;->access$802(Lcom/apportable/ui/WebDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 188
    return-void
.end method
