.class public Lcom/method/game/regelocation/GaodeGeRe;
.super Ljava/lang/Object;
.source "GaodeGeRe.java"

# interfaces
.implements Lcom/method/game/regelocation/IReGe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;
    }
.end annotation


# instance fields
.field private ak:Ljava/lang/String;

.field private hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

.field private task:Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "74fb103d602ca3fd94be9b25ac9cacb2"

    .line 22
    iput-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->ak:Ljava/lang/String;

    const-string v0, "/v3/geocode/regeo"

    .line 23
    iput-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->host:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/method/game/regelocation/GaodeGeRe;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/method/game/regelocation/GaodeGeRe;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/method/game/regelocation/GaodeGeRe;Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;)Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/method/game/regelocation/GaodeGeRe;->task:Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;

    return-object p1
.end method

.method private fromJson(Ljava/lang/String;)V
    .locals 6

    const-string v0, "businessAreas"

    const-string v1, "info"

    const-string v2, "regeocode"

    const-string v3, "error:"

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/method/game/regelocation/GaodeGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    if-nez v4, :cond_1

    return-void

    .line 94
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string p1, "status"

    .line 99
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 102
    :try_start_1
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "1"

    .line 104
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 105
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onFail(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 109
    :cond_3
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_5

    .line 113
    :try_start_2
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "addressComponent"

    .line 114
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/method/game/bean/Latlng;

    invoke-direct {v2}, Lcom/method/game/bean/Latlng;-><init>()V

    const-string v4, "country"

    .line 116
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/method/game/bean/Latlng;->setCountry(Ljava/lang/String;)V

    const-string v4, "province"

    .line 117
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/method/game/bean/Latlng;->setCity(Ljava/lang/String;)V

    const-string v4, "district"

    .line 118
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/method/game/bean/Latlng;->setSublocality(Ljava/lang/String;)V

    const-string v4, "citycode"

    .line 119
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/method/game/bean/Latlng;->setCityCode(Ljava/lang/String;)V

    const-string v4, "township"

    .line 120
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/method/game/bean/Latlng;->setAddress(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_4

    .line 125
    :try_start_3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    .line 128
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/method/game/bean/Latlng;->setName(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    .line 134
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, v2}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onSuccess(ILcom/method/game/bean/Latlng;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 136
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    :catch_3
    move-exception p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public addReGeListener(Lcom/method/game/regelocation/IReGe$IReGeListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/method/game/regelocation/GaodeGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/method/game/regelocation/GaodeGeRe;->hashMap:Ljava/util/HashMap;

    .line 32
    iget-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->ak:Ljava/lang/String;

    const-string v1, "key"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reGeToAddress(Lcom/method/game/bean/Latlng;)V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->hashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/method/game/bean/Latlng;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/method/game/bean/Latlng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance p1, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;

    iget-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->hashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/method/game/regelocation/GaodeGeRe;->host:Ljava/lang/String;

    const-string v2, """  # removed backend URL"

    invoke-static {v0, v2, v1}, Lcom/method/game/helper/Helper;->toAppendUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;-><init>(Lcom/method/game/regelocation/GaodeGeRe;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/method/game/regelocation/GaodeGeRe;->task:Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 46
    invoke-virtual {p1, v0}, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setOptions(Lcom/method/game/ReverseGeocodingManager$ReGeOption;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/method/game/regelocation/GaodeGeRe;->ak:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->hashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->hashMap:Ljava/util/HashMap;

    .line 54
    iput-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    .line 55
    iput-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe;->task:Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;

    return-void
.end method
