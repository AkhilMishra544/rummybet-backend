.class public Lcom/java/rummybors/util/AndroidBridge;
.super Ljava/lang/Object;
.source "AndroidBridge.java"


# static fields
.field public static final CONNECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static City:Ljava/lang/String; = ""

.field public static GET_BATTERY_BACK:I = 0x0

.field public static IPtype:Ljava/lang/String; = null

.field public static LAND_SCCAPE_BACK:I = 0x0

.field public static LOCAL_OPEN_URL:Ljava/lang/String; = null

.field public static Latitude:D = 0.0

.field public static Longitude:D = 0.0

.field public static final NETWORK_2G:I = 0x2

.field public static final NETWORK_3G:I = 0x3

.field public static final NETWORK_4G:I = 0x4

.field public static final NETWORK_WIFI:I = 0x1

.field public static NET_CHANGE_BACK:I = 0x0

.field public static OPEN_LOCCTION:Ljava/lang/String; = "0"

.field public static Province:Ljava/lang/String; = ""

.field private static final SDCARD_ROOT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = "AndroidBridge"

.field public static c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity; = null

.field public static checkOrderBackUrl:Ljava/lang/String; = ""

.field private static mPackageManager:Landroid/content/pm/PackageManager; = null

.field public static m_battery:F = 1.0f

.field public static playLogined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/java/rummybors/util/AndroidBridge;->SDCARD_ROOT:Ljava/lang/String;

    const/4 v0, 0x0

    .line 214
    sput v0, Lcom/java/rummybors/util/AndroidBridge;->NET_CHANGE_BACK:I

    const-string v1, ""

    .line 223
    sput-object v1, Lcom/java/rummybors/util/AndroidBridge;->LOCAL_OPEN_URL:Ljava/lang/String;

    .line 224
    sput-boolean v0, Lcom/java/rummybors/util/AndroidBridge;->playLogined:Z

    .line 336
    sput v0, Lcom/java/rummybors/util/AndroidBridge;->GET_BATTERY_BACK:I

    const-string v1, "V4"

    .line 342
    sput-object v1, Lcom/java/rummybors/util/AndroidBridge;->IPtype:Ljava/lang/String;

    .line 382
    sput v0, Lcom/java/rummybors/util/AndroidBridge;->LAND_SCCAPE_BACK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppState(Ljava/lang/String;I)V
    .locals 6

    const-string p1, "\\|"

    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 270
    sget-object p1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sput-object p1, Lcom/java/rummybors/util/AndroidBridge;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    const-string v0, ""

    move-object v2, v0

    const/4 v1, 0x0

    .line 271
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 272
    aget-object v3, p0, v1

    .line 274
    :try_start_0
    sget-object v4, Lcom/java/rummybors/util/AndroidBridge;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v5, 0x0

    .line 277
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v4, v5

    :goto_1
    if-nez v4, :cond_0

    goto :goto_2

    .line 282
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    goto :goto_2

    .line 285
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static checkOneAppState(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 296
    :try_start_0
    sget-object v1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/java/rummybors/util/AndroidBridge;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 297
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkPermission(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 89
    :cond_0
    sget-object p0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/java/rummybors/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static checkSDEnough()Ljava/lang/String;
    .locals 1

    .line 205
    invoke-static {}, Lcom/java/rummybors/util/GameUtil;->isSDCardPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/java/rummybors/util/GameUtil;->isExternalStorageEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "true"

    return-object v0

    :cond_1
    const-string v0, "false"

    return-object v0
.end method

.method public static cleanHandleOpenUrl()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    sput-object v0, Lcom/java/rummybors/util/AndroidBridge;->LOCAL_OPEN_URL:Ljava/lang/String;

    return-void
.end method

.method public static clearWebViewCache()V
    .locals 2

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-clearWebViewCache--"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "webview.db"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 151
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "webviewCache.db"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method public static copyStr(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    const-string v0, "copystr"

    .line 317
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Label"

    .line 326
    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 328
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static deviceIPType()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 346
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 348
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 350
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 351
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 353
    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_5

    .line 354
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "::1%1"

    .line 355
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 358
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fe80"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "V6"

    .line 363
    sput-object v2, Lcom/java/rummybors/util/AndroidBridge;->IPtype:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_4
    :goto_2
    sget-object v4, Lcom/java/rummybors/util/AndroidBridge;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ip1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    :cond_5
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "127.0.0.1"

    .line 367
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 368
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "V4"

    .line 369
    sput-object v2, Lcom/java/rummybors/util/AndroidBridge;->IPtype:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 375
    sget-object v2, Lcom/java/rummybors/util/AndroidBridge;->TAG:Ljava/lang/String;

    const-string v3, "SocketException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 378
    :cond_6
    sget-object v1, Lcom/java/rummybors/util/AndroidBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hostIp= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->IPtype:Ljava/lang/String;

    return-object v0
.end method

.method public static dotEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getBattery(I)V
    .locals 3

    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 339
    sget-object v1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v2, Lcom/java/rummybors/util/BatteryReceiver;

    invoke-direct {v2}, Lcom/java/rummybors/util/BatteryReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    sput p0, Lcom/java/rummybors/util/AndroidBridge;->GET_BATTERY_BACK:I

    return-void
.end method

.method public static getCurrentNetType(Landroid/content/Context;)I
    .locals 6

    const-string v0, "connectivity"

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 170
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    if-eq p0, v2, :cond_5

    if-eq p0, v4, :cond_5

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    if-eq p0, v0, :cond_6

    const/16 v1, 0x8

    if-eq p0, v1, :cond_6

    const/4 v1, 0x6

    if-eq p0, v1, :cond_6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_6

    const/16 v1, 0xc

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x2

    :cond_6
    :goto_1
    return v0
.end method

.method public static getHandleOpenUrl()Ljava/lang/String;
    .locals 1

    .line 245
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->LOCAL_OPEN_URL:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getImsi()Ljava/lang/String;
    .locals 3

    .line 74
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/java/rummybors/util/PermissionUtils;->checkAndRequestPermission(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    :try_start_0
    invoke-static {}, Lcom/java/rummybors/util/PhoneUtils;->getIMSI()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static getMacAdd()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 113
    :try_start_0
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    .line 130
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getNetwork()Ljava/lang/String;
    .locals 4

    const-string v0, "WIFI"

    const-string v1, "2G"

    const-string v2, "3G"

    const-string v3, "4G"

    .line 193
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1}, Lcom/java/rummybors/util/AndroidBridge;->getCurrentNetType(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 198
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "OTHER"

    return-object v0
.end method

.method public static getPermission(I)V
    .locals 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    :goto_0
    if-eqz v0, :cond_1

    .line 103
    sget-object v1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1, v0}, Lcom/java/rummybors/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    sget-object v1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1, v0, p0}, Lcom/java/rummybors/util/PermissionUtils;->requestPermission(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static isEmulator()Ljava/lang/String;
    .locals 10

    .line 397
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tel:123456"

    .line 398
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    sget-object v1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 403
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 408
    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 418
    :goto_2
    sget-object v4, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    .line 419
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    .line 427
    :goto_3
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "generic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 428
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "vbox"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 429
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "test-keys"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "google_sdk"

    .line 430
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "Emulator"

    .line 431
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v8, "unknown"

    .line 432
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v8, "android"

    .line 433
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "Android SDK built for x86"

    .line 434
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v9, "Genymotion"

    .line 435
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_4
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 437
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v6, "phone"

    .line 438
    invoke-virtual {v5, v6}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 439
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    const-string v0, "2"

    return-object v0

    :cond_7
    const-string v0, "1"

    return-object v0
.end method

.method public static registerDateTransReceiver(I)V
    .locals 3

    .line 216
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->TAG:Ljava/lang/String;

    const-string v1, "register receiver android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 220
    sget-object v1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v2, Lcom/java/rummybors/util/NetChangeReceiver;

    invoke-direct {v2}, Lcom/java/rummybors/util/NetChangeReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    sput p0, Lcom/java/rummybors/util/AndroidBridge;->NET_CHANGE_BACK:I

    return-void
.end method

.method private requestCameraPermission()V
    .locals 0

    return-void
.end method

.method public static setHandleOpenUrl(Ljava/lang/String;)V
    .locals 4

    .line 226
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "twl setHandleOpenUrl-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/java/rummybors/util/AndroidBridge;->playLogined:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-boolean v0, Lcom/java/rummybors/util/AndroidBridge;->playLogined:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 229
    new-instance v1, Lcom/java/rummybors/util/AndroidBridge$1;

    invoke-direct {v1, p0}, Lcom/java/rummybors/util/AndroidBridge$1;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 239
    :cond_0
    sput-object p0, Lcom/java/rummybors/util/AndroidBridge;->LOCAL_OPEN_URL:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static setLanscape(Ljava/lang/String;)V
    .locals 1

    const-string v0, "1"

    .line 386
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 388
    sget-object p0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 390
    :cond_0
    sget-object p0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public static setOrderCheckUrl(Ljava/lang/String;)V
    .locals 0

    .line 155
    sput-object p0, Lcom/java/rummybors/util/AndroidBridge;->checkOrderBackUrl:Ljava/lang/String;

    return-void
.end method

.method public static setPlayerLogined()V
    .locals 2

    .line 259
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->TAG:Ljava/lang/String;

    const-string v1, "twl setPlayerLogined-->"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 260
    sput-boolean v0, Lcom/java/rummybors/util/AndroidBridge;->playLogined:Z

    return-void
.end method

.method public static vibrator()V
    .locals 3

    .line 141
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x64

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method
