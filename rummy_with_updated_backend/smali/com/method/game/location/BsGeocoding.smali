.class public Lcom/method/game/location/BsGeocoding;
.super Ljava/lang/Object;
.source "BsGeocoding.java"

# interfaces
.implements Lcom/method/game/location/IGeocoding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/location/BsGeocoding$MyAsyncTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

.field private task:Lcom/method/game/location/BsGeocoding$MyAsyncTask;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/method/game/location/BsGeocoding;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/method/game/location/BsGeocoding;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/method/game/location/BsGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/method/game/location/BsGeocoding;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/method/game/location/BsGeocoding;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/method/game/location/BsGeocoding;Lcom/method/game/location/BsGeocoding$MyAsyncTask;)Lcom/method/game/location/BsGeocoding$MyAsyncTask;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/method/game/location/BsGeocoding;->task:Lcom/method/game/location/BsGeocoding$MyAsyncTask;

    return-object p1
.end method

.method private fromJson(Ljava/lang/String;)V
    .locals 4

    const-string v0, "error:"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 142
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string p1, "errcode"

    .line 147
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "phone manager bs on fail"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_2
    new-instance p1, Lcom/method/game/bean/Latlng;

    invoke-direct {p1}, Lcom/method/game/bean/Latlng;-><init>()V

    :try_start_2
    const-string v2, "lat"

    .line 161
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/method/game/bean/Latlng;->setLatitude(D)V

    const-string v2, "lon"

    .line 162
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/method/game/bean/Latlng;->setLongitude(D)V

    const-string v2, "address"

    .line 163
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/method/game/bean/Latlng;->setAddress(Ljava/lang/String;)V

    const-string v1, "cellocation\u57fa\u7ad9\u5b9a\u4f4d"

    .line 164
    invoke-virtual {p1, v1}, Lcom/method/game/bean/Latlng;->setProvider(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    invoke-interface {v1, p1}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onSuccess(Lcom/method/game/bean/Latlng;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
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

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 144
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

    .line 137
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "json null"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public reStart()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/method/game/location/BsGeocoding;->start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V

    :cond_0
    return-void
.end method

.method public start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V
    .locals 7

    .line 48
    iput-object p1, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    .line 49
    iget-object p1, p0, Lcom/method/game/location/BsGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    const-string v0, "operator"

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    .line 55
    iget-object v3, p0, Lcom/method/game/location/BsGeocoding;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/method/game/helper/Helper;->checkPermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/method/game/location/BsGeocoding;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/method/game/helper/Helper;->checkPhonePermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    iget-object v1, p0, Lcom/method/game/location/BsGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "phone manager no permission"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void

    .line 65
    :cond_1
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_2

    .line 66
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 67
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    goto :goto_0

    .line 68
    :cond_2
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_3

    .line 69
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 70
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p1

    .line 71
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    move v6, v1

    move v1, p1

    move p1, v6

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 73
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, """  # removed backend URL"

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ":81"

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "/cell/?"

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "mcc="

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "&mnc="

    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "&lac="

    .line 81
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "&ci="

    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "&output=json"

    .line 85
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    new-instance p1, Lcom/method/game/location/BsGeocoding$MyAsyncTask;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/method/game/location/BsGeocoding$MyAsyncTask;-><init>(Lcom/method/game/location/BsGeocoding;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/method/game/location/BsGeocoding;->task:Lcom/method/game/location/BsGeocoding$MyAsyncTask;

    new-array v0, v0, [Ljava/lang/Void;

    .line 87
    invoke-virtual {p1, v0}, Lcom/method/game/location/BsGeocoding$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method

.method public stop()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/method/game/location/BsGeocoding;->task:Lcom/method/game/location/BsGeocoding$MyAsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    iput-object v1, p0, Lcom/method/game/location/BsGeocoding;->task:Lcom/method/game/location/BsGeocoding$MyAsyncTask;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/method/game/location/BsGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 103
    iput-object v1, p0, Lcom/method/game/location/BsGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    if-eqz v0, :cond_2

    .line 105
    iput-object v1, p0, Lcom/method/game/location/BsGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    :cond_2
    return-void
.end method
