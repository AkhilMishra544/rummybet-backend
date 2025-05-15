.class public Lcom/method/game/location/OpenCellidGeocoding;
.super Ljava/lang/Object;
.source "OpenCellidGeocoding.java"

# interfaces
.implements Lcom/method/game/location/IGeocoding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

.field private task:Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/method/game/location/OpenCellidGeocoding;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/method/game/location/OpenCellidGeocoding;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/method/game/location/OpenCellidGeocoding;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/method/game/location/OpenCellidGeocoding;Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;)Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->task:Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;

    return-object p1
.end method

.method private fromJson(Ljava/lang/String;)V
    .locals 4

    const-string v0, "error:"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 144
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string p1, "status"

    .line 149
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "ok"

    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "phone manager bs on fail error"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void

    .line 161
    :cond_2
    new-instance p1, Lcom/method/game/bean/Latlng;

    invoke-direct {p1}, Lcom/method/game/bean/Latlng;-><init>()V

    :try_start_2
    const-string v2, "lat"

    .line 163
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/method/game/bean/Latlng;->setLatitude(D)V

    const-string v2, "lon"

    .line 164
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/method/game/bean/Latlng;->setLongitude(D)V

    const-string v1, "openCellid\u57fa\u7ad9\u5b9a\u4f4d"

    .line 165
    invoke-virtual {p1, v1}, Lcom/method/game/bean/Latlng;->setProvider(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    invoke-interface {v1, p1}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onSuccess(Lcom/method/game/bean/Latlng;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
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

    .line 154
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

    .line 146
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

    .line 139
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "json null"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public reStart()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/method/game/location/OpenCellidGeocoding;->start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V

    return-void
.end method

.method public start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    if-nez p1, :cond_1

    const-string p1, "open cellid grocoding listener nuol"

    .line 47
    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 54
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 57
    iget-object v1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/method/game/helper/Helper;->checkPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/method/game/helper/Helper;->checkPhonePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    iget-object v1, p0, Lcom/method/game/location/OpenCellidGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    if-nez v1, :cond_3

    .line 65
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "phone manager getCellLocation null"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_3
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_4

    .line 71
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 72
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    goto :goto_0

    .line 73
    :cond_4
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_5

    .line 74
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 75
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p1

    .line 76
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    move v8, v1

    move v1, p1

    move p1, v8

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 79
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, """  # removed backend URL"

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "/v2/"

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "process.php"

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "{\"token\": \"09a4f0709c487e\""

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ",\"radio\": \"gsm\""

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\"mcc\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",\"mnc\":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",\"cells\": [{\"lac\":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"cid\":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ",\"address\":2"

    .line 89
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "}"

    .line 90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    new-instance p1, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v1, v2}, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;-><init>(Lcom/method/game/location/OpenCellidGeocoding;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->task:Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;

    new-array v0, v0, [Ljava/lang/Void;

    .line 93
    invoke-virtual {p1, v0}, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 61
    :cond_6
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "phone manager no permission"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "phone manager getNetworkOperator null"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/method/game/location/OpenCellidGeocoding;->task:Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    iput-object v1, p0, Lcom/method/game/location/OpenCellidGeocoding;->task:Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;

    .line 105
    :cond_0
    iput-object v1, p0, Lcom/method/game/location/OpenCellidGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    .line 106
    iput-object v1, p0, Lcom/method/game/location/OpenCellidGeocoding;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method
