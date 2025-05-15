.class Lorg/cocos2dx/javascript/AppActivity$15;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->uploadPictures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$objectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2253
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$15;->val$objectName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2256
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$15;->val$objectName:Ljava/lang/String;

    const-string v1, "objectName"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetPath"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    iget-object v0, v0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$15;->val$objectName:Ljava/lang/String;

    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/service/OssService;->asyncPutImage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
