.class public Lorg/cocos2dx/lib/Cocos2dxAccelerometer;
.super Ljava/lang/Object;
.source "Cocos2dxAccelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;,
        Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;,
        Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxAccelerometer"


# instance fields
.field private final mAcceleration:Landroid/hardware/Sensor;

.field private final mAccelerationIncludingGravity:Landroid/hardware/Sensor;

.field private final mContext:Landroid/content/Context;

.field private mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

.field private final mGyroscope:Landroid/hardware/Sensor;

.field private mSamplingPeriodUs:I

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSamplingPeriodUs:I

    .line 69
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;-><init>(Lorg/cocos2dx/lib/Cocos2dxAccelerometer;)V

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    .line 76
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 79
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAcceleration:Landroid/hardware/Sensor;

    const/16 v0, 0xa

    .line 80
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerationIncludingGravity:Landroid/hardware/Sensor;

    const/4 v0, 0x4

    .line 81
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mGyroscope:Landroid/hardware/Sensor;

    return-void
.end method

.method public static native onSensorChanged(FFFJ)V
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public enable()V
    .locals 3

    .line 88
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAcceleration:Landroid/hardware/Sensor;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSamplingPeriodUs:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 89
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerationIncludingGravity:Landroid/hardware/Sensor;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSamplingPeriodUs:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 90
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mGyroscope:Landroid/hardware/Sensor;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSamplingPeriodUs:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public getDeviceMotionEvent()Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 114
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 116
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->accelerationIncludingGravity:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v2

    iput v2, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->x:F

    .line 117
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->accelerationIncludingGravity:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iput v2, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->y:F

    .line 118
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->accelerationIncludingGravity:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->z:F

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    .line 121
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->acceleration:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v2

    iput v2, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->x:F

    .line 122
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->acceleration:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iput v2, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->y:F

    .line 123
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->acceleration:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$Acceleration;->z:F

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 127
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->rotationRate:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    iput v2, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;->alpha:F

    .line 128
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->rotationRate:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;->beta:F

    .line 129
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mDeviceMotionEvent:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$DeviceMotionEvent;->rotationRate:Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$RotationRate;->gamma:F

    :cond_2
    :goto_0
    return-void
.end method

.method public setInterval(F)V
    .locals 2

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const v0, 0x49742400    # 1000000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 99
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSamplingPeriodUs:I

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 102
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    return-void
.end method
