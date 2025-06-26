.class public Lcom/apportable/ui/Window$WindowLayout;
.super Landroid/widget/FrameLayout;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Window;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/Window;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/apportable/ui/Window$WindowLayout;->this$0:Lcom/apportable/ui/Window;

    .line 60
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method
