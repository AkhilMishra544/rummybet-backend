.class public Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cocos2dxEGLConfigChooser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    }
.end annotation


# instance fields
.field protected configAttribs:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .locals 1

    .line 100
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    const/4 p2, 0x4

    aput p6, p1, p2

    const/4 p2, 0x5

    aput p7, p1, p2

    .line 101
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 0

    .line 97
    invoke-direct/range {p0 .. p5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p0

    return p0
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 111
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 112
    aget p1, v0, p1

    return p1

    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0xf

    new-array v4, v1, [I

    const/16 v1, 0x3024

    const/4 v8, 0x0

    aput v1, v4, v8

    .line 186
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v2, v1, v8

    const/4 v9, 0x1

    aput v2, v4, v9

    const/16 v2, 0x3023

    const/4 v10, 0x2

    aput v2, v4, v10

    aget v2, v1, v9

    const/4 v11, 0x3

    aput v2, v4, v11

    const/16 v2, 0x3022

    const/4 v3, 0x4

    aput v2, v4, v3

    aget v2, v1, v10

    const/4 v5, 0x5

    aput v2, v4, v5

    const/4 v2, 0x6

    const/16 v6, 0x3021

    aput v6, v4, v2

    aget v2, v1, v11

    const/4 v6, 0x7

    aput v2, v4, v6

    const/16 v2, 0x8

    const/16 v6, 0x3025

    aput v6, v4, v2

    aget v2, v1, v3

    const/16 v6, 0x9

    aput v2, v4, v6

    const/16 v2, 0xa

    const/16 v6, 0x3026

    aput v6, v4, v2

    aget v1, v1, v5

    const/16 v2, 0xb

    aput v1, v4, v2

    const/16 v1, 0xc

    const/16 v2, 0x3040

    aput v2, v4, v1

    const/16 v1, 0xd

    aput v3, v4, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v4, v1

    new-array v1, v9, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v15, v9, [I

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v1

    move-object v7, v15

    .line 198
    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    aget v2, v15, v8

    if-lez v2, :cond_0

    .line 201
    aget-object v1, v1, v8

    return-object v1

    :cond_0
    new-array v1, v11, [I

    .line 205
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v1

    move-object v3, v15

    move-object v15, v2

    move-object/from16 v17, v3

    .line 209
    invoke-interface/range {v12 .. v17}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    aget v2, v3, v8

    if-lez v2, :cond_5

    .line 211
    aget v2, v3, v8

    .line 212
    new-array v4, v2, [Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    .line 215
    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v1

    move-object v15, v5

    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 216
    invoke-interface/range {v12 .. v17}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 218
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    aget-object v6, v5, v1

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    invoke-direct {v3, v0, v7, v11, v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    invoke-direct {v1, v0, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;[I)V

    move v3, v2

    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v8, v5, :cond_3

    add-int v5, v8, v3

    .line 227
    div-int/2addr v5, v10

    .line 228
    aget-object v6, v4, v5

    invoke-virtual {v1, v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->compareTo(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;)I

    move-result v6

    if-gez v6, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v8, v5

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v9

    if-eq v8, v2, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 237
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find EGLConfig match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instead of closest one:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cocos2d"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    aget-object v1, v4, v8

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->config:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v1

    :cond_5
    const-string v1, "device_policy"

    const-string v2, "Can not select an EGLConfig for rendering."

    .line 241
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3038
    .end array-data
.end method
