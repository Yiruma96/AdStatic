.class Lcom/google/android/gms/panorama/PanoramaClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/panorama/PanoramaClient;->loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/panorama/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zd:Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;

.field final synthetic ze:Lcom/google/android/gms/panorama/PanoramaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/PanoramaClient;Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/panorama/PanoramaClient$2;->ze:Lcom/google/android/gms/panorama/PanoramaClient;

    iput-object p2, p0, Lcom/google/android/gms/panorama/PanoramaClient$2;->zd:Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/panorama/a$b;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient$2;->zd:Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/panorama/a$b;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->bh()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/panorama/a$b;->eo()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;->onPanoramaInfoLoaded(Lcom/google/android/gms/common/ConnectionResult;Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/panorama/a$b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/panorama/PanoramaClient$2;->a(Lcom/google/android/gms/panorama/a$b;)V

    return-void
.end method
