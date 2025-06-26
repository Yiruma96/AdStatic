.class public Lcom/apportable/ui/Label$Shadow;
.super Ljava/lang/Object;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shadow"
.end annotation


# instance fields
.field color:I

.field dx:F

.field dy:F

.field r:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/apportable/ui/Label$Shadow;->r:F

    .line 46
    iput p2, p0, Lcom/apportable/ui/Label$Shadow;->dx:F

    .line 47
    iput p3, p0, Lcom/apportable/ui/Label$Shadow;->dy:F

    .line 48
    iput p4, p0, Lcom/apportable/ui/Label$Shadow;->color:I

    .line 49
    return-void
.end method
