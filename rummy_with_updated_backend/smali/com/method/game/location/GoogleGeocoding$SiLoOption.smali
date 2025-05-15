.class public Lcom/method/game/location/GoogleGeocoding$SiLoOption;
.super Ljava/lang/Object;
.source "GoogleGeocoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/method/game/location/GoogleGeocoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SiLoOption"
.end annotation


# instance fields
.field private distance:I

.field private isGpsFirst:Z

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->isGpsFirst:Z

    const/16 v0, 0x7d0

    .line 175
    iput v0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->time:I

    const/16 v0, 0xa

    .line 179
    iput v0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->distance:I

    return-void
.end method

.method static synthetic access$000(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->isGpsFirst:Z

    return p0
.end method

.method static synthetic access$100(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)I
    .locals 0

    .line 167
    iget p0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->time:I

    return p0
.end method

.method static synthetic access$200(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)I
    .locals 0

    .line 167
    iget p0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->distance:I

    return p0
.end method


# virtual methods
.method public getRequestTepe()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->distance:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->time:I

    return v0
.end method

.method public isGpsFirst()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->isGpsFirst:Z

    return v0
.end method

.method public setGpsFirst(Z)Lcom/method/game/location/GoogleGeocoding$SiLoOption;
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->isGpsFirst:Z

    return-object p0
.end method

.method public setRequestTepe(I)Lcom/method/game/location/GoogleGeocoding$SiLoOption;
    .locals 0

    .line 204
    iput p1, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->distance:I

    return-object p0
.end method

.method public setTime(I)Lcom/method/game/location/GoogleGeocoding$SiLoOption;
    .locals 0

    .line 195
    iput p1, p0, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->time:I

    return-object p0
.end method
