.class public interface abstract Lcom/method/game/location/IGeocoding$ISiLoResponseListener;
.super Ljava/lang/Object;
.source "IGeocoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/method/game/location/IGeocoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISiLoResponseListener"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/method/game/bean/Latlng;)V
.end method
