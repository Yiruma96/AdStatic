.class public Lcom/flurry/sdk/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/ci;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p0, :cond_0

    .line 98
    :goto_0
    return-object v0

    .line 85
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 87
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 88
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 89
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 90
    new-instance v2, Lcom/flurry/sdk/ci$a;

    invoke-direct {v2}, Lcom/flurry/sdk/ci$a;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ci$a;Ljava/util/List;)Lcom/flurry/sdk/ci;

    move-result-object v0

    .line 91
    const/4 v2, 0x3

    const-string v3, "VASTXmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully parsed VAST XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    invoke-static {v1}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 93
    :goto_1
    const/4 v2, 0x3

    :try_start_2
    const-string v3, "VASTXmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing VAST XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    new-instance v0, Lcom/flurry/sdk/ci$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ci$a;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/ci$a;->a()Lcom/flurry/sdk/ci$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ci$a;->b()Lcom/flurry/sdk/ci;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 96
    invoke-static {v1}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-static {v1}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 92
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ci$a;Ljava/util/List;)Lcom/flurry/sdk/ci;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/ci$a;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cq;",
            ">;)",
            "Lcom/flurry/sdk/ci;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 102
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "VAST"

    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_4

    .line 106
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 107
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    .line 108
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ci$a;->a(I)Lcom/flurry/sdk/ci$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 118
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 121
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "Ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Lcom/flurry/sdk/cq$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cq$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cq$a;)Lcom/flurry/sdk/cq;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify VAST version"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    const-string v0, "VASTXmlParser"

    const-string v1, "VAST version not supported"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/ci$a;->a(Ljava/util/List;)Lcom/flurry/sdk/ci$a;

    .line 129
    invoke-static {p2}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ci$a;->a(Z)Lcom/flurry/sdk/ci$a;

    .line 133
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/ci$a;->b()Lcom/flurry/sdk/ci;

    move-result-object v0

    return-object v0

    .line 131
    :cond_4
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify VAST version"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cq$a;)Lcom/flurry/sdk/cq;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 137
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Ad"

    invoke-interface {p0, v6, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cq$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cq$a;

    .line 140
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "sequence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cq$a;->a(I)Lcom/flurry/sdk/cq$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 147
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 150
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "InLine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    new-instance v0, Lcom/flurry/sdk/cs$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cs$a;-><init>()V

    new-instance v1, Lcom/flurry/sdk/cr$a;

    invoke-direct {v1}, Lcom/flurry/sdk/cr$a;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cs$a;Lcom/flurry/sdk/cr$a;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/cs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cq$a;->a(Lcom/flurry/sdk/cs;)Lcom/flurry/sdk/cq$a;

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify Ad Sequence"

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    const-string v1, "Wrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v1, Lcom/flurry/sdk/cs$a;

    invoke-direct {v1}, Lcom/flurry/sdk/cs$a;-><init>()V

    new-instance v2, Lcom/flurry/sdk/cr$a;

    invoke-direct {v2}, Lcom/flurry/sdk/cr$a;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cs$a;Lcom/flurry/sdk/cr$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/cs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cq$a;->a(Lcom/flurry/sdk/cs;)Lcom/flurry/sdk/cq$a;

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/sdk/cq$a;->a()Lcom/flurry/sdk/cq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cs$a;Lcom/flurry/sdk/cr$a;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/cs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/cs$a;",
            "Lcom/flurry/sdk/cr$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cs;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 164
    sget-object v0, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/cl;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Lcom/flurry/sdk/cl;)Lcom/flurry/sdk/cs$a;

    .line 165
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "InLine"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 170
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->d(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 173
    :cond_1
    const-string v1, "AdSystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cr$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cr$a;

    .line 175
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cr$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/cr$a;

    .line 176
    invoke-virtual {p2}, Lcom/flurry/sdk/cr$a;->a()Lcom/flurry/sdk/cr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Lcom/flurry/sdk/cr;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 177
    :cond_2
    const-string v1, "AdTitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 179
    :cond_3
    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_4
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_5
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 187
    :cond_6
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/cs$a;->b(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 188
    invoke-virtual {p1, p4}, Lcom/flurry/sdk/cs$a;->c(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 189
    invoke-virtual {p1}, Lcom/flurry/sdk/cs$a;->a()Lcom/flurry/sdk/cs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cs$a;Lcom/flurry/sdk/cr$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/cs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/cs$a;",
            "Lcom/flurry/sdk/cr$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cs;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 194
    sget-object v0, Lcom/flurry/sdk/cl;->c:Lcom/flurry/sdk/cl;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Lcom/flurry/sdk/cl;)Lcom/flurry/sdk/cs$a;

    .line 195
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Wrapper"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 197
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 200
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->d(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 203
    :cond_1
    const-string v1, "AdSystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cr$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cr$a;

    .line 205
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cr$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/cr$a;

    .line 206
    invoke-virtual {p2}, Lcom/flurry/sdk/cr$a;->a()Lcom/flurry/sdk/cr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Lcom/flurry/sdk/cr;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 207
    :cond_2
    const-string v1, "VASTAdTagURI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_3
    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_4
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_5
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 217
    :cond_6
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/cs$a;->a(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 218
    invoke-virtual {p1, p4}, Lcom/flurry/sdk/cs$a;->b(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 219
    invoke-virtual {p1, p5}, Lcom/flurry/sdk/cs$a;->c(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 220
    invoke-virtual {p1}, Lcom/flurry/sdk/cs$a;->a()Lcom/flurry/sdk/cs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ct$a;)Lcom/flurry/sdk/ct;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 240
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Creative"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ct$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/ct$a;

    .line 242
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "sequence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 246
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ct$a;->a(I)Lcom/flurry/sdk/ct$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 252
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 255
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, "Linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    sget-object v0, Lcom/flurry/sdk/cm;->b:Lcom/flurry/sdk/cm;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ct$a;->a(Lcom/flurry/sdk/cm;)Lcom/flurry/sdk/ct$a;

    .line 258
    new-instance v0, Lcom/flurry/sdk/cu$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cu$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cu$a;)Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ct$a;->a(Lcom/flurry/sdk/cu;)Lcom/flurry/sdk/ct$a;

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify Creative sequence"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/ct$a;->a()Lcom/flurry/sdk/ct;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cu$a;)Lcom/flurry/sdk/cu;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 267
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Linear"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "skipoffset"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-static {v0}, Lcom/flurry/sdk/cj;->b(Ljava/lang/String;)I

    move-result v0

    .line 271
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->b(I)Lcom/flurry/sdk/cu$a;

    .line 273
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 274
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 277
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/cj;->b(Ljava/lang/String;)I

    move-result v0

    .line 280
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->a(I)Lcom/flurry/sdk/cu$a;

    goto :goto_0

    .line 281
    :cond_1
    const-string v1, "TrackingEvents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    new-instance v0, Lcom/flurry/sdk/ds;

    invoke-direct {v0}, Lcom/flurry/sdk/ds;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/ds;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->a(Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/cu$a;

    goto :goto_0

    .line 283
    :cond_2
    const-string v1, "VideoClicks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->a(Ljava/util/Map;)Lcom/flurry/sdk/cu$a;

    goto :goto_0

    .line 285
    :cond_3
    const-string v1, "MediaFiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/flurry/sdk/cj;->a(Ljava/util/List;)Lcom/flurry/sdk/cv;

    move-result-object v0

    .line 288
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->a(Lcom/flurry/sdk/cv;)Lcom/flurry/sdk/cu$a;

    goto :goto_0

    .line 290
    :cond_4
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 293
    :cond_5
    invoke-virtual {p1}, Lcom/flurry/sdk/cu$a;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cv$a;)Lcom/flurry/sdk/cv;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 360
    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v2, "MediaFile"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;

    .line 362
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->d(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;

    .line 363
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "apiFramework"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;

    .line 364
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "delivery"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {v0}, Lcom/flurry/sdk/cn;->a(Ljava/lang/String;)Lcom/flurry/sdk/cn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->a(Lcom/flurry/sdk/cn;)Lcom/flurry/sdk/cv$a;

    .line 367
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "height"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 369
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->b(I)Lcom/flurry/sdk/cv$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "width"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 376
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->c(I)Lcom/flurry/sdk/cv$a;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :goto_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "bitrate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 383
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->a(I)Lcom/flurry/sdk/cv$a;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 387
    :goto_2
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "scalable"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 389
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->b(Z)Lcom/flurry/sdk/cv$a;

    .line 390
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "maintainAspectRatio"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 392
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->a(Z)Lcom/flurry/sdk/cv$a;

    .line 393
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->c(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;

    .line 394
    invoke-virtual {p1}, Lcom/flurry/sdk/cv$a;->a()Lcom/flurry/sdk/cv;

    move-result-object v0

    return-object v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile height"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :catch_1
    move-exception v0

    .line 378
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile width"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 384
    :catch_2
    move-exception v0

    .line 385
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile bitRate"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cw$a;)Lcom/flurry/sdk/cw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v2, "Tracking"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "event"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lcom/flurry/sdk/co;->a(Ljava/lang/String;)Lcom/flurry/sdk/co;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cw$a;->a(Lcom/flurry/sdk/co;)Lcom/flurry/sdk/cw$a;

    .line 339
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cw$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cw$a;

    .line 340
    invoke-virtual {p1}, Lcom/flurry/sdk/cw$a;->a()Lcom/flurry/sdk/cw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/ds;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/ds",
            "<",
            "Lcom/flurry/sdk/co;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/ds",
            "<",
            "Lcom/flurry/sdk/co;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 317
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "TrackingEvents"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 319
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 322
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string v1, "Tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    new-instance v0, Lcom/flurry/sdk/cw$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cw$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cw$a;)Lcom/flurry/sdk/cw;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/flurry/sdk/cw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/flurry/sdk/cw;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/sdk/cw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 332
    :cond_2
    return-object p1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 401
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 404
    :cond_0
    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ct;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ct;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 224
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Creatives"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 226
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 229
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Lcom/flurry/sdk/ct$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ct$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ct$a;)Lcom/flurry/sdk/ct;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 236
    :cond_2
    return-object p1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/cp;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/cp;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 297
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "VideoClicks"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 299
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 302
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string v1, "ClickThrough"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    sget-object v0, Lcom/flurry/sdk/cp;->b:Lcom/flurry/sdk/cp;

    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 305
    :cond_1
    const-string v1, "ClickTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    sget-object v0, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;

    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    :cond_2
    const-string v1, "CustomClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    sget-object v0, Lcom/flurry/sdk/cp;->d:Lcom/flurry/sdk/cp;

    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 310
    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 313
    :cond_4
    return-object p1
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 408
    if-nez p0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cq;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 440
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 452
    :goto_0
    return v0

    .line 445
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cq;

    .line 446
    invoke-virtual {v0}, Lcom/flurry/sdk/cq;->c()Lcom/flurry/sdk/cs;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_3

    sget-object v3, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/cl;

    invoke-virtual {v0}, Lcom/flurry/sdk/cs;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/cl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    move v0, v1

    .line 448
    goto :goto_0

    .line 452
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cv;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 344
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "MediaFiles"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 346
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 349
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v1, "MediaFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Lcom/flurry/sdk/cv$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cv$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cv$a;)Lcom/flurry/sdk/cv;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 356
    :cond_2
    return-object p1
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 426
    :cond_0
    const/4 v0, 0x1

    .line 427
    :goto_0
    if-eqz v0, :cond_1

    .line 428
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 433
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 431
    goto :goto_0

    .line 437
    :cond_1
    return-void

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
