.class Lcom/alibaba/service/OssService$3;
.super Ljava/lang/Object;
.source "OssService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/service/OssService;->asyncPutImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/service/OssService;

.field final synthetic val$object:Ljava/lang/String;

.field final synthetic val$upload_start:J


# direct methods
.method constructor <init>(Lcom/alibaba/service/OssService;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/alibaba/service/OssService$3;->this$0:Lcom/alibaba/service/OssService;

    iput-wide p2, p0, Lcom/alibaba/service/OssService$3;->val$upload_start:J

    iput-object p4, p0, Lcom/alibaba/service/OssService$3;->val$object:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 125
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/service/OssService$3;->onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 155
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->printStackTrace()V

    .line 156
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->toString()Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    .line 160
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ErrorCode"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestId"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HostId"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RawMessage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 125
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/service/OssService$3;->onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V
    .locals 3

    const-string p1, "PutObject"

    const-string v0, "UploadSuccess"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;->getETag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ETag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;->getRequestId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestId"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/service/OssService$3;->val$upload_start:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lorg/cocos2dx/javascript/Constants;->OSS_ENDPOINT2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/service/OssService$3;->val$object:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    sget-object p2, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v0, Lcom/alibaba/service/OssService$3$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/service/OssService$3$1;-><init>(Lcom/alibaba/service/OssService$3;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/cocos2dx/javascript/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
