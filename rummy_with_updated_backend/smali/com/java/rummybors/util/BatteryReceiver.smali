.class public Lcom/java/rummybors/util/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String; = "BatteryReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "level"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/4 v0, 0x1

    const-string v1, "status"

    .line 20
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 26
    :cond_0
    sget p1, Lcom/java/rummybors/util/AndroidBridge;->GET_BATTERY_BACK:I

    if-lez p1, :cond_1

    .line 29
    sget-object p1, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance p2, Lcom/java/rummybors/util/BatteryReceiver$1;

    invoke-direct {p2, p0}, Lcom/java/rummybors/util/BatteryReceiver$1;-><init>(Lcom/java/rummybors/util/BatteryReceiver;)V

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
