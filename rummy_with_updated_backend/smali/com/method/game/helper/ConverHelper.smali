.class public Lcom/method/game/helper/ConverHelper;
.super Ljava/lang/Object;
.source "ConverHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asConverToLatlng(Lcom/method/game/bean/Latlng;Landroid/location/Address;)Lcom/method/game/bean/Latlng;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/method/game/bean/Latlng;->setCountry(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/method/game/bean/Latlng;->setCountryCode(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/method/game/bean/Latlng;->setCity(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/method/game/bean/Latlng;->setSublocality(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/method/game/bean/Latlng;->setAddress(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/method/game/bean/Latlng;->setName(Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loConverToLatlng(Landroid/location/Location;)Lcom/method/game/bean/Latlng;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lcom/method/game/bean/Latlng;

    invoke-direct {v0}, Lcom/method/game/bean/Latlng;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/method/game/bean/Latlng;->setLatitude(D)V

    .line 15
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/method/game/bean/Latlng;->setLongitude(D)V

    .line 16
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/method/game/bean/Latlng;->setProvider(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/method/game/bean/Latlng;->setBearing(F)V

    .line 19
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/method/game/bean/Latlng;->setSpeed(F)V

    return-object v0
.end method
