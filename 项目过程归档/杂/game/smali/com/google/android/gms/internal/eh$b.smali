.class public Lcom/google/android/gms/internal/eh$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/eg;


# instance fields
.field final nL:Ljava/lang/String;

.field final nM:Lcom/google/android/gms/internal/ee$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ee$a",
            "<**>;"
        }
    .end annotation
.end field

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/eg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/eg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eh$b;->CREATOR:Lcom/google/android/gms/internal/eg;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ee$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ee$a",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/eh$b;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/eh$b;->nL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/eh$b;->nM:Lcom/google/android/gms/internal/ee$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ee$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ee$a",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/eh$b;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/eh$b;->nL:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/eh$b;->nM:Lcom/google/android/gms/internal/ee$a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/eh$b;->CREATOR:Lcom/google/android/gms/internal/eg;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/eh$b;->CREATOR:Lcom/google/android/gms/internal/eg;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/eg;->a(Lcom/google/android/gms/internal/eh$b;Landroid/os/Parcel;I)V

    return-void
.end method
