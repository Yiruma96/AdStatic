.class Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelFileDescriptorWithMimeType"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2249
    new-instance v0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;

    invoke-direct {v0}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;-><init>()V

    sput-object v0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->mimeType:Ljava/lang/String;

    .line 2267
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2268
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/Request$1;)V
    .locals 0

    .prologue
    .line 2227
    invoke-direct {p0, p1}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2261
    iput-object p2, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->mimeType:Ljava/lang/String;

    .line 2262
    iput-object p1, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2263
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2240
    const/4 v0, 0x1

    return v0
.end method

.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2246
    return-void
.end method
