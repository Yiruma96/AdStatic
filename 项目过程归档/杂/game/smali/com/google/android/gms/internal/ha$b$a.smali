.class public final Lcom/google/android/gms/internal/ha$b$a;
.super Lcom/google/android/gms/internal/ee;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ha$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/he;

.field private static final zP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ee$a",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private Bo:I

.field private Bp:I

.field private final kZ:I

.field private final zQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/he;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ha$b$a;->CREATOR:Lcom/google/android/gms/internal/he;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ha$b$a;->zP:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/ha$b$a;->zP:Ljava/util/HashMap;

    const-string v1, "leftImageOffset"

    const-string v2, "leftImageOffset"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ee$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/ee$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ha$b$a;->zP:Ljava/util/HashMap;

    const-string v1, "topImageOffset"

    const-string v2, "topImageOffset"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ee$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/ee$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ee;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ha$b$a;->kZ:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ha$b$a;->zQ:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ee;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ha$b$a;->zQ:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/ha$b$a;->kZ:I

    iput p3, p0, Lcom/google/android/gms/internal/ha$b$a;->Bo:I

    iput p4, p0, Lcom/google/android/gms/internal/ha$b$a;->Bp:I

    return-void
.end method


# virtual methods
.method protected J(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected K(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/android/gms/internal/ee$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ha$b$a;->zQ:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ee$a;->bX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/ee$a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ee$a;->bX()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ee$a;->bX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/ha$b$a;->Bo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/ha$b$a;->Bp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bQ()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ee$a",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ha$b$a;->zP:Ljava/util/HashMap;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ha$b$a;->CREATOR:Lcom/google/android/gms/internal/he;

    const/4 v0, 0x0

    return v0
.end method

.method eF()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ha$b$a;->zQ:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/ha$b$a;

    if-nez v0, :cond_0

    move v0, v1

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ha$b$a;

    .end local p1    # "obj":Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gms/internal/ha$b$a;->zP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ee$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ha$b$a;->a(Lcom/google/android/gms/internal/ee$a;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ha$b$a;->a(Lcom/google/android/gms/internal/ee$a;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ha$b$a;->b(Lcom/google/android/gms/internal/ee$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ha$b$a;->b(Lcom/google/android/gms/internal/ee$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ha$b$a;->a(Lcom/google/android/gms/internal/ee$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public fm()Lcom/google/android/gms/internal/ha$b$a;
    .locals 0

    return-object p0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ha$b$a;->fm()Lcom/google/android/gms/internal/ha$b$a;

    move-result-object v0

    return-object v0
.end method

.method public getLeftImageOffset()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ha$b$a;->Bo:I

    return v0
.end method

.method public getTopImageOffset()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ha$b$a;->Bp:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ha$b$a;->kZ:I

    return v0
.end method

.method public hasLeftImageOffset()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ha$b$a;->zQ:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTopImageOffset()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ha$b$a;->zQ:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/ha$b$a;->zP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ee$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ha$b$a;->a(Lcom/google/android/gms/internal/ee$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->bX()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ha$b$a;->b(Lcom/google/android/gms/internal/ee$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/ha$b$a;->CREATOR:Lcom/google/android/gms/internal/he;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/he;->a(Lcom/google/android/gms/internal/ha$b$a;Landroid/os/Parcel;I)V

    return-void
.end method
