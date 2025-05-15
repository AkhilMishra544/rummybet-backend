.class Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;
.super Ljava/lang/Object;
.source "Cocos2dxAccelerometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxAccelerometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotationRate"
.end annotation


# instance fields
.field public alpha:F

.field public beta:F

.field public gamma:F

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxAccelerometer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;->this$0:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;->alpha:F

    .line 59
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;->beta:F

    .line 60
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;->gamma:F

    return-void
.end method
