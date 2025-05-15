.class public Lcom/java/rummybors/googlepay/ChargePacket;
.super Ljava/lang/Object;
.source "ChargePacket.java"


# instance fields
.field public order:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetOrder(Ljava/lang/String;)Lcom/java/rummybors/googlepay/ChargePacket;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/java/rummybors/googlepay/ChargePacket;->order:Ljava/lang/String;

    return-object p0
.end method

.method public SetProduct(Ljava/lang/String;)Lcom/java/rummybors/googlepay/ChargePacket;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/java/rummybors/googlepay/ChargePacket;->product:Ljava/lang/String;

    return-object p0
.end method

.method public SetToken(Ljava/lang/String;)Lcom/java/rummybors/googlepay/ChargePacket;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/java/rummybors/googlepay/ChargePacket;->token:Ljava/lang/String;

    return-object p0
.end method
