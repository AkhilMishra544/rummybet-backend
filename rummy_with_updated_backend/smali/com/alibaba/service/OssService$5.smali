.class Lcom/alibaba/service/OssService$5;
.super Ljava/lang/Object;
.source "OssService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/service/OssService;->headObject(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/service/OssService;


# direct methods
.method constructor <init>(Lcom/alibaba/service/OssService;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/alibaba/service/OssService$5;->this$0:Lcom/alibaba/service/OssService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->printStackTrace()V

    :cond_0
    if-eqz p3, :cond_1

    .line 228
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ErrorCode"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestId"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HostId"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RawMessage"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 211
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/service/OssService$5;->onFailure(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;)V
    .locals 2

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "object Size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "headObject"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "object Content Type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 211
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/service/OssService$5;->onSuccess(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;)V

    return-void
.end method
