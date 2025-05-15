.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxRenderer$OnGameEngineInitializedListener;
    }
.end annotation


# static fields
.field private static final INTERVAL_60_FPS:J = 0xfe502aL

.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "Cocos2dxRenderer"

.field private static sAnimationInterval:J = 0xfe502aL

.field private static sRenderer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/cocos2dx/lib/Cocos2dxRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultResourcePath:Ljava/lang/String;

.field private mFrameCount:J

.field private mGameEngineInitializedListener:Lorg/cocos2dx/lib/Cocos2dxRenderer$OnGameEngineInitializedListener;

.field private mLastTickInNanoSeconds:J

.field private mNativeInitCompleted:Z

.field private mNeedShowFPS:Z

.field private mNeedToPause:Z

.field private mOldNanoTime:J

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    .line 55
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNeedShowFPS:Z

    const-string v1, ""

    .line 56
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mDefaultResourcePath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 57
    iput-wide v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mOldNanoTime:J

    .line 58
    iput-wide v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mFrameCount:J

    .line 59
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNeedToPause:Z

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxRenderer;)Lorg/cocos2dx/lib/Cocos2dxRenderer$OnGameEngineInitializedListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mGameEngineInitializedListener:Lorg/cocos2dx/lib/Cocos2dxRenderer$OnGameEngineInitializedListener;

    return-object p0
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(IILjava/lang/String;)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyEvent(IZ)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSurfaceChanged(II)V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setPreferredFramesPerSecond(I)V
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double v2, v2, v0

    double-to-long v0, v2

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 264
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 1

    .line 212
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .line 260
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0

    .line 256
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    return-void
.end method

.method public handleKeyDown(I)V
    .locals 1

    .line 219
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 222
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyEvent(IZ)Z

    return-void
.end method

.method public handleKeyUp(I)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 229
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyEvent(IZ)Z

    return-void
.end method

.method public handleOnPause()V
    .locals 1

    .line 239
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterBackground()V

    .line 243
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    return-void
.end method

.method public handleOnResume()V
    .locals 0

    .line 247
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterForeground()V

    .line 248
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    .line 126
    iget-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNeedToPause:Z

    if-eqz p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNeedShowFPS:Z

    if-eqz p1, :cond_2

    .line 132
    iget-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mFrameCount:J

    .line 133
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 134
    iget-wide v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mOldNanoTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 136
    iget-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mFrameCount:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    .line 137
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getOnGameInfoUpdatedListener()Lorg/cocos2dx/lib/Cocos2dxHelper$OnGameInfoUpdatedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    double-to-float v0, v4

    .line 139
    invoke-interface {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxHelper$OnGameInfoUpdatedListener;->onFPSUpdated(F)V

    :cond_1
    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mFrameCount:J

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mOldNanoTime:J

    .line 150
    :cond_2
    sget-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    const-wide/32 v2, 0xfe502a

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    .line 151
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    goto :goto_0

    .line 153
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 154
    iget-wide v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    sub-long/2addr v0, v2

    .line 156
    sget-wide v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    .line 158
    :try_start_0
    div-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 166
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 121
    invoke-static {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    .line 105
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mDefaultResourcePath:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(IILjava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mOldNanoTime:J

    .line 107
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    .line 109
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mGameEngineInitializedListener:Lorg/cocos2dx/lib/Cocos2dxRenderer$OnGameEngineInitializedListener;

    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxRenderer$1;

    invoke-direct {p2, p0}, Lorg/cocos2dx/lib/Cocos2dxRenderer$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setDefaultResourcePath(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mDefaultResourcePath:Ljava/lang/String;

    return-void
.end method

.method public setOnGameEngineInitializedListener(Lorg/cocos2dx/lib/Cocos2dxRenderer$OnGameEngineInitializedListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mGameEngineInitializedListener:Lorg/cocos2dx/lib/Cocos2dxRenderer$OnGameEngineInitializedListener;

    return-void
.end method

.method public setPauseInMainThread(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNeedToPause:Z

    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0

    .line 74
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    .line 75
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    return-void
.end method

.method public showFPS()V
    .locals 1

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNeedShowFPS:Z

    return-void
.end method
