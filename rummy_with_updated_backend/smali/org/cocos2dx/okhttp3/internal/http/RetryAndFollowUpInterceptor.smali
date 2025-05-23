.class public final Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lorg/cocos2dx/okhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lorg/cocos2dx/okhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private volatile streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/okhttp3/OkHttpClient;Z)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    .line 76
    iput-boolean p2, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method private createAddress(Lorg/cocos2dx/okhttp3/HttpUrl;)Lorg/cocos2dx/okhttp3/Address;
    .locals 17

    move-object/from16 v0, p0

    .line 203
    invoke-virtual/range {p1 .. p1}, Lorg/cocos2dx/okhttp3/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 205
    iget-object v1, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 206
    iget-object v3, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lorg/cocos2dx/okhttp3/OkHttpClient;->certificatePinner()Lorg/cocos2dx/okhttp3/CertificatePinner;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 209
    :goto_0
    new-instance v1, Lorg/cocos2dx/okhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lorg/cocos2dx/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/cocos2dx/okhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v2, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->dns()Lorg/cocos2dx/okhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    .line 210
    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->proxyAuthenticator()Lorg/cocos2dx/okhttp3/Authenticator;

    move-result-object v12

    iget-object v2, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    .line 211
    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lorg/cocos2dx/okhttp3/Address;-><init>(Ljava/lang/String;ILorg/cocos2dx/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lorg/cocos2dx/okhttp3/CertificatePinner;Lorg/cocos2dx/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private followUpRequest(Lorg/cocos2dx/okhttp3/Response;Lorg/cocos2dx/okhttp3/Route;)Lorg/cocos2dx/okhttp3/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 284
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->code()I

    move-result v0

    .line 286
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_b

    const/16 v2, 0x134

    if-eq v0, v2, :cond_b

    const/16 v2, 0x191

    if-eq v0, v2, :cond_a

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_7

    const/16 v2, 0x197

    if-eq v0, v2, :cond_5

    const/16 p2, 0x198

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v4

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    .line 359
    :cond_1
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Request;->body()Lorg/cocos2dx/okhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lorg/cocos2dx/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_2

    return-object v4

    .line 363
    :cond_2
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->priorResponse()Lorg/cocos2dx/okhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 364
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->priorResponse()Lorg/cocos2dx/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Response;->code()I

    move-result v0

    if-ne v0, p2, :cond_3

    return-object v4

    :cond_3
    const/4 p2, 0x0

    .line 369
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lorg/cocos2dx/okhttp3/Response;I)I

    move-result p2

    if-lez p2, :cond_4

    return-object v4

    .line 373
    :cond_4
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 289
    :cond_5
    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_6

    .line 293
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->proxyAuthenticator()Lorg/cocos2dx/okhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/cocos2dx/okhttp3/Authenticator;->authenticate(Lorg/cocos2dx/okhttp3/Route;Lorg/cocos2dx/okhttp3/Response;)Lorg/cocos2dx/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 291
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 376
    :cond_7
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->priorResponse()Lorg/cocos2dx/okhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 377
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->priorResponse()Lorg/cocos2dx/okhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/Response;->code()I

    move-result p2

    if-ne p2, v2, :cond_8

    return-object v4

    :cond_8
    const p2, 0x7fffffff

    .line 382
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lorg/cocos2dx/okhttp3/Response;I)I

    move-result p2

    if-nez p2, :cond_9

    .line 384
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v4

    .line 296
    :cond_a
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->authenticator()Lorg/cocos2dx/okhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/cocos2dx/okhttp3/Authenticator;->authenticate(Lorg/cocos2dx/okhttp3/Route;Lorg/cocos2dx/okhttp3/Response;)Lorg/cocos2dx/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 302
    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    return-object v4

    .line 311
    :cond_c
    :pswitch_0
    iget-object p2, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->followRedirects()Z

    move-result p2

    if-nez p2, :cond_d

    return-object v4

    :cond_d
    const-string p2, "Location"

    .line 313
    invoke-virtual {p1, p2}, Lorg/cocos2dx/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    return-object v4

    .line 315
    :cond_e
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/cocos2dx/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object p2

    if-nez p2, :cond_f

    return-object v4

    .line 321
    :cond_f
    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 322
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v0

    if-nez v0, :cond_10

    return-object v4

    .line 325
    :cond_10
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Request;->newBuilder()Lorg/cocos2dx/okhttp3/Request$Builder;

    move-result-object v0

    .line 326
    invoke-static {v1}, Lorg/cocos2dx/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 327
    invoke-static {v1}, Lorg/cocos2dx/okhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v2

    .line 328
    invoke-static {v1}, Lorg/cocos2dx/okhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 329
    invoke-virtual {v0, v3, v4}, Lorg/cocos2dx/okhttp3/Request$Builder;->method(Ljava/lang/String;Lorg/cocos2dx/okhttp3/RequestBody;)Lorg/cocos2dx/okhttp3/Request$Builder;

    goto :goto_0

    :cond_11
    if-eqz v2, :cond_12

    .line 331
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2dx/okhttp3/Request;->body()Lorg/cocos2dx/okhttp3/RequestBody;

    move-result-object v4

    .line 332
    :cond_12
    invoke-virtual {v0, v1, v4}, Lorg/cocos2dx/okhttp3/Request$Builder;->method(Ljava/lang/String;Lorg/cocos2dx/okhttp3/RequestBody;)Lorg/cocos2dx/okhttp3/Request$Builder;

    :goto_0
    if-nez v2, :cond_13

    const-string v1, "Transfer-Encoding"

    .line 335
    invoke-virtual {v0, v1}, Lorg/cocos2dx/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lorg/cocos2dx/okhttp3/Request$Builder;

    const-string v1, "Content-Length"

    .line 336
    invoke-virtual {v0, v1}, Lorg/cocos2dx/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lorg/cocos2dx/okhttp3/Request$Builder;

    const-string v1, "Content-Type"

    .line 337
    invoke-virtual {v0, v1}, Lorg/cocos2dx/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lorg/cocos2dx/okhttp3/Request$Builder;

    .line 344
    :cond_13
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lorg/cocos2dx/okhttp3/Response;Lorg/cocos2dx/okhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "Authorization"

    .line 345
    invoke-virtual {v0, p1}, Lorg/cocos2dx/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lorg/cocos2dx/okhttp3/Request$Builder;

    .line 348
    :cond_14
    invoke-virtual {v0, p2}, Lorg/cocos2dx/okhttp3/Request$Builder;->url(Lorg/cocos2dx/okhttp3/HttpUrl;)Lorg/cocos2dx/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Request$Builder;->build()Lorg/cocos2dx/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 283
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3

    .line 247
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 253
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 254
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 259
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 262
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    .line 266
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;ZLorg/cocos2dx/okhttp3/Request;)Z
    .locals 2

    .line 222
    invoke-virtual {p2, p1}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 225
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 228
    invoke-direct {p0, p1, p4}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsUnrepeatable(Ljava/io/IOException;Lorg/cocos2dx/okhttp3/Request;)Z

    move-result p4

    if-eqz p4, :cond_1

    return v1

    .line 231
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 234
    :cond_2
    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private requestIsUnrepeatable(Ljava/io/IOException;Lorg/cocos2dx/okhttp3/Request;)Z
    .locals 0

    .line 241
    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/Request;->body()Lorg/cocos2dx/okhttp3/RequestBody;

    move-result-object p2

    instance-of p2, p2, Lorg/cocos2dx/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez p2, :cond_1

    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private retryAfter(Lorg/cocos2dx/okhttp3/Response;I)I
    .locals 1

    const-string v0, "Retry-After"

    .line 395
    invoke-virtual {p1, v0}, Lorg/cocos2dx/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p2, "\\d+"

    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method private sameConnection(Lorg/cocos2dx/okhttp3/Response;Lorg/cocos2dx/okhttp3/HttpUrl;)Z
    .locals 2

    .line 415
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Response;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 418
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/cocos2dx/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 90
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->cancel()V

    :cond_0
    return-void
.end method

.method public intercept(Lorg/cocos2dx/okhttp3/Interceptor$Chain;)Lorg/cocos2dx/okhttp3/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Lorg/cocos2dx/okhttp3/Interceptor$Chain;->request()Lorg/cocos2dx/okhttp3/Request;

    move-result-object v0

    .line 108
    check-cast p1, Lorg/cocos2dx/okhttp3/internal/http/RealInterceptorChain;

    .line 109
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/internal/http/RealInterceptorChain;->call()Lorg/cocos2dx/okhttp3/Call;

    move-result-object v7

    .line 110
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lorg/cocos2dx/okhttp3/EventListener;

    move-result-object v8

    .line 112
    new-instance v9, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/OkHttpClient;->connectionPool()Lorg/cocos2dx/okhttp3/ConnectionPool;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lorg/cocos2dx/okhttp3/HttpUrl;)Lorg/cocos2dx/okhttp3/Address;

    move-result-object v3

    iget-object v6, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;-><init>(Lorg/cocos2dx/okhttp3/ConnectionPool;Lorg/cocos2dx/okhttp3/Address;Lorg/cocos2dx/okhttp3/Call;Lorg/cocos2dx/okhttp3/EventListener;Ljava/lang/Object;)V

    .line 114
    iput-object v9, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v11

    const/4 v2, 0x0

    .line 119
    :goto_0
    iget-boolean v3, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v3, :cond_9

    .line 127
    :try_start_0
    invoke-virtual {p1, v0, v9, v11, v11}, Lorg/cocos2dx/okhttp3/internal/http/RealInterceptorChain;->proceed(Lorg/cocos2dx/okhttp3/Request;Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;Lorg/cocos2dx/okhttp3/internal/http/HttpCodec;Lorg/cocos2dx/okhttp3/internal/connection/RealConnection;)Lorg/cocos2dx/okhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Lorg/cocos2dx/okhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Response;->newBuilder()Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/Response;->newBuilder()Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v11}, Lorg/cocos2dx/okhttp3/Response$Builder;->body(Lorg/cocos2dx/okhttp3/ResponseBody;)Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/Response$Builder;->build()Lorg/cocos2dx/okhttp3/Response;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lorg/cocos2dx/okhttp3/Response$Builder;->priorResponse(Lorg/cocos2dx/okhttp3/Response;)Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Response$Builder;->build()Lorg/cocos2dx/okhttp3/Response;

    move-result-object v0

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->route()Lorg/cocos2dx/okhttp3/Route;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lorg/cocos2dx/okhttp3/Response;Lorg/cocos2dx/okhttp3/Route;)Lorg/cocos2dx/okhttp3/Request;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v12, :cond_1

    .line 168
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->release()V

    return-object v0

    .line 172
    :cond_1
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Response;->body()Lorg/cocos2dx/okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2dx/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_5

    .line 179
    invoke-virtual {v12}, Lorg/cocos2dx/okhttp3/Request;->body()Lorg/cocos2dx/okhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lorg/cocos2dx/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_4

    .line 184
    invoke-virtual {v12}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lorg/cocos2dx/okhttp3/Response;Lorg/cocos2dx/okhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 186
    new-instance v9, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/OkHttpClient;->connectionPool()Lorg/cocos2dx/okhttp3/ConnectionPool;

    move-result-object v2

    .line 187
    invoke-virtual {v12}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lorg/cocos2dx/okhttp3/HttpUrl;)Lorg/cocos2dx/okhttp3/Address;

    move-result-object v3

    iget-object v6, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;-><init>(Lorg/cocos2dx/okhttp3/ConnectionPool;Lorg/cocos2dx/okhttp3/Address;Lorg/cocos2dx/okhttp3/Call;Lorg/cocos2dx/okhttp3/EventListener;Ljava/lang/Object;)V

    .line 188
    iput-object v9, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->codec()Lorg/cocos2dx/okhttp3/internal/http/HttpCodec;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_0

    .line 190
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_4
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 181
    new-instance p1, Ljava/net/HttpRetryException;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Response;->code()I

    move-result v0

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 175
    :cond_5
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 176
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 164
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 138
    :try_start_2
    instance-of v4, v3, Lorg/cocos2dx/okhttp3/internal/http2/ConnectionShutdownException;

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 139
    :goto_2
    invoke-direct {p0, v3, v9, v4, v0}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;ZLorg/cocos2dx/okhttp3/Request;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    :cond_7
    throw v3

    :catch_2
    move-exception v3

    .line 131
    invoke-virtual {v3}, Lorg/cocos2dx/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v10, v0}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;ZLorg/cocos2dx/okhttp3/Request;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_0

    .line 132
    :cond_8
    invoke-virtual {v3}, Lorg/cocos2dx/okhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_3
    invoke-virtual {v9, v11}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 146
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->release()V

    throw p1

    .line 120
    :cond_9
    invoke-virtual {v9}, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 121
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public isCanceled()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method public streamAllocation()Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
