.class final Lcom/apportable/Lifecycle$1;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/Lifecycle;->onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->primaryContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->hide(Landroid/widget/FrameLayout;)V

    .line 283
    return-void
.end method
