.class public interface abstract Lcom/method/game/regelocation/IReGe;
.super Ljava/lang/Object;
.source "IReGe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/regelocation/IReGe$IReGeListener;
    }
.end annotation


# virtual methods
.method public abstract addReGeListener(Lcom/method/game/regelocation/IReGe$IReGeListener;)V
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract reGeToAddress(Lcom/method/game/bean/Latlng;)V
.end method

.method public abstract setOptions(Lcom/method/game/ReverseGeocodingManager$ReGeOption;)V
.end method

.method public abstract stop()V
.end method
