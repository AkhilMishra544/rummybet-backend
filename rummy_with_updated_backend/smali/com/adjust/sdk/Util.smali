.class public Lcom/adjust/sdk/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

.field public static final SecondsDisplayFormat:Ljava/text/DecimalFormat;

.field public static final dateFormatter:Ljava/text/SimpleDateFormat;

.field private static final fieldReadErrorMessage:Ljava/lang/String; = "Unable to read \'%s\' field in migration device with message (%s)"

.field private static volatile playAdIdScheduler:Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    invoke-static {}, Lcom/adjust/sdk/Util;->newLocalDecimalFormat()Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/adjust/sdk/Util;->playAdIdScheduler:Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 318
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    const-string p0, "Unable to check permission \'%s\' with message (%s)"

    invoke-interface {v2, p0, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 4

    .line 465
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    shl-int/2addr p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 467
    invoke-static {p0, v1}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static createUuid()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 0

    .line 394
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalEnum(Ljava/lang/Enum;Ljava/lang/Enum;)Z
    .locals 0

    .line 382
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 0

    .line 390
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 0

    .line 386
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static equalString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 378
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalsDouble(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 374
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    cmp-long v4, v2, p0

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 709
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdvertisingInfoObject(Landroid/content/Context;J)Ljava/lang/Object;
    .locals 1

    .line 106
    new-instance v0, Lcom/adjust/sdk/Util$1;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/Util$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, p1, p2}, Lcom/adjust/sdk/Util;->runSyncInPlayAdIdSchedulerWithTimeout(Landroid/content/Context;Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 240
    invoke-static {p0}, Lcom/adjust/sdk/AndroidIdUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectivityType(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "connectivity"

    .line 594
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    return v2

    .line 601
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 602
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 603
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    .line 607
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    .line 612
    :cond_2
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_3

    return v2

    .line 618
    :cond_3
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    .line 621
    :cond_4
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_5

    return v0

    :cond_5
    const/4 v3, 0x3

    .line 624
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_6

    return v3

    :cond_6
    const/4 v3, 0x4

    .line 627
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_7

    return v3

    :cond_7
    const/4 v3, 0x2

    .line 630
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    .line 635
    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_9

    return v2

    :cond_9
    const/4 v3, 0x5

    .line 639
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_a

    return v3

    .line 644
    :cond_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-ge v3, v4, :cond_b

    return v2

    :cond_b
    const/4 v3, 0x6

    .line 648
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_c

    return v3

    :catch_0
    move-exception p0

    .line 652
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Couldn\'t read connectivity type (%s)"

    invoke-interface {v3, p0, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    return v2
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 2

    .line 478
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 479
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFireAdvertisingId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "advertising_id"

    .line 575
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getFireTrackingEnabled(Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    const-string v0, "limit_ad_tracking"

    .line 585
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x2af8

    const/4 v2, 0x0

    .line 216
    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/GooglePlayServicesClient;->getGooglePlayServicesInfo(Landroid/content/Context;J)Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v3}, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;->getGpsAdid()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 224
    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/Util;->getAdvertisingInfoObject(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x3e8

    .line 228
    invoke-static {p0, v0, v1, v2}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;Ljava/lang/Object;J)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .locals 4

    .line 182
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    .line 183
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "GoogleAdId being read in the background"

    .line 184
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleAdId read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-interface {p1, p0}, Lcom/adjust/sdk/OnDeviceIdsRead;->onGoogleAdIdRead(Ljava/lang/String;)V

    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "GoogleAdId being read in the foreground"

    .line 193
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v0, Lcom/adjust/sdk/Util$5;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/Util$5;-><init>(Lcom/adjust/sdk/OnDeviceIdsRead;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/content/Context;

    aput-object p0, p1, v3

    .line 209
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/Util$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 3

    .line 556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    .line 559
    invoke-virtual {v0, p0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 563
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 564
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .line 79
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 236
    invoke-static {p0}, Lcom/adjust/sdk/MacAddressUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "phone"

    .line 678
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 679
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 681
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    const-string v2, "Couldn\'t receive networkOperator string to read MCC"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p0, v2, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v2, 0x3

    .line 685
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 687
    :catch_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Couldn\'t return mcc"

    invoke-interface {p0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "phone"

    .line 694
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 695
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 697
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    const-string v2, "Couldn\'t receive networkOperator string to read MNC"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p0, v2, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v2, 0x3

    .line 701
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 703
    :catch_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Couldn\'t return mnc"

    invoke-interface {p0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    const-string v0, "phone"

    .line 663
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 664
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 665
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 670
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Couldn\'t read network type (%s)"

    invoke-interface {v0, p0, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getPlayAdId(Landroid/content/Context;Ljava/lang/Object;J)Ljava/lang/String;
    .locals 1

    .line 122
    new-instance v0, Lcom/adjust/sdk/Util$2;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/Util$2;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {p0, v0, p2, p3}, Lcom/adjust/sdk/Util;->runSyncInPlayAdIdSchedulerWithTimeout(Landroid/content/Context;Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    aput-object p1, v2, v1

    const-string p0, "%s: %s"

    .line 486
    invoke-static {p0, v2}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "%s"

    .line 488
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRootCause(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 722
    invoke-static {p0}, Lcom/adjust/sdk/Util;->hasRootCause(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 726
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 727
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 728
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 729
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Caused by:"

    .line 731
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\n"

    .line 732
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 733
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSdkPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "@"

    .line 740
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 744
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 748
    :cond_2
    array-length v1, p0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 752
    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getSdkPrefixPlatform(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 756
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getSdkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "\\d+"

    .line 761
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 765
    :cond_1
    array-length v1, p0

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 769
    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "android4.27.0"

    return-object v0
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .locals 2

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 472
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWaitingTime(ILcom/adjust/sdk/BackoffStrategy;)J
    .locals 4

    .line 493
    iget v0, p1, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    if-ge p0, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 497
    :cond_0
    iget v0, p1, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    sub-int/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p0

    .line 499
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    iget-wide v2, p1, Lcom/adjust/sdk/BackoffStrategy;->milliSecondMultiplier:J

    mul-long v0, v0, v2

    .line 501
    iget-wide v2, p1, Lcom/adjust/sdk/BackoffStrategy;->maxWait:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 503
    iget-wide v2, p1, Lcom/adjust/sdk/BackoffStrategy;->minRange:D

    iget-wide p0, p1, Lcom/adjust/sdk/BackoffStrategy;->maxRange:D

    invoke-static {v2, v3, p0, p1}, Lcom/adjust/sdk/Util;->randomInRange(DD)D

    move-result-wide p0

    long-to-double v0, v0

    .line 505
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    double-to-long p0, v0

    return-wide p0
.end method

.method public static hasRootCause(Ljava/lang/Exception;)Z
    .locals 2

    .line 713
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 714
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 715
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 716
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Caused by:"

    .line 718
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 454
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 455
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/4 v0, 0x0

    .line 456
    array-length v1, p0

    invoke-virtual {p1, p0, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 457
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 458
    invoke-static {p0}, Lcom/adjust/sdk/Util;->convertToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static hashBoolean(Ljava/lang/Boolean;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 401
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashDouble(Ljava/lang/Double;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 415
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashEnum(Ljava/lang/Enum;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 429
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashLong(Ljava/lang/Long;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 408
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashObject(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 436
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashString(Ljava/lang/String;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 422
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method private static isEqualGoogleReferrerDetails(Lcom/adjust/sdk/ReferrerDetails;Lcom/adjust/sdk/ActivityState;)Z
    .locals 5

    .line 820
    iget-wide v0, p0, Lcom/adjust/sdk/ReferrerDetails;->referrerClickTimestampSeconds:J

    iget-wide v2, p1, Lcom/adjust/sdk/ActivityState;->clickTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/adjust/sdk/ReferrerDetails;->installBeginTimestampSeconds:J

    iget-wide v2, p1, Lcom/adjust/sdk/ActivityState;->installBegin:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/adjust/sdk/ReferrerDetails;->referrerClickTimestampServerSeconds:J

    iget-wide v2, p1, Lcom/adjust/sdk/ActivityState;->clickTimeServer:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/adjust/sdk/ReferrerDetails;->installBeginTimestampServerSeconds:J

    iget-wide v2, p1, Lcom/adjust/sdk/ActivityState;->installBeginServer:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ReferrerDetails;->installReferrer:Ljava/lang/String;

    iget-object v1, p1, Lcom/adjust/sdk/ActivityState;->installReferrer:Ljava/lang/String;

    .line 824
    invoke-static {v0, v1}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ReferrerDetails;->installVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/adjust/sdk/ActivityState;->installVersion:Ljava/lang/String;

    .line 825
    invoke-static {v0, v1}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/adjust/sdk/ReferrerDetails;->googlePlayInstant:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/adjust/sdk/ActivityState;->googlePlayInstant:Ljava/lang/Boolean;

    .line 826
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isEqualHuaweiReferrerDetails(Lcom/adjust/sdk/ReferrerDetails;Lcom/adjust/sdk/ActivityState;)Z
    .locals 5

    .line 831
    iget-wide v0, p0, Lcom/adjust/sdk/ReferrerDetails;->referrerClickTimestampSeconds:J

    iget-wide v2, p1, Lcom/adjust/sdk/ActivityState;->clickTimeHuawei:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/adjust/sdk/ReferrerDetails;->installBeginTimestampSeconds:J

    iget-wide v2, p1, Lcom/adjust/sdk/ActivityState;->installBeginHuawei:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p0, p0, Lcom/adjust/sdk/ReferrerDetails;->installReferrer:Ljava/lang/String;

    iget-object p1, p1, Lcom/adjust/sdk/ActivityState;->installReferrerHuawei:Ljava/lang/String;

    .line 833
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEqualReferrerDetails(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;Lcom/adjust/sdk/ActivityState;)Z
    .locals 1

    const-string v0, "google"

    .line 809
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {p0, p2}, Lcom/adjust/sdk/Util;->isEqualGoogleReferrerDetails(Lcom/adjust/sdk/ReferrerDetails;Lcom/adjust/sdk/ActivityState;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "huawei"

    .line 811
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 812
    invoke-static {p0, p2}, Lcom/adjust/sdk/Util;->isEqualHuaweiReferrerDetails(Lcom/adjust/sdk/ReferrerDetails;Lcom/adjust/sdk/ActivityState;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlayTrackingEnabled(Landroid/content/Context;Ljava/lang/Object;J)Ljava/lang/Boolean;
    .locals 1

    .line 134
    new-instance v0, Lcom/adjust/sdk/Util$3;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/Util$3;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {p0, v0, p2, p3}, Lcom/adjust/sdk/Util;->runSyncInPlayAdIdSchedulerWithTimeout(Landroid/content/Context;Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static isUrlFilteredOut(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 777
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 779
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "^(fb|vk)[0-9]{5,}[^:]*://authorize.*access_token=.*"

    .line 784
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 519
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    const-string p1, "%s parameter %s is missing"

    invoke-interface {p0, p1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const-string v3, ""

    .line 522
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 523
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    const-string p1, "%s parameter %s is empty"

    invoke-interface {p0, p1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    return v1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "MD5"

    .line 448
    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 539
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 540
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    .line 541
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 542
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 545
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object p2, v3, v2

    const/4 v2, 0x3

    .line 548
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Key %s with value %s from %s parameter was replaced by value %s"

    .line 544
    invoke-interface {p0, v1, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static newLocalDecimalFormat()Ljava/text/DecimalFormat;
    .locals 3

    .line 87
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 88
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    return-object v1
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\\s"

    .line 96
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "\'%s\'"

    .line 102
    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static randomInRange(DD)D
    .locals 2

    .line 510
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-double/2addr p2, p0

    .line 512
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double v0, v0, p2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z
    .locals 3

    .line 338
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 340
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "Unable to read \'%s\' field in migration device with message (%s)"

    invoke-interface {v0, p0, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method public static readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I
    .locals 3

    .line 347
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 349
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "Unable to read \'%s\' field in migration device with message (%s)"

    invoke-interface {v0, p0, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method public static readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J
    .locals 3

    .line 356
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 358
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "Unable to read \'%s\' field in migration device with message (%s)"

    invoke-interface {v0, p0, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide p2
.end method

.method public static readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 250
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 253
    :try_start_2
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 257
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 258
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    const-string p3, "Read %s: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object v0, v4, v3

    invoke-interface {p1, p3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 264
    :try_start_4
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p3

    const-string v4, "Failed to read %s object (%s)"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-interface {p3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 262
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p3

    const-string v4, "Failed to cast %s object (%s)"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-interface {p3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 260
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p3

    const-string v4, "Failed to find %s class (%s)"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-interface {p3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v6

    goto :goto_0

    :catch_4
    move-object p0, v0

    move-object v0, p1

    goto :goto_1

    :catch_5
    move-exception p1

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_0

    :catch_6
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_1

    :catch_7
    move-exception p1

    move-object p0, v0

    .line 269
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p1, v4, v3

    const-string p1, "Failed to open %s file for reading (%s)"

    invoke-interface {p3, p1, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_8
    move-object p0, v0

    .line 267
    :goto_1
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string v4, "%s file not found"

    invoke-interface {p1, v4, p3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    :goto_3
    if-eqz p0, :cond_0

    .line 273
    :try_start_5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_4

    :catch_9
    move-exception p0

    .line 276
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    aput-object p0, p3, v3

    const-string p0, "Failed to close %s file for reading (%s)"

    invoke-interface {p1, p0, p3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_4
    return-object v0
.end method

.method public static readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInputStream$GetField;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 329
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 331
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "Unable to read \'%s\' field in migration device with message (%s)"

    invoke-interface {v0, p0, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public static readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 324
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 798
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 799
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static runInBackground(Ljava/lang/Runnable;)V
    .locals 3

    .line 167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 168
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 171
    :cond_0
    new-instance v0, Lcom/adjust/sdk/Util$4;

    invoke-direct {v0}, Lcom/adjust/sdk/Util$4;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 178
    invoke-virtual {v0, v1}, Lcom/adjust/sdk/Util$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static runSyncInPlayAdIdSchedulerWithTimeout(Landroid/content/Context;Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;J)TR;"
        }
    .end annotation

    .line 146
    sget-object p0, Lcom/adjust/sdk/Util;->playAdIdScheduler:Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;

    if-nez p0, :cond_1

    .line 147
    const-class p0, Lcom/adjust/sdk/Util;

    monitor-enter p0

    .line 148
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Util;->playAdIdScheduler:Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;

    const-string v1, "PlayAdIdLibrary"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/adjust/sdk/Util;->playAdIdScheduler:Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;

    .line 151
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 154
    :cond_1
    :goto_0
    sget-object p0, Lcom/adjust/sdk/Util;->playAdIdScheduler:Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;->scheduleFutureWithReturn(Ljava/util/concurrent/Callable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    .line 157
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p2, p3, p1}, Ljava/util/concurrent/ScheduledFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    .line 440
    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-256"

    .line 444
    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 288
    :try_start_1
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 291
    :try_start_2
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 297
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p2

    const-string v3, "Wrote %s: %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p3, v4, v2

    aput-object p0, v4, v1

    invoke-interface {p2, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/NotSerializableException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 299
    :catch_0
    :try_start_4
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    const-string p2, "Failed to serialize %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p3, v3, v2

    invoke-interface {p0, p2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object p1, p2

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    const/4 p1, 0x0

    .line 302
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p3, v3, v2

    aput-object p0, v3, v1

    const-string p0, "Failed to open %s for writing (%s)"

    invoke-interface {p2, p0, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_0

    .line 306
    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 309
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p3, p2, v2

    aput-object p0, p2, v1

    const-string p0, "Failed to close %s file for writing (%s)"

    invoke-interface {p1, p0, p2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_2
    return-void
.end method
