.class public Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;
.super Landroid/os/Binder;
.source "AudioManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/media/AudioManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioManagerServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/media/AudioManagerService;


# direct methods
.method public constructor <init>(Lcom/apportable/media/AudioManagerService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;->this$0:Lcom/apportable/media/AudioManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/apportable/media/AudioManagerService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;->this$0:Lcom/apportable/media/AudioManagerService;

    return-object v0
.end method
