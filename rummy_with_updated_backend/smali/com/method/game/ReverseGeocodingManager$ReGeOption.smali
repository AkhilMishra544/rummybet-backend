.class public Lcom/method/game/ReverseGeocodingManager$ReGeOption;
.super Ljava/lang/Object;
.source "ReverseGeocodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/method/game/ReverseGeocodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReGeOption"
.end annotation


# instance fields
.field private isSn:Z

.field private islog:Z

.field private key:Ljava/lang/String;

.field private reGeType:I

.field private sk:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->reGeType:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->isSn:Z

    const-string v1, ""

    .line 63
    iput-object v1, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->key:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->sk:Ljava/lang/String;

    .line 71
    iput-boolean v0, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->islog:Z

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getReGeType()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->reGeType:I

    return v0
.end method

.method public getSk()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->sk:Ljava/lang/String;

    return-object v0
.end method

.method public isIslog()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/method/game/util/LogUtil;->DEBUG:Z

    return v0
.end method

.method public isSn()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->isSn:Z

    return v0
.end method

.method public setIslog(Z)Lcom/method/game/ReverseGeocodingManager$ReGeOption;
    .locals 0

    .line 96
    sput-boolean p1, Lcom/method/game/util/LogUtil;->DEBUG:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/method/game/ReverseGeocodingManager$ReGeOption;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setReGeType(I)Lcom/method/game/ReverseGeocodingManager$ReGeOption;
    .locals 0

    .line 78
    iput p1, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->reGeType:I

    return-object p0
.end method

.method public setSk(Ljava/lang/String;)Lcom/method/game/ReverseGeocodingManager$ReGeOption;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->sk:Ljava/lang/String;

    return-object p0
.end method

.method public setSn(Z)Lcom/method/game/ReverseGeocodingManager$ReGeOption;
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/method/game/ReverseGeocodingManager$ReGeOption;->isSn:Z

    return-object p0
.end method
