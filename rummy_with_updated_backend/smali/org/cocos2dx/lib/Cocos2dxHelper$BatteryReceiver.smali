.class Lorg/cocos2dx/lib/Cocos2dxHelper$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Cocos2dxHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryReceiver"
.end annotation


# instance fields
.field public sBatteryLevel:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxHelper$BatteryReceiver;->sBatteryLevel:F

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 109
    invoke-virtual {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxHelper$BatteryReceiver;->setBatteryLevelByIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setBatteryLevelByIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "level"

    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "scale"

    .line 115
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/4 p1, 0x0

    .line 118
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxHelper$BatteryReceiver;->sBatteryLevel:F

    :cond_0
    return-void
.end method
