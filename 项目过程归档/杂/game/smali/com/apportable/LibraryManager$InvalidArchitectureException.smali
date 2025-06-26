.class public Lcom/apportable/LibraryManager$InvalidArchitectureException;
.super Ljava/io/IOException;
.source "LibraryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/LibraryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidArchitectureException"
.end annotation


# instance fields
.field private mPackagedABIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedABIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/apportable/LibraryManager$InvalidArchitectureException;->mSupportedABIs:Ljava/util/ArrayList;

    .line 81
    iput-object p2, p0, Lcom/apportable/LibraryManager$InvalidArchitectureException;->mPackagedABIs:Ljava/util/ArrayList;

    .line 82
    return-void
.end method


# virtual methods
.method public getPackagedABIs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/apportable/LibraryManager$InvalidArchitectureException;->mPackagedABIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedABIs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/apportable/LibraryManager$InvalidArchitectureException;->mSupportedABIs:Ljava/util/ArrayList;

    return-object v0
.end method
