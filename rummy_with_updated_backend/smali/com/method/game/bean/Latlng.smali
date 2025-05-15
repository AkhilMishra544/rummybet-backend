.class public Lcom/method/game/bean/Latlng;
.super Ljava/lang/Object;
.source "Latlng.java"


# instance fields
.field address:Ljava/lang/String;

.field addressLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bearing:F

.field city:Ljava/lang/String;

.field cityCode:Ljava/lang/String;

.field country:Ljava/lang/String;

.field countryCode:Ljava/lang/String;

.field latitude:D

.field longitude:D

.field name:Ljava/lang/String;

.field provider:Ljava/lang/String;

.field speed:F

.field sublocality:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/method/game/bean/Latlng;->addressLines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->addressLines:Ljava/util/List;

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/method/game/bean/Latlng;->bearing:F

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/method/game/bean/Latlng;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/method/game/bean/Latlng;->longitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/method/game/bean/Latlng;->speed:F

    return v0
.end method

.method public getSublocality()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/method/game/bean/Latlng;->sublocality:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->address:Ljava/lang/String;

    return-void
.end method

.method public setAddressLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->addressLines:Ljava/util/List;

    return-void
.end method

.method public setBearing(F)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/method/game/bean/Latlng;->bearing:F

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->city:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/method/game/bean/Latlng;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/method/game/bean/Latlng;->longitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->name:Ljava/lang/String;

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->provider:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/method/game/bean/Latlng;->speed:F

    return-void
.end method

.method public setSublocality(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/method/game/bean/Latlng;->sublocality:Ljava/lang/String;

    return-void
.end method
