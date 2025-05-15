.class public Lcom/method/game/GeocodingManager;
.super Ljava/lang/Object;
.source "GeocodingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/GeocodingManager$GeoOption;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeocoding:Lcom/method/game/location/IGeocoding;

.field private mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/method/game/GeocodingManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    .line 29
    invoke-static {p1, v0}, Lcom/method/game/helper/GeReFactory;->getGeocodingType(Landroid/content/Context;I)Lcom/method/game/location/IGeocoding;

    move-result-object p1

    iput-object p1, p0, Lcom/method/game/GeocodingManager;->mGeocoding:Lcom/method/game/location/IGeocoding;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/method/game/GeocodingManager$GeoOption;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/method/game/GeocodingManager;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p2}, Lcom/method/game/GeocodingManager$GeoOption;->getGeoType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/method/game/helper/GeReFactory;->getGeocodingType(Landroid/content/Context;I)Lcom/method/game/location/IGeocoding;

    move-result-object p1

    iput-object p1, p0, Lcom/method/game/GeocodingManager;->mGeocoding:Lcom/method/game/location/IGeocoding;

    .line 35
    instance-of v0, p1, Lcom/method/game/location/GoogleGeocoding;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/method/game/location/GoogleGeocoding;

    invoke-virtual {p2}, Lcom/method/game/GeocodingManager$GeoOption;->getOption()Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/method/game/location/GoogleGeocoding;->setSimpleLocationOption(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public reStart()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/method/game/GeocodingManager;->start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V

    return-void
.end method

.method public start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/method/game/GeocodingManager;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/method/game/GeocodingManager;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    if-nez p1, :cond_1

    const-string p1, "simple location response listener null"

    .line 43
    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/method/game/GeocodingManager;->mGeocoding:Lcom/method/game/location/IGeocoding;

    iget-object v0, p0, Lcom/method/game/GeocodingManager;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding;->start(Lcom/method/game/location/IGeocoding$ISiLoResponseListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/method/game/GeocodingManager;->mGeocoding:Lcom/method/game/location/IGeocoding;

    .line 54
    iput-object v0, p0, Lcom/method/game/GeocodingManager;->mListener:Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    return-void
.end method
