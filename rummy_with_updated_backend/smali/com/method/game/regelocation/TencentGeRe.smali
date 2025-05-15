.class public Lcom/method/game/regelocation/TencentGeRe;
.super Ljava/lang/Object;
.source "TencentGeRe.java"

# interfaces
.implements Lcom/method/game/regelocation/IReGe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;
    }
.end annotation


# instance fields
.field private ak:Ljava/lang/String;

.field private hashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private isSn:Z

.field private mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

.field private sk:Ljava/lang/String;

.field private task:Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TF7BZ-6KYC4-2KBUK-D63XI-WJLBO-TKBGJ"

    .line 29
    iput-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->ak:Ljava/lang/String;

    const-string v0, "KUmq7ZNVgispZZoRcQxULuJK2KXxngs0"

    .line 30
    iput-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->sk:Ljava/lang/String;

    const-string v0, "/ws/geocoder/v1/"

    .line 31
    iput-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->host:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/method/game/regelocation/TencentGeRe;->isSn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/method/game/regelocation/TencentGeRe;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/method/game/regelocation/TencentGeRe;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/method/game/regelocation/TencentGeRe;Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;)Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->task:Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;

    return-object p1
.end method

.method private fromJson(Ljava/lang/String;)V
    .locals 5

    const-string v0, "message"

    const-string v1, "result"

    const-string v2, "error:"

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/method/game/regelocation/TencentGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    if-nez v3, :cond_1

    return-void

    .line 129
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string p1, "status"

    .line 134
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 137
    :try_start_1
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/method/game/regelocation/TencentGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onFail(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 144
    :cond_3
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_5

    .line 150
    :try_start_2
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "address_component"

    .line 151
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 152
    new-instance v3, Lcom/method/game/bean/Latlng;

    invoke-direct {v3}, Lcom/method/game/bean/Latlng;-><init>()V

    const-string v4, "nation"

    .line 153
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/method/game/bean/Latlng;->setCountry(Ljava/lang/String;)V

    const-string v4, "city"

    .line 154
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/method/game/bean/Latlng;->setCity(Ljava/lang/String;)V

    const-string v4, "district"

    .line 155
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/method/game/bean/Latlng;->setSublocality(Ljava/lang/String;)V

    const-string v4, "street"

    .line 156
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/method/game/bean/Latlng;->setAddress(Ljava/lang/String;)V

    const-string v1, "ad_info"

    .line 158
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "city_code"

    .line 159
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/method/game/bean/Latlng;->setCityCode(Ljava/lang/String;)V

    const-string v1, "pois"

    .line 161
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v3, v0}, Lcom/method/game/bean/Latlng;->setName(Ljava/lang/String;)V

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, v3}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onSuccess(ILcom/method/game/bean/Latlng;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private hashMapBySort(Ljava/util/HashMap;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    new-instance p1, Lcom/method/game/regelocation/TencentGeRe$1;

    invoke-direct {p1, p0}, Lcom/method/game/regelocation/TencentGeRe$1;-><init>(Lcom/method/game/regelocation/TencentGeRe;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addReGeListener(Lcom/method/game/regelocation/IReGe$IReGeListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 43
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public reGeToAddress(Lcom/method/game/bean/Latlng;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/method/game/bean/Latlng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/method/game/bean/Latlng;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->ak:Ljava/lang/String;

    const-string v1, "key"

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    const-string v0, "get_poi"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-boolean p1, p0, Lcom/method/game/regelocation/TencentGeRe;->isSn:Z

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Lcom/method/game/regelocation/TencentGeRe;->hashMapBySort(Ljava/util/HashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/method/game/regelocation/TencentGeRe;->host:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v2, v1}, Lcom/method/game/helper/Helper;->toAppendUrlWithoutEncode(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->sk:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/CommonUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    const-string v1, "sig"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    new-instance p1, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;

    iget-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/method/game/regelocation/TencentGeRe;->host:Ljava/lang/String;

    const-string v2, """  # removed backend URL"

    invoke-static {v0, v2, v1}, Lcom/method/game/helper/Helper;->toAppendUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;-><init>(Lcom/method/game/regelocation/TencentGeRe;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->task:Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 66
    invoke-virtual {p1, v0}, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setOptions(Lcom/method/game/ReverseGeocodingManager$ReGeOption;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->isSn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/method/game/regelocation/TencentGeRe;->isSn:Z

    .line 49
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->ak:Ljava/lang/String;

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getSk()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getSk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getSk()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/method/game/regelocation/TencentGeRe;->sk:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->hashMap:Ljava/util/LinkedHashMap;

    .line 74
    iput-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->task:Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;

    .line 75
    iput-object v0, p0, Lcom/method/game/regelocation/TencentGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    return-void
.end method
