.class public Lcom/apportable/gl/SurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "SurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 22
    invoke-virtual {p0, p0}, Lcom/apportable/gl/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getTransformMatrix([F)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 30
    return-void
.end method

.method public native onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method
