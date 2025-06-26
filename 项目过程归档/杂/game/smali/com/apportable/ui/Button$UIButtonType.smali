.class Lcom/apportable/ui/Button$UIButtonType;
.super Ljava/lang/Object;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIButtonType"
.end annotation


# static fields
.field static final UIButtonTypeContactAdd:I = 0x5

.field static final UIButtonTypeCustom:I = 0x0

.field static final UIButtonTypeDetailDisclosure:I = 0x2

.field static final UIButtonTypeInfoDark:I = 0x4

.field static final UIButtonTypeInfoLight:I = 0x3

.field static final UIButtonTypeRoundedRect:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Button;


# direct methods
.method private constructor <init>(Lcom/apportable/ui/Button;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/apportable/ui/Button$UIButtonType;->this$0:Lcom/apportable/ui/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
