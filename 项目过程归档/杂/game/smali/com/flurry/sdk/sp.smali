.class public final Lcom/flurry/sdk/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[C


# instance fields
.field private final b:Lcom/flurry/sdk/si;

.field private c:[C

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:[C

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/flurry/sdk/sp;->a:[C

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/si;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/sp;->g:Z

    .line 122
    iput-object p1, p0, Lcom/flurry/sdk/sp;->b:Lcom/flurry/sdk/si;

    .line 123
    return-void
.end method

.method private final b(I)[C
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/flurry/sdk/sp;->b:Lcom/flurry/sdk/si;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/flurry/sdk/sp;->b:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$b;->c:Lcom/flurry/sdk/si$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$b;I)[C

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private c(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 625
    iget v0, p0, Lcom/flurry/sdk/sp;->e:I

    .line 626
    iput v5, p0, Lcom/flurry/sdk/sp;->e:I

    .line 627
    iget-object v1, p0, Lcom/flurry/sdk/sp;->c:[C

    .line 628
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/sdk/sp;->c:[C

    .line 629
    iget v2, p0, Lcom/flurry/sdk/sp;->d:I

    .line 630
    const/4 v3, -0x1

    iput v3, p0, Lcom/flurry/sdk/sp;->d:I

    .line 633
    add-int v3, v0, p1

    .line 634
    iget-object v4, p0, Lcom/flurry/sdk/sp;->i:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/flurry/sdk/sp;->i:[C

    array-length v4, v4

    if-le v3, v4, :cond_1

    .line 635
    :cond_0
    invoke-direct {p0, v3}, Lcom/flurry/sdk/sp;->b(I)[C

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 637
    :cond_1
    if-lez v0, :cond_2

    .line 638
    iget-object v3, p0, Lcom/flurry/sdk/sp;->i:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    :cond_2
    iput v5, p0, Lcom/flurry/sdk/sp;->h:I

    .line 641
    iput v0, p0, Lcom/flurry/sdk/sp;->j:I

    .line 642
    return-void
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 655
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/sp;->g:Z

    .line 656
    iget-object v1, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget v1, p0, Lcom/flurry/sdk/sp;->h:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/flurry/sdk/sp;->h:I

    .line 658
    array-length v1, v0

    .line 660
    shr-int/lit8 v0, v1, 0x1

    .line 661
    if-ge v0, p1, :cond_1

    .line 664
    :goto_0
    const/high16 v0, 0x40000

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/sp;->e(I)[C

    move-result-object v0

    .line 665
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/sdk/sp;->j:I

    .line 666
    iput-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 667
    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method private final e(I)[C
    .locals 1

    .prologue
    .line 705
    new-array v0, p1, [C

    return-object v0
.end method

.method private final o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lcom/flurry/sdk/sp;->g:Z

    .line 250
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v1, p0, Lcom/flurry/sdk/sp;->h:I

    iput v1, p0, Lcom/flurry/sdk/sp;->j:I

    .line 252
    return-void
.end method

.method private p()[C
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 671
    iget-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 701
    :goto_0
    return-object v0

    .line 677
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_2

    .line 678
    iget v0, p0, Lcom/flurry/sdk/sp;->e:I

    if-ge v0, v1, :cond_1

    .line 679
    sget-object v0, Lcom/flurry/sdk/sp;->a:[C

    goto :goto_0

    .line 681
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/sp;->e:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/sp;->e(I)[C

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/flurry/sdk/sp;->c:[C

    iget v3, p0, Lcom/flurry/sdk/sp;->d:I

    iget v4, p0, Lcom/flurry/sdk/sp;->e:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 685
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/sp;->c()I

    move-result v0

    .line 686
    if-ge v0, v1, :cond_3

    .line 687
    sget-object v0, Lcom/flurry/sdk/sp;->a:[C

    goto :goto_0

    .line 690
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/sp;->e(I)[C

    move-result-object v3

    .line 691
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 692
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    move v1, v2

    :goto_1
    if-ge v4, v5, :cond_4

    .line 693
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 694
    array-length v6, v0

    .line 695
    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    add-int/2addr v1, v6

    .line 692
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 699
    :goto_2
    iget-object v1, p0, Lcom/flurry/sdk/sp;->i:[C

    iget v4, p0, Lcom/flurry/sdk/sp;->j:I

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/sp;->b:Lcom/flurry/sdk/si;

    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/flurry/sdk/sp;->b()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/flurry/sdk/sp;->b()V

    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 145
    iget-object v1, p0, Lcom/flurry/sdk/sp;->b:Lcom/flurry/sdk/si;

    sget-object v2, Lcom/flurry/sdk/si$b;->c:Lcom/flurry/sdk/si$b;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$b;[C)V

    goto :goto_0
.end method

.method public a(C)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 430
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_0

    .line 431
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/flurry/sdk/sp;->c(I)V

    .line 433
    :cond_0
    iput-object v1, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 434
    iput-object v1, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 436
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 437
    iget v1, p0, Lcom/flurry/sdk/sp;->j:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/sdk/sp;->d(I)V

    .line 439
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 441
    :cond_1
    iget v1, p0, Lcom/flurry/sdk/sp;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/sp;->j:I

    aput-char p1, v0, v1

    .line 442
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 559
    iput p1, p0, Lcom/flurry/sdk/sp;->j:I

    .line 560
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iput-object v2, p0, Lcom/flurry/sdk/sp;->c:[C

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/sp;->d:I

    .line 216
    iput v1, p0, Lcom/flurry/sdk/sp;->e:I

    .line 218
    iput-object p1, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 221
    iget-boolean v0, p0, Lcom/flurry/sdk/sp;->g:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/flurry/sdk/sp;->o()V

    .line 224
    :cond_0
    iput v1, p0, Lcom/flurry/sdk/sp;->j:I

    .line 226
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 478
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_0

    .line 479
    invoke-direct {p0, p3}, Lcom/flurry/sdk/sp;->c(I)V

    .line 481
    :cond_0
    iput-object v1, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 482
    iput-object v1, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 485
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 486
    array-length v1, v0

    iget v2, p0, Lcom/flurry/sdk/sp;->j:I

    sub-int/2addr v1, v2

    .line 487
    if-lt v1, p3, :cond_1

    .line 488
    add-int v1, p2, p3

    iget v2, p0, Lcom/flurry/sdk/sp;->j:I

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 489
    iget v0, p0, Lcom/flurry/sdk/sp;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/flurry/sdk/sp;->j:I

    .line 504
    :goto_0
    return-void

    .line 492
    :cond_1
    if-lez v1, :cond_2

    .line 493
    add-int v2, p2, v1

    iget v3, p0, Lcom/flurry/sdk/sp;->j:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 494
    sub-int/2addr p3, v1

    .line 495
    add-int/2addr p2, v1

    .line 500
    :cond_2
    invoke-direct {p0, p3}, Lcom/flurry/sdk/sp;->d(I)V

    .line 501
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/flurry/sdk/sp;->i:[C

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 502
    iput p3, p0, Lcom/flurry/sdk/sp;->j:I

    goto :goto_0
.end method

.method public a([CII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 183
    iput-object p1, p0, Lcom/flurry/sdk/sp;->c:[C

    .line 184
    iput p2, p0, Lcom/flurry/sdk/sp;->d:I

    .line 185
    iput p3, p0, Lcom/flurry/sdk/sp;->e:I

    .line 188
    iget-boolean v0, p0, Lcom/flurry/sdk/sp;->g:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/flurry/sdk/sp;->o()V

    .line 191
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/sp;->d:I

    .line 157
    iput v2, p0, Lcom/flurry/sdk/sp;->j:I

    .line 158
    iput v2, p0, Lcom/flurry/sdk/sp;->e:I

    .line 160
    iput-object v1, p0, Lcom/flurry/sdk/sp;->c:[C

    .line 161
    iput-object v1, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 165
    iget-boolean v0, p0, Lcom/flurry/sdk/sp;->g:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/flurry/sdk/sp;->o()V

    .line 168
    :cond_0
    return-void
.end method

.method public b([CII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lcom/flurry/sdk/sp;->c:[C

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/sp;->d:I

    .line 197
    iput v2, p0, Lcom/flurry/sdk/sp;->e:I

    .line 199
    iput-object v1, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 203
    iget-boolean v0, p0, Lcom/flurry/sdk/sp;->g:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/flurry/sdk/sp;->o()V

    .line 208
    :cond_0
    :goto_0
    iput v2, p0, Lcom/flurry/sdk/sp;->h:I

    iput v2, p0, Lcom/flurry/sdk/sp;->j:I

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/sp;->c([CII)V

    .line 210
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p3}, Lcom/flurry/sdk/sp;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    goto :goto_0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lcom/flurry/sdk/sp;->e:I

    .line 274
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    array-length v0, v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/flurry/sdk/sp;->h:I

    iget v1, p0, Lcom/flurry/sdk/sp;->j:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public c([CII)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 447
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_0

    .line 448
    invoke-direct {p0, p3}, Lcom/flurry/sdk/sp;->c(I)V

    .line 450
    :cond_0
    iput-object v1, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 451
    iput-object v1, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 454
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 455
    array-length v1, v0

    iget v2, p0, Lcom/flurry/sdk/sp;->j:I

    sub-int/2addr v1, v2

    .line 457
    if-lt v1, p3, :cond_1

    .line 458
    iget v1, p0, Lcom/flurry/sdk/sp;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iget v0, p0, Lcom/flurry/sdk/sp;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/flurry/sdk/sp;->j:I

    .line 473
    :goto_0
    return-void

    .line 462
    :cond_1
    if-lez v1, :cond_2

    .line 463
    iget v2, p0, Lcom/flurry/sdk/sp;->j:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    add-int/2addr p2, v1

    .line 465
    sub-int/2addr p3, v1

    .line 469
    :cond_2
    invoke-direct {p0, p3}, Lcom/flurry/sdk/sp;->d(I)V

    .line 470
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iput p3, p0, Lcom/flurry/sdk/sp;->j:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()[C
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/flurry/sdk/sp;->c:[C

    .line 322
    :goto_0
    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    goto :goto_0

    .line 318
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/sp;->g:Z

    if-nez v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/sp;->g()[C

    move-result-object v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/sp;->l:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 367
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 339
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_3

    .line 340
    iget v0, p0, Lcom/flurry/sdk/sp;->e:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    goto :goto_1

    .line 343
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/sp;->c:[C

    iget v2, p0, Lcom/flurry/sdk/sp;->d:I

    iget v3, p0, Lcom/flurry/sdk/sp;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    goto :goto_0

    .line 346
    :cond_3
    iget v0, p0, Lcom/flurry/sdk/sp;->h:I

    .line 347
    iget v1, p0, Lcom/flurry/sdk/sp;->j:I

    .line 349
    if-nez v0, :cond_5

    .line 350
    if-nez v1, :cond_4

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/sp;->i:[C

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 352
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 355
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_6

    .line 356
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 357
    array-length v5, v0

    invoke-virtual {v3, v0, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    iget v1, p0, Lcom/flurry/sdk/sp;->j:I

    invoke-virtual {v3, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()[C
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 373
    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/flurry/sdk/sp;->p()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 376
    :cond_0
    return-object v0
.end method

.method public h()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/sdk/sp;->l:[C

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/sdk/sp;->l:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 399
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_1

    .line 392
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/sdk/sp;->c:[C

    iget v2, p0, Lcom/flurry/sdk/sp;->d:I

    iget v3, p0, Lcom/flurry/sdk/sp;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 395
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/sp;->h:I

    if-nez v0, :cond_2

    .line 396
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/sdk/sp;->i:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/flurry/sdk/sp;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 399
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/flurry/sdk/sp;->g()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public i()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/flurry/sdk/sp;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ii;->c(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public j()[C
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 518
    iget v0, p0, Lcom/flurry/sdk/sp;->d:I

    if-ltz v0, :cond_1

    .line 519
    invoke-direct {p0, v2}, Lcom/flurry/sdk/sp;->c(I)V

    .line 529
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    return-object v0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 522
    if-nez v0, :cond_2

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/sp;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    goto :goto_0

    .line 524
    :cond_2
    iget v1, p0, Lcom/flurry/sdk/sp;->j:I

    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 526
    invoke-direct {p0, v2}, Lcom/flurry/sdk/sp;->d(I)V

    goto :goto_0
.end method

.method public final k()[C
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/sp;->d:I

    .line 536
    iput v1, p0, Lcom/flurry/sdk/sp;->j:I

    .line 537
    iput v1, p0, Lcom/flurry/sdk/sp;->e:I

    .line 539
    iput-object v2, p0, Lcom/flurry/sdk/sp;->c:[C

    .line 540
    iput-object v2, p0, Lcom/flurry/sdk/sp;->k:Ljava/lang/String;

    .line 541
    iput-object v2, p0, Lcom/flurry/sdk/sp;->l:[C

    .line 544
    iget-boolean v0, p0, Lcom/flurry/sdk/sp;->g:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/flurry/sdk/sp;->o()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 548
    if-nez v0, :cond_1

    .line 549
    invoke-direct {p0, v1}, Lcom/flurry/sdk/sp;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 551
    :cond_1
    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/flurry/sdk/sp;->j:I

    return v0
.end method

.method public m()[C
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    .line 567
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/sp;->g:Z

    .line 568
    iget-object v0, p0, Lcom/flurry/sdk/sp;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/sp;->i:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    array-length v0, v0

    .line 570
    iget v1, p0, Lcom/flurry/sdk/sp;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/flurry/sdk/sp;->h:I

    .line 572
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 573
    invoke-direct {p0, v0}, Lcom/flurry/sdk/sp;->e(I)[C

    move-result-object v0

    .line 574
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/sdk/sp;->j:I

    .line 575
    iput-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 576
    return-object v0
.end method

.method public n()[C
    .locals 5

    .prologue
    const/high16 v4, 0x40000

    const/4 v3, 0x0

    .line 586
    iget-object v1, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 588
    array-length v2, v1

    .line 590
    if-ne v2, v4, :cond_0

    const v0, 0x40001

    .line 592
    :goto_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/sp;->e(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    .line 593
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget-object v0, p0, Lcom/flurry/sdk/sp;->i:[C

    return-object v0

    .line 590
    :cond_0
    shr-int/lit8 v0, v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/flurry/sdk/sp;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
