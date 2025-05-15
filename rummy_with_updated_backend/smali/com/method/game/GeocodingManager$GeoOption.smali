.class public Lcom/method/game/GeocodingManager$GeoOption;
.super Ljava/lang/Object;
.source "GeocodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/method/game/GeocodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoOption"
.end annotation


# instance fields
.field private GeoType:I

.field private option:Lcom/method/game/location/GoogleGeocoding$SiLoOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 63
    iput v0, p0, Lcom/method/game/GeocodingManager$GeoOption;->GeoType:I

    return-void
.end method


# virtual methods
.method public getGeoType()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/method/game/GeocodingManager$GeoOption;->GeoType:I

    return v0
.end method

.method public getOption()Lcom/method/game/location/GoogleGeocoding$SiLoOption;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/method/game/GeocodingManager$GeoOption;->option:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    return-object v0
.end method

.method public setGeoType(I)Lcom/method/game/GeocodingManager$GeoOption;
    .locals 0

    .line 75
    iput p1, p0, Lcom/method/game/GeocodingManager$GeoOption;->GeoType:I

    return-object p0
.end method

.method public setOption(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)Lcom/method/game/GeocodingManager$GeoOption;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/method/game/GeocodingManager$GeoOption;->option:Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    return-object p0
.end method
