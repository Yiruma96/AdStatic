.class public final Lcom/android/dx/rop/code/AccessFlags;
.super Ljava/lang/Object;
.source "AccessFlags.java"


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_ANNOTATION:I = 0x2000

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_CONSTRUCTOR:I = 0x10000

.field public static final ACC_DECLARED_SYNCHRONIZED:I = 0x20000

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_STRICT:I = 0x800

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_SYNCHRONIZED:I = 0x20

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final CLASS_FLAGS:I = 0x7631

.field private static final CONV_CLASS:I = 0x1

.field private static final CONV_FIELD:I = 0x2

.field private static final CONV_METHOD:I = 0x3

.field public static final FIELD_FLAGS:I = 0x50df

.field public static final INNER_CLASS_FLAGS:I = 0x761f

.field public static final METHOD_FLAGS:I = 0x31dff


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method public static classString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    const/16 v0, 0x7631

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fieldString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    const/16 v0, 0x50df

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static humanHelper(III)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 298
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 299
    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p0

    .line 301
    and-int v2, p0, p1

    .line 303
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 304
    const-string v3, "|public"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    :cond_0
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    .line 307
    const-string v3, "|private"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    .line 310
    const-string v3, "|protected"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :cond_2
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    .line 313
    const-string v3, "|static"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    :cond_3
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_4

    .line 316
    const-string v3, "|final"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :cond_4
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_5

    .line 319
    if-ne p2, v4, :cond_13

    .line 320
    const-string v3, "|super"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_5
    :goto_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_6

    .line 326
    if-ne p2, v5, :cond_14

    .line 327
    const-string v3, "|bridge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_6
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_7

    .line 333
    if-ne p2, v5, :cond_15

    .line 334
    const-string v3, "|varargs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :cond_7
    :goto_2
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_8

    .line 340
    const-string v3, "|native"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    :cond_8
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_9

    .line 343
    const-string v3, "|interface"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_9
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_a

    .line 346
    const-string v3, "|abstract"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    :cond_a
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_b

    .line 349
    const-string v3, "|strictfp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    :cond_b
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_c

    .line 352
    const-string v3, "|synthetic"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    :cond_c
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_d

    .line 355
    const-string v3, "|annotation"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    :cond_d
    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_e

    .line 358
    const-string v3, "|enum"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    :cond_e
    const/high16 v3, 0x10000

    and-int/2addr v3, v2

    if-eqz v3, :cond_f

    .line 361
    const-string v3, "|constructor"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :cond_f
    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 364
    const-string v2, "|declared_synchronized"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_10
    if-nez v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_12

    .line 368
    :cond_11
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :cond_12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 322
    :cond_13
    const-string v3, "|synchronized"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 329
    :cond_14
    const-string v3, "|volatile"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 336
    :cond_15
    const-string v3, "|transient"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static innerClassString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    const/16 v0, 0x761f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAbstract(I)Z
    .locals 1

    .prologue
    .line 252
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnnotation(I)Z
    .locals 1

    .prologue
    .line 274
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeclaredSynchronized(I)Z
    .locals 1

    .prologue
    .line 285
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNative(I)Z
    .locals 1

    .prologue
    .line 263
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivate(I)Z
    .locals 1

    .prologue
    .line 219
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProtected(I)Z
    .locals 1

    .prologue
    .line 208
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPublic(I)Z
    .locals 1

    .prologue
    .line 197
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatic(I)Z
    .locals 1

    .prologue
    .line 230
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSynchronized(I)Z
    .locals 1

    .prologue
    .line 241
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static methodString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    const v0, 0x31dff

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
