.class public Lcom/alibaba/sdk/android/oss/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# static fields
.field private static final DEFAULT_MAX_RETRIES:I = 0x2


# instance fields
.field private checkCRC64:Z

.field private connectionTimeout:I

.field private customCnameExcludeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customPathPrefixEnable:Z

.field private followRedirectsEnable:Z

.field private httpDnsEnable:Z

.field private ipWithHeader:Ljava/lang/String;

.field private mUserAgentMark:Ljava/lang/String;

.field private maxConcurrentRequest:I

.field private maxErrorRetry:I

.field private max_log_size:J

.field private okHttpClient:Lokhttp3/OkHttpClient;

.field private pathStyleAccessEnable:Z

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private socketTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 22
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    const v0, 0xea60

    .line 23
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    .line 24
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    const-wide/32 v0, 0x500000

    .line 25
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->checkCRC64:Z

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->pathStyleAccessEnable:Z

    .line 35
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customPathPrefixEnable:Z

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->followRedirectsEnable:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    .locals 1

    .line 49
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    return v0
.end method

.method public getCustomCnameExcludeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomUserMark()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->mUserAgentMark:Ljava/lang/String;

    return-object v0
.end method

.method public getIpWithHeader()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->ipWithHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxConcurrentRequest()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    return v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    return v0
.end method

.method public getMaxLogSize()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    return-wide v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyPort:I

    return v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    return v0
.end method

.method public isCheckCRC64()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->checkCRC64:Z

    return v0
.end method

.method public isCustomPathPrefixEnable()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customPathPrefixEnable:Z

    return v0
.end method

.method public isFollowRedirectsEnable()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->followRedirectsEnable:Z

    return v0
.end method

.method public isHttpDnsEnable()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    return v0
.end method

.method public isPathStyleAccessEnable()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->pathStyleAccessEnable:Z

    return v0
.end method

.method public setCheckCRC64(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->checkCRC64:Z

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    return-void
.end method

.method public setCustomCnameExcludeList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "://"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cname exclude list should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setCustomPathPrefixEnable(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customPathPrefixEnable:Z

    return-void
.end method

.method public setFollowRedirectsEnable(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->followRedirectsEnable:Z

    return-void
.end method

.method public setHttpDnsEnable(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    return-void
.end method

.method public setIpWithHeader(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->ipWithHeader:Ljava/lang/String;

    return-void
.end method

.method public setMaxConcurrentRequest(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    return-void
.end method

.method public setMaxErrorRetry(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    return-void
.end method

.method public setMaxLogSize(J)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    return-void
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setPathStyleAccessEnable(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->pathStyleAccessEnable:Z

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyPort:I

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    return-void
.end method

.method public setUserAgentMark(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->mUserAgentMark:Ljava/lang/String;

    return-void
.end method
