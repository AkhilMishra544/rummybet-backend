.class Lcom/java/rummybors/util/AndroidBridge$1;
.super Ljava/util/TimerTask;
.source "AndroidBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/java/rummybors/util/AndroidBridge;->setHandleOpenUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/java/rummybors/util/AndroidBridge$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    sget-object v0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lcom/java/rummybors/util/AndroidBridge$1$1;

    invoke-direct {v1, p0}, Lcom/java/rummybors/util/AndroidBridge$1$1;-><init>(Lcom/java/rummybors/util/AndroidBridge$1;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 236
    invoke-virtual {p0}, Lcom/java/rummybors/util/AndroidBridge$1;->cancel()Z

    return-void
.end method
