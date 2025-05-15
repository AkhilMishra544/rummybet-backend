.class public Lcom/method/game/ReverseGeocodingManager;
.super Ljava/lang/Object;
.source "ReverseGeocodingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/method/game/ReverseGeocodingManager$ReGeOption;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mGeRe:Lcom/method/game/regelocation/IReGe;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/method/game/ReverseGeocodingManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Lcom/method/game/helper/GeReFactory;->getReGeByType(I)Lcom/method/game/regelocation/IReGe;

    move-result-object p1

    iput-object p1, p0, Lcom/method/game/ReverseGeocodingManager;->mGeRe:Lcom/method/game/regelocation/IReGe;

    .line 27
    iget-object v0, p0, Lcom/method/game/ReverseGeocodingManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/method/game/regelocation/IReGe;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/method/game/ReverseGeocodingManager$ReGeOption;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/method/game/ReverseGeocodingManager;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p2}, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->getReGeType()I

    move-result p1

    invoke-static {p1}, Lcom/method/game/helper/GeReFactory;->getReGeByType(I)Lcom/method/game/regelocation/IReGe;

    move-result-object p1

    iput-object p1, p0, Lcom/method/game/ReverseGeocodingManager;->mGeRe:Lcom/method/game/regelocation/IReGe;

    .line 33
    invoke-interface {p1, p2}, Lcom/method/game/regelocation/IReGe;->setOptions(Lcom/method/game/ReverseGeocodingManager$ReGeOption;)V

    .line 34
    iget-object p1, p0, Lcom/method/game/ReverseGeocodingManager;->mGeRe:Lcom/method/game/regelocation/IReGe;

    iget-object p2, p0, Lcom/method/game/ReverseGeocodingManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/method/game/regelocation/IReGe;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addReGeListener(Lcom/method/game/regelocation/IReGe$IReGeListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/method/game/ReverseGeocodingManager;->mGeRe:Lcom/method/game/regelocation/IReGe;

    invoke-interface {v0, p1}, Lcom/method/game/regelocation/IReGe;->addReGeListener(Lcom/method/game/regelocation/IReGe$IReGeListener;)V

    return-void
.end method

.method public reGeToAddress(Lcom/method/game/bean/Latlng;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/method/game/ReverseGeocodingManager;->mGeRe:Lcom/method/game/regelocation/IReGe;

    invoke-interface {v0, p1}, Lcom/method/game/regelocation/IReGe;->reGeToAddress(Lcom/method/game/bean/Latlng;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/method/game/ReverseGeocodingManager;->mGeRe:Lcom/method/game/regelocation/IReGe;

    invoke-interface {v0}, Lcom/method/game/regelocation/IReGe;->stop()V

    return-void
.end method
