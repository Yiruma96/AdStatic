.class Lcom/google/android/gms/appstate/AppStateClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateClient;->listStates(Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V
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
        "Lcom/google/android/gms/appstate/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jw:Lcom/google/android/gms/appstate/AppStateClient;

.field final synthetic jx:Lcom/google/android/gms/appstate/OnStateListLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appstate/AppStateClient;Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateClient$2;->jw:Lcom/google/android/gms/appstate/AppStateClient;

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateClient$2;->jx:Lcom/google/android/gms/appstate/OnStateListLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appstate/b$c;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient$2;->jx:Lcom/google/android/gms/appstate/OnStateListLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/b$c;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/gms/appstate/b$c;->aN()Lcom/google/android/gms/appstate/AppStateBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/appstate/OnStateListLoadedListener;->onStateListLoaded(ILcom/google/android/gms/appstate/AppStateBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/appstate/b$c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateClient$2;->a(Lcom/google/android/gms/appstate/b$c;)V

    return-void
.end method
