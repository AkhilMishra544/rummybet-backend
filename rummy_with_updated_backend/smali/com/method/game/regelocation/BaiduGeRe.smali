.class public Lcom/method/game/regelocation/BaiduGeRe;
.super Ljava/lang/Object;
.source "BaiduGeRe.java"

# interfaces
.implements Lcom/method/game/regelocation/IReGe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;
    }
.end annotation


# instance fields
.field private ak:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private isSn:Z

.field private mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

.field private paramsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sk:Ljava/lang/String;

.field private task:Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KHVTQZiP2UGuv7SkNbqYPKu4co7kbkS4"

    .line 25
    iput-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->ak:Ljava/lang/String;

    const-string v0, "cTqIacm4uvDnQWpWWCZGElhbIx4Nxv3q"

    .line 26
    iput-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->sk:Ljava/lang/String;

    const-string v0, "/reverse_geocoding/v3/"

    .line 27
    iput-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->host:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->isSn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/method/game/regelocation/BaiduGeRe;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/method/game/regelocation/BaiduGeRe;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/method/game/regelocation/BaiduGeRe;Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;)Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->task:Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;

    return-object p1
.end method

.method private fromJson(Ljava/lang/String;)V
    .locals 6

    const-string v0, "message"

    const-string v1, "result"

    const-string v2, "error:"

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/method/game/regelocation/BaiduGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    if-nez v3, :cond_1

    return-void

    .line 143
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string p1, "status"

    .line 148
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    :try_start_1
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/method/game/regelocation/BaiduGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onFail(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 158
    :cond_3
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    .line 162
    :try_start_2
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "addressComponent"

    .line 163
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    new-instance v3, Lcom/method/game/bean/Latlng;

    invoke-direct {v3}, Lcom/method/game/bean/Latlng;-><init>()V

    const-string v4, "country"

    .line 165
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/method/game/bean/Latlng;->setCountry(Ljava/lang/String;)V

    const-string v4, "country_code"

    .line 166
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/method/game/bean/Latlng;->setCountryCode(Ljava/lang/String;)V

    const-string v4, "city"

    .line 167
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/method/game/bean/Latlng;->setCity(Ljava/lang/String;)V

    const-string v4, "district"

    .line 168
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/method/game/bean/Latlng;->setSublocality(Ljava/lang/String;)V

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cityCode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/method/game/bean/Latlng;->setCityCode(Ljava/lang/String;)V

    const-string v4, "street"

    .line 170
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/method/game/bean/Latlng;->setAddress(Ljava/lang/String;)V

    const-string v1, "business"

    .line 171
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/method/game/bean/Latlng;->setName(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, v3}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onSuccess(ILcom/method/game/bean/Latlng;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
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

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 145
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
    :goto_1
    return-void
.end method

.method private toQueryString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addReGeListener(Lcom/method/game/regelocation/IReGe$IReGeListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 39
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    .line 40
    iget-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->ak:Ljava/lang/String;

    const-string v1, "ak"

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    const-string v0, "coordtype"

    const-string v1, "wgs84ll"

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reGeToAddress(Lcom/method/game/bean/Latlng;)V
    .locals 5

    const-string v0, "error:"

    .line 55
    iget-object v1, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/method/game/bean/Latlng;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/method/game/bean/Latlng;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "location"

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    const-string v1, "output"

    const-string v2, "json"

    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-boolean p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->isSn:Z

    if-eqz p1, :cond_0

    .line 60
    :try_start_0
    iget-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Lcom/method/game/regelocation/BaiduGeRe;->toQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/method/game/regelocation/BaiduGeRe;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->sk:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_1
    const-string p1, "UTF-8"

    .line 67
    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    invoke-static {p1}, Lcom/method/game/util/CommonUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    const-string v1, "sn"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    :goto_0
    new-instance p1, Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;

    iget-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/method/game/regelocation/BaiduGeRe;->host:Ljava/lang/String;

    const-string v2, """  # removed backend URL"

    invoke-static {v0, v2, v1}, Lcom/method/game/helper/Helper;->toAppendUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;-><init>(Lcom/method/game/regelocation/BaiduGeRe;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->task:Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 76
    invoke-virtual {p1, v0}, Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setOptions(Lcom/method/game/ReverseGeocodingManager$ReGeOption;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->isSn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->isSn:Z

    .line 47
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->ak:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getSk()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getSk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getSk()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/method/game/regelocation/BaiduGeRe;->sk:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->paramsMap:Ljava/util/LinkedHashMap;

    .line 84
    iput-object v0, p0, Lcom/method/game/regelocation/BaiduGeRe;->task:Lcom/method/game/regelocation/BaiduGeRe$MyAsyncTask;

    return-void
.end method
