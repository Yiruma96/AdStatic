.class public final Lcom/google/android/gms/internal/cf;
.super Ljava/lang/Object;


# static fields
.field private static final hH:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cf;->hH:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Ljava/lang/String;)Lcom/google/android/gms/internal/cb;
    .locals 18

    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_base_url"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ad_url"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "ad_size"

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "ad_html"

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "interstitial_timeout"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "interstitial_timeout"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-long v8, v6

    :goto_0
    const-string v2, "orientation"

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, -0x1

    const-string v6, "portrait"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/cn;->au()I

    move-result v16

    :cond_0
    :goto_1
    const/4 v2, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v2, "Could not parse the mediation config: Missing required ad_base_url field"

    invoke-static {v2}, Lcom/google/android/gms/internal/cs;->v(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/cb;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/cb;-><init>(I)V

    :goto_2
    return-object v3

    :cond_1
    const-wide/16 v8, -0x1

    goto :goto_0

    :cond_2
    const-string v6, "landscape"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/cn;->at()I

    move-result v16

    goto :goto_1

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/bz;->ej:Lcom/google/android/gms/internal/ct;

    iget-object v2, v2, Lcom/google/android/gms/internal/ct;->iF:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ce;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/cb;

    move-result-object v2

    iget-object v4, v2, Lcom/google/android/gms/internal/cb;->gK:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/cb;->hu:Ljava/lang/String;

    move-object v10, v2

    :goto_3
    const-string v2, "click_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v10, :cond_6

    const/4 v2, 0x0

    :goto_4
    if-eqz v6, :cond_12

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_4
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_7

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const-string v2, "Could not parse the mediation config: Missing required ad_html or ad_url field."

    invoke-static {v2}, Lcom/google/android/gms/internal/cs;->v(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/cb;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/cb;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse the mediation config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cs;->v(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/cb;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/cb;-><init>(I)V

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v2, v10, Lcom/google/android/gms/internal/cb;->fK:Ljava/util/List;

    goto :goto_4

    :cond_7
    move-object v6, v2

    :goto_6
    const-string v2, "impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-nez v10, :cond_9

    const/4 v2, 0x0

    :goto_7
    if-eqz v7, :cond_11

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_8
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_a

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    iget-object v2, v10, Lcom/google/android/gms/internal/cb;->fL:Ljava/util/List;

    goto :goto_7

    :cond_a
    move-object v7, v2

    :goto_9
    const-string v2, "manual_impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v10, :cond_c

    const/4 v2, 0x0

    :goto_a
    if-eqz v11, :cond_10

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_b
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_d

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_c
    iget-object v2, v10, Lcom/google/android/gms/internal/cb;->hy:Ljava/util/List;

    goto :goto_a

    :cond_d
    move-object v13, v2

    :goto_c
    if-eqz v10, :cond_f

    iget v2, v10, Lcom/google/android/gms/internal/cb;->orientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    iget v0, v10, Lcom/google/android/gms/internal/cb;->orientation:I

    move/from16 v16, v0

    :cond_e
    iget-wide v2, v10, Lcom/google/android/gms/internal/cb;->hv:J

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-lez v2, :cond_f

    iget-wide v8, v10, Lcom/google/android/gms/internal/cb;->hv:J

    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/cb;

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v14, -0x1

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_10
    move-object v13, v2

    goto :goto_c

    :cond_11
    move-object v7, v2

    goto :goto_9

    :cond_12
    move-object v6, v2

    goto :goto_6

    :cond_13
    move-object v10, v2

    goto/16 :goto_3
.end method

.method public static a(Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/ci;Landroid/location/Location;)Ljava/lang/String;
    .locals 11

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x2

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->ho:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v0, "ad_pos"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->ho:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->hp:Lcom/google/android/gms/internal/v;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cf;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/v;)V

    const-string v0, "format"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iget-object v1, v1, Lcom/google/android/gms/internal/x;->eF:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iget v0, v0, Lcom/google/android/gms/internal/x;->width:I

    if-ne v0, v10, :cond_1

    const-string v0, "smart_w"

    const-string v1, "full"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iget v0, v0, Lcom/google/android/gms/internal/x;->height:I

    if-ne v0, v9, :cond_2

    const-string v0, "smart_h"

    const-string v1, "auto"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iget-object v0, v0, Lcom/google/android/gms/internal/x;->eH:[Lcom/google/android/gms/internal/x;

    if-eqz v0, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iget-object v4, v0, Lcom/google/android/gms/internal/x;->eH:[Lcom/google/android/gms/internal/x;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_6

    aget-object v6, v4, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v0, v6, Lcom/google/android/gms/internal/x;->width:I

    if-ne v0, v10, :cond_4

    iget v0, v6, Lcom/google/android/gms/internal/x;->widthPixels:I

    int-to-float v0, v0

    iget v7, p1, Lcom/google/android/gms/internal/ci;->im:F

    div-float/2addr v0, v7

    float-to-int v0, v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/google/android/gms/internal/x;->height:I

    if-ne v0, v9, :cond_5

    iget v0, v6, Lcom/google/android/gms/internal/x;->heightPixels:I

    int-to-float v0, v0

    iget v6, p1, Lcom/google/android/gms/internal/ci;->im:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget v0, v6, Lcom/google/android/gms/internal/x;->width:I

    goto :goto_1

    :cond_5
    iget v0, v6, Lcom/google/android/gms/internal/x;->height:I

    goto :goto_2

    :cond_6
    const-string v0, "sz"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "slotname"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->hq:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_8

    const-string v0, "vc"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->hq:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "ms"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->hr:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->hs:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->ht:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->ej:Lcom/google/android/gms/internal/ct;

    iget-object v1, v1, Lcom/google/android/gms/internal/ct;->iF:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/cf;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ci;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->hp:Lcom/google/android/gms/internal/v;

    iget v0, v0, Lcom/google/android/gms/internal/v;->versionCode:I

    if-lt v0, v8, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->hp:Lcom/google/android/gms/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/internal/v;->eE:Landroid/location/Location;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->hp:Lcom/google/android/gms/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/internal/v;->eE:Landroid/location/Location;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cf;->a(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_9
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->n(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v2}, Lcom/google/android/gms/internal/cn;->m(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad Request JSON: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->u(Ljava/lang/String;)V

    :cond_a
    invoke-static {v2}, Lcom/google/android/gms/internal/cn;->m(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem serializing ad request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static a(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x416312d000000000L    # 1.0E7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ai;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ai;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/internal/ai;->eZ:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "acolor"

    iget v2, p1, Lcom/google/android/gms/internal/ai;->eZ:I

    invoke-static {v2}, Lcom/google/android/gms/internal/cf;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ai;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "bgcolor"

    iget v2, p1, Lcom/google/android/gms/internal/ai;->backgroundColor:I

    invoke-static {v2}, Lcom/google/android/gms/internal/cf;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p1, Lcom/google/android/gms/internal/ai;->fa:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/google/android/gms/internal/ai;->fb:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gradientto"

    iget v2, p1, Lcom/google/android/gms/internal/ai;->fa:I

    invoke-static {v2}, Lcom/google/android/gms/internal/cf;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gradientfrom"

    iget v2, p1, Lcom/google/android/gms/internal/ai;->fb:I

    invoke-static {v2}, Lcom/google/android/gms/internal/cf;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, p1, Lcom/google/android/gms/internal/ai;->fc:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "bcolor"

    iget v2, p1, Lcom/google/android/gms/internal/ai;->fc:I

    invoke-static {v2}, Lcom/google/android/gms/internal/cf;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "bthick"

    iget v2, p1, Lcom/google/android/gms/internal/ai;->fd:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/google/android/gms/internal/ai;->fe:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "btype"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v1, p1, Lcom/google/android/gms/internal/ai;->ff:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    if-eqz v0, :cond_5

    const-string v1, "callbuttoncolor"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->fg:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/internal/ai;->fg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/internal/ai;->fh:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/internal/ai;->fh:I

    invoke-static {v1}, Lcom/google/android/gms/internal/cf;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->fi:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/internal/ai;->fi:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p1, Lcom/google/android/gms/internal/ai;->fj:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/internal/ai;->fj:I

    invoke-static {v1}, Lcom/google/android/gms/internal/cf;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/internal/ai;->fk:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->fl:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "q"

    iget-object v1, p1, Lcom/google/android/gms/internal/ai;->fl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_0
    const-string v1, "none"

    goto :goto_0

    :pswitch_1
    const-string v1, "dashed"

    goto :goto_0

    :pswitch_2
    const-string v1, "dotted"

    goto :goto_0

    :pswitch_3
    const-string v1, "solid"

    goto :goto_0

    :pswitch_4
    const-string v0, "dark"

    goto :goto_1

    :pswitch_5
    const-string v0, "light"

    goto :goto_1

    :pswitch_6
    const-string v0, "medium"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ci;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->hW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ci;->hX:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/cf;->j(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ci;->hY:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/cf;->j(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ci;->hZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/ci;->hZ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/ci;->ia:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ci;->ib:Z

    if-eqz v0, :cond_1

    const-string v0, "simulator"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ci;->ic:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/cf;->j(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ci;->id:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/cf;->j(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/ci;->ie:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ci;->if:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/ci;->if:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->ig:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/ci;->ih:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->ih:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->ii:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->ij:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->ik:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->il:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u_sd"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->im:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->io:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v1, p1, Lcom/google/android/gms/internal/ci;->in:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/v;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/v;",
            ")V"
        }
    .end annotation

    const/4 v6, -0x1

    iget-wide v0, p1, Lcom/google/android/gms/internal/v;->ex:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/cf;->hH:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/google/android/gms/internal/v;->ex:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/v;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/internal/v;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v0, p1, Lcom/google/android/gms/internal/v;->ey:I

    if-eq v0, v6, :cond_2

    const-string v0, "cust_gender"

    iget v1, p1, Lcom/google/android/gms/internal/v;->ey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/v;->ez:Ljava/util/List;

    if-eqz v0, :cond_3

    const-string v0, "kw"

    iget-object v1, p1, Lcom/google/android/gms/internal/v;->ez:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/v;->tagForChildDirectedTreatment:I

    if-eq v0, v6, :cond_4

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/internal/v;->tagForChildDirectedTreatment:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v0, p1, Lcom/google/android/gms/internal/v;->eA:Z

    if-eqz v0, :cond_5

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v0, p1, Lcom/google/android/gms/internal/v;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/v;->eB:Z

    if-eqz v0, :cond_6

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/internal/v;->eC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/internal/v;->eC:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/v;->eD:Lcom/google/android/gms/internal/ai;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/v;->eD:Lcom/google/android/gms/internal/ai;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/cf;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ai;)V

    :cond_8
    return-void
.end method

.method private static j(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static m(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
