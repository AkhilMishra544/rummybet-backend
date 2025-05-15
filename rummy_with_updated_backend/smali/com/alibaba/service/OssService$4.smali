.class Lcom/alibaba/service/OssService$4;
.super Ljava/lang/Object;
.source "OssService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/service/OssService;->asyncListObjectsWithBucketName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
        "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/service/OssService;


# direct methods
.method constructor <init>(Lcom/alibaba/service/OssService;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/service/OssService$4;->this$0:Lcom/alibaba/service/OssService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 193
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->printStackTrace()V

    :cond_0
    if-eqz p3, :cond_1

    .line 197
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ErrorCode"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestId"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HostId"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RawMessage"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 177
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/service/OssService$4;->onFailure(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)V
    .locals 6

    const-string p1, "AyncListObjects"

    const-string v0, "Success!"

    .line 181
    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    .line 182
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getObjectSummaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getObjectSummaries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getObjectSummaries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getETag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getObjectSummaries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getLastModified()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "object: %s %s %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 177
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/service/OssService$4;->onSuccess(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)V

    return-void
.end method
