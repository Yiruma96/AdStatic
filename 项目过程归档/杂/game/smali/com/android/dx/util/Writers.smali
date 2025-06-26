.class public final Lcom/android/dx/util/Writers;
.super Ljava/lang/Object;
.source "Writers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static printWriterFor(Ljava/io/Writer;)Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 42
    instance-of v0, p0, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Ljava/io/PrintWriter;

    .line 46
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p0, v0

    goto :goto_0
.end method
