.class public Lcom/apportable/media/ScannerClient;
.super Ljava/lang/Object;
.source "ScannerClient.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onMediaScannerConnected()V
.end method

.method public native onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end method
