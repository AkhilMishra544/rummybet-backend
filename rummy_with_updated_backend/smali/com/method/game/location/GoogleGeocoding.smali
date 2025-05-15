.class public Lcom/method/game/location/GoogleGeocoding;
.super Ljava/lang/Object;
.source "GoogleGeocoding.java"

# interfaces
.implements Lcom/method/game/location/IGeocoding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/location/GoogleGeocoding$SiLoOption;,
        Lcom/method/game/location/GoogleGeocoding$MyLocationListener;
    }
.end annotation


# static fields
.field private static final GPS_TIME_SPACE:I = 0x6

.field private static final NET_TIME_SPACE:I = 0xc


# instance fields
.field private latlng:Lcom/method/game/bean/Latlng;

.field private lm:Landroid/location/LocationManager;

.field private mChangeListener:Lcom/method/game/location/GoogleGeocoding$MyLocationListener;

.field private mContext:Landroid/content/Context;

.field private mCounter:I

.field private mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

.field private mProvider:Ljava/lang/String;

.field private mSiLoOption:Lcom/method/game/location/GoogleGeocoding$SiLoOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mContext:Landroid/content/Context;

    .line 52
    new-instance p1, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;

    invoke-direct {p1, p0}, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;-><init>(Lcom/method/game/location/GoogleGeocoding;)V

    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mChangeListener:Lcom/method/game/location/GoogleGeocoding$MyLocationListener;

    return-void
.end method

.method static synthetic access$300(Lcom/method/game/location/GoogleGeocoding;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/method/game/location/GoogleGeocoding;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/method/game/location/GoogleGeocoding;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mProvider:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/bean/Latlng;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/method/game/location/GoogleGeocoding;->latlng:Lcom/method/game/bean/Latlng;

    return-object p0
.end method

.method static synthetic access$402(Lcom/method/game/location/GoogleGeocoding;Lcom/method/game/bean/Latlng;)Lcom/method/game/bean/Latlng;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->latlng:Lcom/method/game/bean/Latlng;

    return-object p1
.end method

.method static synthetic access$500(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/IGeocoding$ISiLoResponseListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/method/game/location/GoogleGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/GoogleGeocoding$SiLoOption;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/method/game/location/GoogleGeocoding;->mSiLoOption:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    return-object p0
.end method

.method static synthetic access$700(Lcom/method/game/location/GoogleGeocoding;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/method/game/location/GoogleGeocoding;->mCounter:I

    return p0
.end method

.method static synthetic access$702(Lcom/method/game/location/GoogleGeocoding;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/method/game/location/GoogleGeocoding;->mCounter:I

    return p1
.end method

.method static synthetic access$712(Lcom/method/game/location/GoogleGeocoding;I)I
    .locals 1

    .line 24
    iget v0, p0, Lcom/method/game/location/GoogleGeocoding;->mCounter:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/method/game/location/GoogleGeocoding;->mCounter:I

    return v0
.end method

.method static synthetic access$800(Lcom/method/game/location/GoogleGeocoding;)Landroid/location/LocationManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/method/game/location/GoogleGeocoding;->lm:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/method/game/location/GoogleGeocoding;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/method/game/location/GoogleGeocoding;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/method/game/location/GoogleGeocoding;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/method/game/location/GoogleGeocoding;->mSiLoOption:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    invoke-static {v1}, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->access$100(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/method/game/location/GoogleGeocoding;->mSiLoOption:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    invoke-static {v1}, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->access$200(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Lcom/method/game/location/GoogleGeocoding;->mChangeListener:Lcom/method/game/location/GoogleGeocoding$MyLocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-object p1
.end method


# virtual methods
.method public reStart()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/method/game/location/GoogleGeocoding;->start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V

    return-void
.end method

.method public setSimpleLocationOption(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mSiLoOption:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    return-void
.end method

.method public start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    if-nez p1, :cond_1

    return-void

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "location"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->lm:Landroid/location/LocationManager;

    .line 68
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/method/game/helper/Helper;->checkPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "location no permission"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mSiLoOption:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    if-nez p1, :cond_3

    .line 74
    new-instance p1, Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    invoke-direct {p1}, Lcom/method/game/location/GoogleGeocoding$SiLoOption;-><init>()V

    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mSiLoOption:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mSiLoOption:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->access$000(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->lm:Landroid/location/LocationManager;

    invoke-static {p1}, Lcom/method/game/helper/Helper;->getGPSProvider(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->lm:Landroid/location/LocationManager;

    invoke-static {p1}, Lcom/method/game/helper/Helper;->getNetWorkProvider(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mProvider:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 77
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    const-string v0, "location provider no exist"

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_5
    invoke-direct {p0, p1}, Lcom/method/game/location/GoogleGeocoding;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/method/game/location/GoogleGeocoding;->mProvider:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/method/game/location/GoogleGeocoding;->lm:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/method/game/location/GoogleGeocoding;->mChangeListener:Lcom/method/game/location/GoogleGeocoding$MyLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 92
    :cond_0
    iput-object v0, p0, Lcom/method/game/location/GoogleGeocoding;->lm:Landroid/location/LocationManager;

    .line 93
    iput-object v0, p0, Lcom/method/game/location/GoogleGeocoding;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    .line 94
    iput-object v0, p0, Lcom/method/game/location/GoogleGeocoding;->mChangeListener:Lcom/method/game/location/GoogleGeocoding$MyLocationListener;

    return-void
.end method
