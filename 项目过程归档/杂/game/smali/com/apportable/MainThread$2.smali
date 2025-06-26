.class final Lcom/apportable/MainThread$2;
.super Ljava/lang/Object;
.source "MainThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/MainThread;->goNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 83
    # invokes: Lcom/apportable/MainThread;->nativeRun()V
    invoke-static {}, Lcom/apportable/MainThread;->access$100()V

    .line 84
    return-void
.end method
