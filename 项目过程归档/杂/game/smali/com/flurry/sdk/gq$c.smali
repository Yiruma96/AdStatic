.class public Lcom/flurry/sdk/gq$c;
.super Lcom/flurry/sdk/gq$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final z:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gq$h;-><init>(I)V

    .line 416
    iput-object p2, p0, Lcom/flurry/sdk/gq$c;->z:[Ljava/lang/Object;

    .line 417
    return-void
.end method
