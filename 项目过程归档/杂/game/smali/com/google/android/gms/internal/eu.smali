.class public Lcom/google/android/gms/internal/eu;
.super Ljava/lang/Object;


# static fields
.field public static final oX:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final oY:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final oZ:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final pa:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "modified"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/eu;->oX:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/eu;->oY:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "created"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/eu;->oZ:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/eu;->pa:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    return-void
.end method
