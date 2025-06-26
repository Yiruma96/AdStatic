.class public Lcom/android/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"


# static fields
.field private static sServer:Lcom/android/ViewServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/ViewServer;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/ViewServer;->sServer:Lcom/android/ViewServer;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/android/ViewServer;

    invoke-direct {v0}, Lcom/android/ViewServer;-><init>()V

    sput-object v0, Lcom/android/ViewServer;->sServer:Lcom/android/ViewServer;

    .line 16
    :cond_0
    sget-object v0, Lcom/android/ViewServer;->sServer:Lcom/android/ViewServer;

    return-object v0
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
