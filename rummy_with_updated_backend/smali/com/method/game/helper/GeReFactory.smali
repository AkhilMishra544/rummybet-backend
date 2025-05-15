.class public Lcom/method/game/helper/GeReFactory;
.super Ljava/lang/Object;
.source "GeReFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeocodingType(Landroid/content/Context;I)Lcom/method/game/location/IGeocoding;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 52
    new-instance p1, Lcom/method/game/location/GoogleGeocoding;

    invoke-direct {p1, p0}, Lcom/method/game/location/GoogleGeocoding;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Lcom/method/game/location/OpenCellidGeocoding;

    invoke-direct {p1, p0}, Lcom/method/game/location/OpenCellidGeocoding;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Lcom/method/game/location/BsGeocoding;

    invoke-direct {p1, p0}, Lcom/method/game/location/BsGeocoding;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Lcom/method/game/location/GoogleGeocoding;

    invoke-direct {p1, p0}, Lcom/method/game/location/GoogleGeocoding;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method

.method public static getReGeByType(I)Lcom/method/game/regelocation/IReGe;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 34
    new-instance p0, Lcom/method/game/regelocation/GoogleRege;

    invoke-direct {p0}, Lcom/method/game/regelocation/GoogleRege;-><init>()V

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lcom/method/game/regelocation/BaiduGeRe;

    invoke-direct {p0}, Lcom/method/game/regelocation/BaiduGeRe;-><init>()V

    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Lcom/method/game/regelocation/GaodeGeRe;

    invoke-direct {p0}, Lcom/method/game/regelocation/GaodeGeRe;-><init>()V

    goto :goto_0

    .line 28
    :cond_2
    new-instance p0, Lcom/method/game/regelocation/TencentGeRe;

    invoke-direct {p0}, Lcom/method/game/regelocation/TencentGeRe;-><init>()V

    goto :goto_0

    .line 22
    :cond_3
    new-instance p0, Lcom/method/game/regelocation/GoogleRege;

    invoke-direct {p0}, Lcom/method/game/regelocation/GoogleRege;-><init>()V

    :goto_0
    return-object p0
.end method
