.class Lcom/method/game/location/GoogleGeocoding$MyLocationListener;
.super Ljava/lang/Object;
.source "GoogleGeocoding.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/method/game/location/GoogleGeocoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/method/game/location/GoogleGeocoding;


# direct methods
.method constructor <init>(Lcom/method/game/location/GoogleGeocoding;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {v0}, Lcom/method/game/location/GoogleGeocoding;->access$300(Lcom/method/game/location/GoogleGeocoding;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/method/game/helper/ConverHelper;->loConverToLatlng(Landroid/location/Location;)Lcom/method/game/bean/Latlng;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/method/game/location/GoogleGeocoding;->access$400(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/bean/Latlng;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/method/game/location/GoogleGeocoding;->access$402(Lcom/method/game/location/GoogleGeocoding;Lcom/method/game/bean/Latlng;)Lcom/method/game/bean/Latlng;

    .line 111
    iget-object v0, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {v0}, Lcom/method/game/location/GoogleGeocoding;->access$500(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {v1}, Lcom/method/game/location/GoogleGeocoding;->access$400(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/bean/Latlng;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onSuccess(Lcom/method/game/bean/Latlng;)V

    .line 112
    iget-object v0, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {v0}, Lcom/method/game/location/GoogleGeocoding;->access$600(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    move-result-object v0

    invoke-static {v0}, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->access$000(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)Z

    move-result v0

    const-string v1, "location latlng = null , provider = "

    if-eqz v0, :cond_5

    const/16 v0, 0xc

    if-eqz p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$300(Lcom/method/game/location/GoogleGeocoding;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "gps"

    if-ne p1, v2, :cond_2

    .line 115
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1, v1}, Lcom/method/game/location/GoogleGeocoding;->access$702(Lcom/method/game/location/GoogleGeocoding;I)I

    goto/16 :goto_1

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$600(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    move-result-object v2

    invoke-static {v2}, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->access$100(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {p1, v2}, Lcom/method/game/location/GoogleGeocoding;->access$712(Lcom/method/game/location/GoogleGeocoding;I)I

    .line 118
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$700(Lcom/method/game/location/GoogleGeocoding;)I

    move-result p1

    if-le p1, v0, :cond_6

    .line 119
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$800(Lcom/method/game/location/GoogleGeocoding;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/method/game/helper/Helper;->getGPSProvider(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/method/game/location/GoogleGeocoding;->access$900(Lcom/method/game/location/GoogleGeocoding;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/method/game/location/GoogleGeocoding;->access$302(Lcom/method/game/location/GoogleGeocoding;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1, v1}, Lcom/method/game/location/GoogleGeocoding;->access$702(Lcom/method/game/location/GoogleGeocoding;I)I

    goto/16 :goto_1

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$600(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/GoogleGeocoding$SiLoOption;

    move-result-object v2

    invoke-static {v2}, Lcom/method/game/location/GoogleGeocoding$SiLoOption;->access$100(Lcom/method/game/location/GoogleGeocoding$SiLoOption;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {p1, v2}, Lcom/method/game/location/GoogleGeocoding;->access$712(Lcom/method/game/location/GoogleGeocoding;I)I

    .line 126
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$700(Lcom/method/game/location/GoogleGeocoding;)I

    move-result p1

    const/4 v2, 0x6

    if-lt p1, v2, :cond_4

    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$700(Lcom/method/game/location/GoogleGeocoding;)I

    move-result p1

    if-ge p1, v0, :cond_4

    .line 127
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$800(Lcom/method/game/location/GoogleGeocoding;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/method/game/helper/Helper;->getNetWorkProvider(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/method/game/location/GoogleGeocoding;->access$900(Lcom/method/game/location/GoogleGeocoding;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/method/game/location/GoogleGeocoding;->access$302(Lcom/method/game/location/GoogleGeocoding;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 128
    :cond_4
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$700(Lcom/method/game/location/GoogleGeocoding;)I

    move-result p1

    if-le p1, v0, :cond_6

    .line 130
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$500(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {v1}, Lcom/method/game/location/GoogleGeocoding;->access$300(Lcom/method/game/location/GoogleGeocoding;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    .line 136
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$500(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {v1}, Lcom/method/game/location/GoogleGeocoding;->access$300(Lcom/method/game/location/GoogleGeocoding;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/method/game/location/IGeocoding$ISiLoResponseListener;->onFail(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/method/game/location/GoogleGeocoding$MyLocationListener;->this$0:Lcom/method/game/location/GoogleGeocoding;

    invoke-static {p1}, Lcom/method/game/location/GoogleGeocoding;->access$500(Lcom/method/game/location/GoogleGeocoding;)Lcom/method/game/location/IGeocoding$ISiLoResponseListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-le p1, p3, :cond_1

    const-string p1, "after api 29 always AVAILABLE"

    .line 145
    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "current provider out of condition"

    .line 150
    invoke-static {p1}, Lcom/method/game/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
