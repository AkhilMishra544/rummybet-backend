.class public Lcom/java/rummybors/util/NetChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetChangeReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String; = "NetChangeReceiver"


# instance fields
.field private hasReg:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/java/rummybors/util/NetChangeReceiver;->hasReg:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 20
    sget-object p2, Lcom/java/rummybors/util/NetChangeReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PfDataTransReceiver receive action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 21
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/java/rummybors/util/NetChangeReceiver;->hasReg:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/java/rummybors/util/NetChangeReceiver;->hasReg:Ljava/lang/Boolean;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/java/rummybors/util/GameUtil;->getNetworkType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    sget p2, Lcom/java/rummybors/util/AndroidBridge;->NET_CHANGE_BACK:I

    if-lez p2, :cond_1

    .line 30
    sget-object p2, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v0, Lcom/java/rummybors/util/NetChangeReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/java/rummybors/util/NetChangeReceiver$1;-><init>(Lcom/java/rummybors/util/NetChangeReceiver;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 37
    :cond_1
    sget-object p1, Lcom/java/rummybors/util/NetChangeReceiver;->TAG:Ljava/lang/String;

    const-string p2, "\u7f51\u7edc\u53d8\u5316\u4e86"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
