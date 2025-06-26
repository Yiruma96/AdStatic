.class public Lcom/dd/plist/NSNumber;
.super Lcom/dd/plist/NSObject;
.source "NSNumber.java"


# static fields
.field public static final BOOLEAN:I = 0x2

.field public static final INTEGER:I = 0x0

.field public static final REAL:I = 0x1


# instance fields
.field private boolValue:Z

.field private doubleValue:D

.field private longValue:J

.field private type:I


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 130
    iput-wide p1, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    double-to-long v0, p1

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 132
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 121
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 96
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 97
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 102
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 106
    :try_start_2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 108
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_1
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 109
    :catch_2
    move-exception v0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given text neither represents a double, int nor boolean value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 139
    iput-boolean p1, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    .line 140
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 141
    const/4 v0, 0x2

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 142
    return-void

    .line 140
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type argument is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_0
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 83
    :goto_0
    iput p2, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 84
    return-void

    .line 75
    :pswitch_1
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListParser;->parseDouble([B)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 76
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public boolValue()Z
    .locals 4

    .prologue
    .line 184
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    .line 187
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 233
    instance-of v1, p1, Lcom/dd/plist/NSNumber;

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    check-cast p1, Lcom/dd/plist/NSNumber;

    .line 235
    iget v1, p0, Lcom/dd/plist/NSNumber;->type:I

    iget v2, p1, Lcom/dd/plist/NSNumber;->type:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->longValue:J

    iget-wide v4, p1, Lcom/dd/plist/NSNumber;->longValue:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    iget-wide v4, p1, Lcom/dd/plist/NSNumber;->doubleValue:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    iget-boolean v2, p1, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 240
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 241
    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->longValue:J

    iget-wide v4, p0, Lcom/dd/plist/NSNumber;->longValue:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 242
    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 243
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 244
    return v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-int v0, v0

    return v0
.end method

.method public isBoolean()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteger()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReal()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 176
    iget v1, p0, Lcom/dd/plist/NSNumber;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    return-wide v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    .line 333
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 334
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-eqz v0, :cond_0

    const-string v0, "YES"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :goto_1
    return-void

    .line 334
    :cond_0
    const-string v0, "NO"

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    .line 343
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 345
    :pswitch_0
    const-string v0, "<*I"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :pswitch_1
    const-string v0, "<*R"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 357
    :pswitch_2
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "<*BY>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 360
    :cond_0
    const-string v0, "<*BN>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x13

    const/16 v0, 0x8

    .line 293
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->type()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 295
    :pswitch_0
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 296
    invoke-virtual {p1, v6}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 297
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 299
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 300
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 302
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 303
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 305
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 306
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 308
    :cond_3
    invoke-virtual {p1, v6}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 309
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 314
    :pswitch_1
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 315
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeDouble(D)V

    goto :goto_0

    .line 319
    :pswitch_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    :cond_4
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    goto/16 :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    packed-switch v0, :pswitch_data_0

    .line 261
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    .line 269
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 271
    :pswitch_0
    const-string v0, "<integer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    const-string v0, "</integer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :pswitch_1
    const-string v0, "<real>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 279
    const-string v0, "</real>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "<true/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 285
    :cond_0
    const-string v0, "<false/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public type()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    return v0
.end method
