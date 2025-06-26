.class public Lcom/flurry/sdk/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field protected static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/flurry/sdk/si;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected d:Lcom/flurry/sdk/sb;

.field protected e:Lcom/flurry/sdk/sa;

.field protected f:Lcom/flurry/sdk/hn;

.field protected g:I

.field protected h:I

.field protected i:Lcom/flurry/sdk/id;

.field protected j:Lcom/flurry/sdk/if;

.field protected k:Lcom/flurry/sdk/ik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/flurry/sdk/hj$a;->a()I

    move-result v0

    sput v0, Lcom/flurry/sdk/hd;->a:I

    .line 71
    invoke-static {}, Lcom/flurry/sdk/hf$a;->a()I

    move-result v0

    sput v0, Lcom/flurry/sdk/hd;->b:I

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/flurry/sdk/hd;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/hd;-><init>(Lcom/flurry/sdk/hn;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/hn;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/flurry/sdk/sb;->a()Lcom/flurry/sdk/sb;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hd;->d:Lcom/flurry/sdk/sb;

    .line 101
    invoke-static {}, Lcom/flurry/sdk/sa;->a()Lcom/flurry/sdk/sa;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hd;->e:Lcom/flurry/sdk/sa;

    .line 121
    sget v0, Lcom/flurry/sdk/hd;->a:I

    iput v0, p0, Lcom/flurry/sdk/hd;->g:I

    .line 126
    sget v0, Lcom/flurry/sdk/hd;->b:I

    iput v0, p0, Lcom/flurry/sdk/hd;->h:I

    .line 171
    iput-object p1, p0, Lcom/flurry/sdk/hd;->f:Lcom/flurry/sdk/hn;

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hj$a;)Lcom/flurry/sdk/hd;
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/flurry/sdk/hd;->g:I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj$a;->c()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/hd;->g:I

    .line 256
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/hn;)Lcom/flurry/sdk/hd;
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/flurry/sdk/hd;->f:Lcom/flurry/sdk/hn;

    .line 476
    return-object p0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/hc;)Lcom/flurry/sdk/hf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hd;->a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ie;

    move-result-object v1

    .line 677
    invoke-virtual {v1, p2}, Lcom/flurry/sdk/ie;->a(Lcom/flurry/sdk/hc;)V

    .line 678
    sget-object v0, Lcom/flurry/sdk/hc;->a:Lcom/flurry/sdk/hc;

    if-ne p2, v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/flurry/sdk/hd;->k:Lcom/flurry/sdk/ik;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/flurry/sdk/hd;->k:Lcom/flurry/sdk/ik;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ik;->a(Lcom/flurry/sdk/ie;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    .line 683
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/flurry/sdk/hd;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hf;

    move-result-object v0

    .line 690
    :goto_0
    return-object v0

    .line 685
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/sdk/hd;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/ie;)Ljava/io/Writer;

    move-result-object v0

    .line 687
    iget-object v2, p0, Lcom/flurry/sdk/hd;->k:Lcom/flurry/sdk/ik;

    if-eqz v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/flurry/sdk/hd;->k:Lcom/flurry/sdk/ik;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/ik;->a(Lcom/flurry/sdk/ie;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    .line 690
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hd;->a(Ljava/io/Writer;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hf;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/io/OutputStream;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    new-instance v0, Lcom/flurry/sdk/hz;

    iget v1, p0, Lcom/flurry/sdk/hd;->h:I

    iget-object v2, p0, Lcom/flurry/sdk/hd;->f:Lcom/flurry/sdk/hn;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/flurry/sdk/hz;-><init>(Lcom/flurry/sdk/ie;ILcom/flurry/sdk/hn;Ljava/io/OutputStream;)V

    .line 866
    iget-object v1, p0, Lcom/flurry/sdk/hd;->i:Lcom/flurry/sdk/id;

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/flurry/sdk/hd;->i:Lcom/flurry/sdk/id;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hz;->a(Lcom/flurry/sdk/id;)Lcom/flurry/sdk/hf;

    .line 869
    :cond_0
    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/flurry/sdk/hf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hd;->a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ie;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/flurry/sdk/hd;->k:Lcom/flurry/sdk/ik;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/flurry/sdk/hd;->k:Lcom/flurry/sdk/ik;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/sdk/ik;->a(Lcom/flurry/sdk/ie;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p1

    .line 714
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hd;->a(Ljava/io/Writer;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hf;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Writer;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    new-instance v0, Lcom/flurry/sdk/ib;

    iget v1, p0, Lcom/flurry/sdk/hd;->h:I

    iget-object v2, p0, Lcom/flurry/sdk/hd;->f:Lcom/flurry/sdk/hn;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/flurry/sdk/ib;-><init>(Lcom/flurry/sdk/ie;ILcom/flurry/sdk/hn;Ljava/io/Writer;)V

    .line 846
    iget-object v1, p0, Lcom/flurry/sdk/hd;->i:Lcom/flurry/sdk/id;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/flurry/sdk/hd;->i:Lcom/flurry/sdk/id;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ib;->a(Lcom/flurry/sdk/id;)Lcom/flurry/sdk/hf;

    .line 849
    :cond_0
    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/hj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hd;->a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ie;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/flurry/sdk/hd;->j:Lcom/flurry/sdk/if;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/flurry/sdk/hd;->j:Lcom/flurry/sdk/if;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/ie;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 561
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hd;->a(Ljava/io/InputStream;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/InputStream;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hj;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Lcom/flurry/sdk/hr;

    invoke-direct {v0, p2, p1}, Lcom/flurry/sdk/hr;-><init>(Lcom/flurry/sdk/ie;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/flurry/sdk/hd;->g:I

    iget-object v2, p0, Lcom/flurry/sdk/hd;->f:Lcom/flurry/sdk/hn;

    iget-object v3, p0, Lcom/flurry/sdk/hd;->e:Lcom/flurry/sdk/sa;

    iget-object v4, p0, Lcom/flurry/sdk/hd;->d:Lcom/flurry/sdk/sb;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/hr;->a(ILcom/flurry/sdk/hn;Lcom/flurry/sdk/sa;Lcom/flurry/sdk/sb;)Lcom/flurry/sdk/hj;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Lcom/flurry/sdk/hj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hd;->a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ie;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/flurry/sdk/hd;->j:Lcom/flurry/sdk/if;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/flurry/sdk/hd;->j:Lcom/flurry/sdk/if;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/ie;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p1

    .line 586
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hd;->a(Ljava/io/Reader;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Reader;Lcom/flurry/sdk/ie;)Lcom/flurry/sdk/hj;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hi;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Lcom/flurry/sdk/hy;

    iget v2, p0, Lcom/flurry/sdk/hd;->g:I

    iget-object v4, p0, Lcom/flurry/sdk/hd;->f:Lcom/flurry/sdk/hn;

    iget-object v1, p0, Lcom/flurry/sdk/hd;->d:Lcom/flurry/sdk/sb;

    sget-object v3, Lcom/flurry/sdk/hj$a;->j:Lcom/flurry/sdk/hj$a;

    invoke-virtual {p0, v3}, Lcom/flurry/sdk/hd;->b(Lcom/flurry/sdk/hj$a;)Z

    move-result v3

    sget-object v5, Lcom/flurry/sdk/hj$a;->i:Lcom/flurry/sdk/hj$a;

    invoke-virtual {p0, v5}, Lcom/flurry/sdk/hd;->b(Lcom/flurry/sdk/hj$a;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/flurry/sdk/sb;->a(ZZ)Lcom/flurry/sdk/sb;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/hy;-><init>(Lcom/flurry/sdk/ie;ILjava/io/Reader;Lcom/flurry/sdk/hn;Lcom/flurry/sdk/sb;)V

    return-object v0
.end method

.method public a()Lcom/flurry/sdk/hn;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/flurry/sdk/hd;->f:Lcom/flurry/sdk/hn;

    return-object v0
.end method

.method protected a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ie;
    .locals 2

    .prologue
    .line 894
    new-instance v0, Lcom/flurry/sdk/ie;

    invoke-virtual {p0}, Lcom/flurry/sdk/hd;->b()Lcom/flurry/sdk/si;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/flurry/sdk/ie;-><init>(Lcom/flurry/sdk/si;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected a(Ljava/io/OutputStream;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/ie;)Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    sget-object v0, Lcom/flurry/sdk/hc;->a:Lcom/flurry/sdk/hc;

    if-ne p2, v0, :cond_0

    .line 876
    new-instance v0, Lcom/flurry/sdk/io;

    invoke-direct {v0, p3, p1}, Lcom/flurry/sdk/io;-><init>(Lcom/flurry/sdk/ie;Ljava/io/OutputStream;)V

    .line 879
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Lcom/flurry/sdk/si;
    .locals 3

    .prologue
    .line 905
    sget-object v0, Lcom/flurry/sdk/hd;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 906
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 908
    :goto_0
    if-nez v0, :cond_0

    .line 909
    new-instance v0, Lcom/flurry/sdk/si;

    invoke-direct {v0}, Lcom/flurry/sdk/si;-><init>()V

    .line 910
    sget-object v1, Lcom/flurry/sdk/hd;->c:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 912
    :cond_0
    return-object v0

    .line 906
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/si;

    goto :goto_0
.end method

.method public final b(Lcom/flurry/sdk/hj$a;)Z
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/flurry/sdk/hd;->g:I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj$a;->c()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
