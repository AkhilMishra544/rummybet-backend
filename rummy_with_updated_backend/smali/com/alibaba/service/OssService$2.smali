.class Lcom/alibaba/service/OssService$2;
.super Ljava/lang/Object;
.source "OssService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


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
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/service/OssService;


# direct methods
.method constructor <init>(Lcom/alibaba/service/OssService;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/service/OssService$2;->this$0:Lcom/alibaba/service/OssService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 2

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " totalSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PutObject"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    mul-long p2, p2, v0

    .line 120
    div-long/2addr p2, p4

    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 0

    .line 116
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/service/OssService$2;->onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method
