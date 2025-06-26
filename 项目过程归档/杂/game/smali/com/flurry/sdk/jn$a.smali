.class public Lcom/flurry/sdk/jn$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/iu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/iu",
            "<+",
            "Lcom/flurry/sdk/ir;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/flurry/sdk/iq;

.field protected final c:Lcom/flurry/sdk/ne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ne",
            "<*>;"
        }
    .end annotation
.end field

.field protected final d:Lcom/flurry/sdk/jr;

.field protected final e:Lcom/flurry/sdk/qs;

.field protected final f:Lcom/flurry/sdk/ni;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ni",
            "<*>;"
        }
    .end annotation
.end field

.field protected final g:Ljava/text/DateFormat;

.field protected final h:Lcom/flurry/sdk/je;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iq;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/ni;Ljava/text/DateFormat;Lcom/flurry/sdk/je;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iu",
            "<+",
            "Lcom/flurry/sdk/ir;",
            ">;",
            "Lcom/flurry/sdk/iq;",
            "Lcom/flurry/sdk/ne",
            "<*>;",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/qs;",
            "Lcom/flurry/sdk/ni",
            "<*>;",
            "Ljava/text/DateFormat;",
            "Lcom/flurry/sdk/je;",
            ")V"
        }
    .end annotation

    .prologue
    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput-object p1, p0, Lcom/flurry/sdk/jn$a;->a:Lcom/flurry/sdk/iu;

    .line 884
    iput-object p2, p0, Lcom/flurry/sdk/jn$a;->b:Lcom/flurry/sdk/iq;

    .line 885
    iput-object p3, p0, Lcom/flurry/sdk/jn$a;->c:Lcom/flurry/sdk/ne;

    .line 886
    iput-object p4, p0, Lcom/flurry/sdk/jn$a;->d:Lcom/flurry/sdk/jr;

    .line 887
    iput-object p5, p0, Lcom/flurry/sdk/jn$a;->e:Lcom/flurry/sdk/qs;

    .line 888
    iput-object p6, p0, Lcom/flurry/sdk/jn$a;->f:Lcom/flurry/sdk/ni;

    .line 889
    iput-object p7, p0, Lcom/flurry/sdk/jn$a;->g:Ljava/text/DateFormat;

    .line 890
    iput-object p8, p0, Lcom/flurry/sdk/jn$a;->h:Lcom/flurry/sdk/je;

    .line 891
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/iu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/iu",
            "<+",
            "Lcom/flurry/sdk/ir;",
            ">;"
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/flurry/sdk/jn$a;->a:Lcom/flurry/sdk/iu;

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/iq;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/flurry/sdk/jn$a;->b:Lcom/flurry/sdk/iq;

    return-object v0
.end method

.method public c()Lcom/flurry/sdk/ne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/ne",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/flurry/sdk/jn$a;->c:Lcom/flurry/sdk/ne;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/jr;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/flurry/sdk/jn$a;->d:Lcom/flurry/sdk/jr;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/qs;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/flurry/sdk/jn$a;->e:Lcom/flurry/sdk/qs;

    return-object v0
.end method

.method public f()Lcom/flurry/sdk/ni;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/ni",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lcom/flurry/sdk/jn$a;->f:Lcom/flurry/sdk/ni;

    return-object v0
.end method

.method public g()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/flurry/sdk/jn$a;->g:Ljava/text/DateFormat;

    return-object v0
.end method

.method public h()Lcom/flurry/sdk/je;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/flurry/sdk/jn$a;->h:Lcom/flurry/sdk/je;

    return-object v0
.end method
