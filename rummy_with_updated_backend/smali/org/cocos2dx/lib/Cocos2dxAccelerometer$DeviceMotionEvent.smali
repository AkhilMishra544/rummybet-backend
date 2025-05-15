.class Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;
.super Ljava/lang/Object;
.source "Cocos2dxAccelerometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxAccelerometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceMotionEvent"
.end annotation


# instance fields
.field public acceleration:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

.field public accelerationIncludingGravity:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

.field public rotationRate:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxAccelerometer;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->this$0:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    invoke-direct {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;-><init>(Lorg/cocos2dx/lib/Cocos2dxAccelerometer;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->acceleration:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    .line 65
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    invoke-direct {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;-><init>(Lorg/cocos2dx/lib/Cocos2dxAccelerometer;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->accelerationIncludingGravity:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    .line 66
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;

    invoke-direct {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;-><init>(Lorg/cocos2dx/lib/Cocos2dxAccelerometer;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->rotationRate:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;

    return-void
.end method
