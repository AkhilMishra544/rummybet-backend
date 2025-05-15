.class Lcom/alibaba/service/OssService$1;
.super Ljava/util/HashMap;
.source "OssService.java"


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
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/service/OssService;


# direct methods
.method constructor <init>(Lcom/alibaba/service/OssService;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/alibaba/service/OssService$1;->this$0:Lcom/alibaba/service/OssService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 108
    invoke-static {p1}, Lcom/alibaba/service/OssService;->access$000(Lcom/alibaba/service/OssService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callbackUrl"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/service/OssService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "callbackBody"

    const-string v0, "filename=${object}"

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/service/OssService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
