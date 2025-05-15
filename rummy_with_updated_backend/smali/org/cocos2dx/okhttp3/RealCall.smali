.class final Lorg/cocos2dx/okhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lorg/cocos2dx/okhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/okhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lorg/cocos2dx/okhttp3/OkHttpClient;

.field private eventListener:Lorg/cocos2dx/okhttp3/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lorg/cocos2dx/okhttp3/Request;

.field final retryAndFollowUpInterceptor:Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

.field final timeout:Lorg/cocos2dx/okio/AsyncTimeout;


# direct methods
.method private constructor <init>(Lorg/cocos2dx/okhttp3/OkHttpClient;Lorg/cocos2dx/okhttp3/Request;Z)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    .line 61
    iput-object p2, p0, Lorg/cocos2dx/okhttp3/RealCall;->originalRequest:Lorg/cocos2dx/okhttp3/Request;

    .line 62
    iput-boolean p3, p0, Lorg/cocos2dx/okhttp3/RealCall;->forWebSocket:Z

    .line 63
    new-instance p2, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {p2, p1, p3}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lorg/cocos2dx/okhttp3/OkHttpClient;Z)V

    iput-object p2, p0, Lorg/cocos2dx/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    .line 64
    new-instance p2, Lorg/cocos2dx/okhttp3/RealCall$1;

    invoke-direct {p2, p0}, Lorg/cocos2dx/okhttp3/RealCall$1;-><init>(Lorg/cocos2dx/okhttp3/RealCall;)V

    iput-object p2, p0, Lorg/cocos2dx/okhttp3/RealCall;->timeout:Lorg/cocos2dx/okio/AsyncTimeout;

    .line 69
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lorg/cocos2dx/okio/AsyncTimeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lorg/cocos2dx/okio/Timeout;

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/okhttp3/RealCall;)Lorg/cocos2dx/okhttp3/EventListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/cocos2dx/okhttp3/RealCall;->eventListener:Lorg/cocos2dx/okhttp3/EventListener;

    return-object p0
.end method

.method private captureCallStackTrace()V
    .locals 2

    .line 116
    invoke-static {}, Lorg/cocos2dx/okhttp3/internal/platform/Platform;->get()Lorg/cocos2dx/okhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/okhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/cocos2dx/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    return-void
.end method

.method static newRealCall(Lorg/cocos2dx/okhttp3/OkHttpClient;Lorg/cocos2dx/okhttp3/Request;Z)Lorg/cocos2dx/okhttp3/RealCall;
    .locals 1

    .line 74
    new-instance v0, Lorg/cocos2dx/okhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2dx/okhttp3/RealCall;-><init>(Lorg/cocos2dx/okhttp3/OkHttpClient;Lorg/cocos2dx/okhttp3/Request;Z)V

    .line 75
    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->eventListenerFactory()Lorg/cocos2dx/okhttp3/EventListener$Factory;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/cocos2dx/okhttp3/EventListener$Factory;->create(Lorg/cocos2dx/okhttp3/Call;)Lorg/cocos2dx/okhttp3/EventListener;

    move-result-object p0

    iput-object p0, v0, Lorg/cocos2dx/okhttp3/RealCall;->eventListener:Lorg/cocos2dx/okhttp3/EventListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/RealCall;->clone()Lorg/cocos2dx/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/cocos2dx/okhttp3/Call;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/RealCall;->clone()Lorg/cocos2dx/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/cocos2dx/okhttp3/RealCall;
    .locals 3

    .line 148
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    iget-object v1, p0, Lorg/cocos2dx/okhttp3/RealCall;->originalRequest:Lorg/cocos2dx/okhttp3/Request;

    iget-boolean v2, p0, Lorg/cocos2dx/okhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/okhttp3/RealCall;->newRealCall(Lorg/cocos2dx/okhttp3/OkHttpClient;Lorg/cocos2dx/okhttp3/Request;Z)Lorg/cocos2dx/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lorg/cocos2dx/okhttp3/Callback;)V
    .locals 2

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->executed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->executed:Z

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-direct {p0}, Lorg/cocos2dx/okhttp3/RealCall;->captureCallStackTrace()V

    .line 126
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->eventListener:Lorg/cocos2dx/okhttp3/EventListener;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/okhttp3/EventListener;->callStart(Lorg/cocos2dx/okhttp3/Call;)V

    .line 127
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->dispatcher()Lorg/cocos2dx/okhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/okhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/okhttp3/RealCall$AsyncCall;-><init>(Lorg/cocos2dx/okhttp3/RealCall;Lorg/cocos2dx/okhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/okhttp3/Dispatcher;->enqueue(Lorg/cocos2dx/okhttp3/RealCall$AsyncCall;)V

    return-void

    .line 122
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 124
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execute()Lorg/cocos2dx/okhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->executed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->executed:Z

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    invoke-direct {p0}, Lorg/cocos2dx/okhttp3/RealCall;->captureCallStackTrace()V

    .line 89
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->timeout:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v0}, Lorg/cocos2dx/okio/AsyncTimeout;->enter()V

    .line 90
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->eventListener:Lorg/cocos2dx/okhttp3/EventListener;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/okhttp3/EventListener;->callStart(Lorg/cocos2dx/okhttp3/Call;)V

    .line 92
    :try_start_1
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->dispatcher()Lorg/cocos2dx/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2dx/okhttp3/Dispatcher;->executed(Lorg/cocos2dx/okhttp3/RealCall;)V

    .line 93
    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/RealCall;->getResponseWithInterceptorChain()Lorg/cocos2dx/okhttp3/Response;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/OkHttpClient;->dispatcher()Lorg/cocos2dx/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/cocos2dx/okhttp3/Dispatcher;->finished(Lorg/cocos2dx/okhttp3/RealCall;)V

    return-object v0

    .line 94
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    :try_start_3
    invoke-virtual {p0, v0}, Lorg/cocos2dx/okhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lorg/cocos2dx/okhttp3/RealCall;->eventListener:Lorg/cocos2dx/okhttp3/EventListener;

    invoke-virtual {v1, p0, v0}, Lorg/cocos2dx/okhttp3/EventListener;->callFailed(Lorg/cocos2dx/okhttp3/Call;Ljava/io/IOException;)V

    .line 99
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/OkHttpClient;->dispatcher()Lorg/cocos2dx/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/cocos2dx/okhttp3/Dispatcher;->finished(Lorg/cocos2dx/okhttp3/RealCall;)V

    throw v0

    .line 85
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 87
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method getResponseWithInterceptorChain()Lorg/cocos2dx/okhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v0, Lorg/cocos2dx/okhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->cookieJar()Lorg/cocos2dx/okhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/cocos2dx/okhttp3/internal/http/BridgeInterceptor;-><init>(Lorg/cocos2dx/okhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lorg/cocos2dx/okhttp3/OkHttpClient;->internalCache()Lorg/cocos2dx/okhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor;-><init>(Lorg/cocos2dx/okhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Lorg/cocos2dx/okhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lorg/cocos2dx/okhttp3/internal/connection/ConnectInterceptor;-><init>(Lorg/cocos2dx/okhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-boolean v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    :cond_0
    new-instance v0, Lorg/cocos2dx/okhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lorg/cocos2dx/okhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lorg/cocos2dx/okhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v12, Lorg/cocos2dx/okhttp3/internal/http/RealInterceptorChain;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/cocos2dx/okhttp3/RealCall;->originalRequest:Lorg/cocos2dx/okhttp3/Request;

    iget-object v8, p0, Lorg/cocos2dx/okhttp3/RealCall;->eventListener:Lorg/cocos2dx/okhttp3/EventListener;

    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    .line 254
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v9

    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    .line 255
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v10

    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->client:Lorg/cocos2dx/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lorg/cocos2dx/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;Lorg/cocos2dx/okhttp3/internal/http/HttpCodec;Lorg/cocos2dx/okhttp3/internal/connection/RealConnection;ILorg/cocos2dx/okhttp3/Request;Lorg/cocos2dx/okhttp3/Call;Lorg/cocos2dx/okhttp3/EventListener;III)V

    .line 257
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->originalRequest:Lorg/cocos2dx/okhttp3/Request;

    invoke-interface {v12, v0}, Lorg/cocos2dx/okhttp3/Interceptor$Chain;->proceed(Lorg/cocos2dx/okhttp3/Request;)Lorg/cocos2dx/okhttp3/Response;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lorg/cocos2dx/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 259
    :cond_1
    invoke-static {v0}, Lorg/cocos2dx/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 260
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->originalRequest:Lorg/cocos2dx/okhttp3/Request;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lorg/cocos2dx/okhttp3/Request;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->originalRequest:Lorg/cocos2dx/okhttp3/Request;

    return-object v0
.end method

.method streamAllocation()Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lorg/cocos2dx/okio/Timeout;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->timeout:Lorg/cocos2dx/okio/AsyncTimeout;

    return-object v0
.end method

.method timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall;->timeout:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v0}, Lorg/cocos2dx/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 108
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-boolean v1, p0, Lorg/cocos2dx/okhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
