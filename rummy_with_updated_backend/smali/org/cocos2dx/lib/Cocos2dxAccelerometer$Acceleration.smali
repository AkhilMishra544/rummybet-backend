.class Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;
.super Ljava/lang/Object;
.source "Cocos2dxAccelerometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxAccelerometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Acceleration"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxAccelerometer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->this$0:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->x:F

    .line 53
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->y:F

    .line 54
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->z:F

    return-void
.end method
