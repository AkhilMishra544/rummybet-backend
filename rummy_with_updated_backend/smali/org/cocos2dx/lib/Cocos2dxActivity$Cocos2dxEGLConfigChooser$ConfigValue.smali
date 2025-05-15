.class Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;",
        ">;"
    }
.end annotation


# instance fields
.field public config:Ljavax/microedition/khronos/egl/EGLConfig;

.field public configAttribs:[I

.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;

.field public value:I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8

    .line 153
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->config:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 119
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    .line 154
    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->config:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 155
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 156
    invoke-static/range {v2 .. v7}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    aput v2, v1, v0

    .line 157
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 158
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/16 v5, 0x3022

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 159
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/16 v5, 0x3021

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 160
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/16 v5, 0x3025

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 161
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/16 v5, 0x3026

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    const/4 p2, 0x5

    aput p1, v0, p2

    .line 162
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->calcValue()V

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;[I)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->config:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 119
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 p1, 0x0

    .line 120
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    .line 149
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    .line 150
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->calcValue()V

    return-void
.end method

.method private calcValue()V
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 v1, 0x4

    aget v2, v0, v1

    if-lez v2, :cond_0

    .line 124
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    const/high16 v3, 0x20000000

    add-int/2addr v2, v3

    aget v1, v0, v1

    rem-int/lit8 v1, v1, 0x40

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v2, v1

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    :cond_0
    const/4 v1, 0x5

    .line 127
    aget v2, v0, v1

    if-lez v2, :cond_1

    .line 128
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    const/high16 v3, 0x10000000

    add-int/2addr v2, v3

    aget v1, v0, v1

    rem-int/lit8 v1, v1, 0x40

    add-int/2addr v2, v1

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    :cond_1
    const/4 v1, 0x3

    .line 131
    aget v2, v0, v1

    if-lez v2, :cond_2

    .line 132
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    const/high16 v3, 0x40000000    # 2.0f

    add-int/2addr v2, v3

    aget v1, v0, v1

    rem-int/lit8 v1, v1, 0x10

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v2, v1

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    :cond_2
    const/4 v1, 0x1

    .line 135
    aget v2, v0, v1

    if-lez v2, :cond_3

    .line 136
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    aget v1, v0, v1

    rem-int/lit8 v1, v1, 0x10

    shl-int/lit8 v1, v1, 0x14

    add-int/2addr v2, v1

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    :cond_3
    const/4 v1, 0x2

    .line 139
    aget v2, v0, v1

    if-lez v2, :cond_4

    .line 140
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    aget v1, v0, v1

    rem-int/lit8 v1, v1, 0x10

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v2, v1

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    :cond_4
    const/4 v1, 0x0

    .line 143
    aget v2, v0, v1

    if-lez v2, :cond_5

    .line 144
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    aget v0, v0, v1

    rem-int/lit8 v0, v0, 0x10

    shl-int/lit8 v0, v0, 0xc

    add-int/2addr v2, v0

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 117
    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->compareTo(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;)I
    .locals 1

    .line 167
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    iget p1, p1, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->value:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; depth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; stencil: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->configAttribs:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
