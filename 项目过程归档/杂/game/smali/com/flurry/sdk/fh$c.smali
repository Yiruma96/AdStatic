.class public final Lcom/flurry/sdk/fh$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fh;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/fh;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1

    .prologue
    .line 675
    iput-object p1, p0, Lcom/flurry/sdk/fh$c;->a:Lcom/flurry/sdk/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/flurry/sdk/fh$c;->b:Ljava/lang/String;

    .line 677
    iput-wide p3, p0, Lcom/flurry/sdk/fh$c;->c:J

    .line 678
    iput-object p5, p0, Lcom/flurry/sdk/fh$c;->d:[Ljava/io/InputStream;

    .line 679
    iput-object p6, p0, Lcom/flurry/sdk/fh$c;->e:[J

    .line 680
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fh;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/flurry/sdk/fh$1;)V
    .locals 1

    .prologue
    .line 669
    invoke-direct/range {p0 .. p6}, Lcom/flurry/sdk/fh$c;-><init>(Lcom/flurry/sdk/fh;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/flurry/sdk/fh$c;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 707
    iget-object v1, p0, Lcom/flurry/sdk/fh$c;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 708
    invoke-static {v3}, Lcom/flurry/sdk/fj;->a(Ljava/io/Closeable;)V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    return-void
.end method
