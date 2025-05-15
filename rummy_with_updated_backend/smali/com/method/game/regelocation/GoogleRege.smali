.class public Lcom/method/game/regelocation/GoogleRege;
.super Ljava/lang/Object;
.source "GoogleRege.java"

# interfaces
.implements Lcom/method/game/regelocation/IReGe;


# static fields
.field private static MAX_RESULTS:I = 0x1


# instance fields
.field private geocoder:Landroid/location/Geocoder;

.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCriteria:Landroid/location/Criteria;

.field private mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addReGeListener(Lcom/method/game/regelocation/IReGe$IReGeListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 35
    iget-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    if-eqz p1, :cond_0

    const-string v0, "geocoder is out of condition"

    .line 36
    invoke-interface {p1, v1, v0}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mContext:Landroid/content/Context;

    .line 40
    iget-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mCriteria:Landroid/location/Criteria;

    if-nez p1, :cond_2

    .line 41
    new-instance p1, Landroid/location/Criteria;

    invoke-direct {p1}, Landroid/location/Criteria;-><init>()V

    iput-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mCriteria:Landroid/location/Criteria;

    .line 42
    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 43
    iget-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mCriteria:Landroid/location/Criteria;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 44
    iget-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 45
    iget-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 46
    iget-object p1, p0, Lcom/method/game/regelocation/GoogleRege;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    :cond_2
    return-void
.end method

.method public reGeToAddress(Lcom/method/game/bean/Latlng;)V
    .locals 6

    .line 57
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/method/game/regelocation/GoogleRege;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/method/game/regelocation/GoogleRege;->geocoder:Landroid/location/Geocoder;

    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/method/game/bean/Latlng;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/method/game/bean/Latlng;->getLongitude()D

    move-result-wide v3

    sget v5, Lcom/method/game/regelocation/GoogleRege;->MAX_RESULTS:I

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/method/game/regelocation/GoogleRege;->mAddresses:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/method/game/regelocation/GoogleRege;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    const-string v2, "geocoder get from location error:"

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/method/game/regelocation/GoogleRege;->mAddresses:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/method/game/regelocation/GoogleRege;->mAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-static {p1, v0}, Lcom/method/game/helper/ConverHelper;->asConverToLatlng(Lcom/method/game/bean/Latlng;Landroid/location/Address;)Lcom/method/game/bean/Latlng;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/method/game/regelocation/GoogleRege;->mListener:Lcom/method/game/regelocation/IReGe$IReGeListener;

    if-nez v0, :cond_1

    const-string p1, "geocoder listener null"

    .line 69
    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {v0, v1, p1}, Lcom/method/game/regelocation/IReGe$IReGeListener;->onSuccess(ILcom/method/game/bean/Latlng;)V

    goto :goto_1

    :cond_2
    const-string p1, "geocoder get from location address size null or 0"

    .line 73
    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOptions(Lcom/method/game/ReverseGeocodingManager$ReGeOption;)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/method/game/regelocation/GoogleRege;->mCriteria:Landroid/location/Criteria;

    .line 80
    iput-object v0, p0, Lcom/method/game/regelocation/GoogleRege;->mAddresses:Ljava/util/List;

    return-void
.end method
