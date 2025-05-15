.class public Lcom/alibaba/service/OssService;
.super Ljava/lang/Object;
.source "OssService.java"


# static fields
.field private static mResumableObjectKey:Ljava/lang/String; = "resumableObject"


# instance fields
.field private mBucket:Ljava/lang/String;

.field private mCallbackAddress:Ljava/lang/String;

.field public mOss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/oss/OSS;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/alibaba/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    .line 69
    iput-object p2, p0, Lcom/alibaba/service/OssService;->mBucket:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/service/OssService;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/alibaba/service/OssService;->mCallbackAddress:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public asyncListObjectsWithBucketName()V
    .locals 3

    .line 172
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    iget-object v1, p0, Lcom/alibaba/service/OssService;->mBucket:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 174
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    const-string v1, "/"

    .line 175
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/alibaba/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    new-instance v2, Lcom/alibaba/service/OssService$4;

    invoke-direct {v2, p0}, Lcom/alibaba/service/OssService$4;-><init>(Lcom/alibaba/service/OssService;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncListObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method

.method public asyncPutImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "upload start"

    .line 86
    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    const-string v2, ""

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AsyncPutImage"

    if-eqz v2, :cond_0

    const-string p1, "ObjectNull"

    .line 89
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "FileNotExist"

    .line 95
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "LocalFile"

    .line 96
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "create PutObjectRequest "

    .line 101
    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 102
    new-instance v2, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    iget-object v3, p0, Lcom/alibaba/service/OssService;->mBucket:Ljava/lang/String;

    invoke-direct {v2, v3, p1, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object p2, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    invoke-virtual {v2, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 104
    iget-object p2, p0, Lcom/alibaba/service/OssService;->mCallbackAddress:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 106
    new-instance p2, Lcom/alibaba/service/OssService$1;

    invoke-direct {p2, p0}, Lcom/alibaba/service/OssService$1;-><init>(Lcom/alibaba/service/OssService;)V

    invoke-virtual {v2, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setCallbackParam(Ljava/util/Map;)V

    .line 116
    :cond_2
    new-instance p2, Lcom/alibaba/service/OssService$2;

    invoke-direct {p2, p0}, Lcom/alibaba/service/OssService$2;-><init>(Lcom/alibaba/service/OssService;)V

    invoke-virtual {v2, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    const-string p2, " asyncPutObject "

    .line 124
    invoke-static {p2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/alibaba/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    new-instance v3, Lcom/alibaba/service/OssService$3;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/alibaba/service/OssService$3;-><init>(Lcom/alibaba/service/OssService;JLjava/lang/String;)V

    invoke-interface {p2, v2, v3}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method

.method public headObject(Ljava/lang/String;)V
    .locals 2

    .line 209
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    iget-object v1, p0, Lcom/alibaba/service/OssService;->mBucket:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/alibaba/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    new-instance v1, Lcom/alibaba/service/OssService$5;

    invoke-direct {v1, p0}, Lcom/alibaba/service/OssService$5;-><init>(Lcom/alibaba/service/OssService;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/OSS;->asyncHeadObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method

.method public initOss(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/service/OssService;->mBucket:Ljava/lang/String;

    return-void
.end method

.method public setCallbackAddress(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/service/OssService;->mCallbackAddress:Ljava/lang/String;

    return-void
.end method
