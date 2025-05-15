.class Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lorg/cocos2dx/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lorg/cocos2dx/okhttp3/internal/cache/CacheRequest;Lorg/cocos2dx/okhttp3/Response;)Lorg/cocos2dx/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lorg/cocos2dx/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lorg/cocos2dx/okhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lorg/cocos2dx/okio/BufferedSource;


# direct methods
.method constructor <init>(Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor;Lorg/cocos2dx/okio/BufferedSource;Lorg/cocos2dx/okhttp3/internal/cache/CacheRequest;Lorg/cocos2dx/okio/BufferedSink;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->this$0:Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lorg/cocos2dx/okio/BufferedSource;

    iput-object p3, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lorg/cocos2dx/okhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lorg/cocos2dx/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-boolean v0, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 202
    invoke-static {p0, v0, v1}, Lorg/cocos2dx/okhttp3/internal/Util;->discard(Lorg/cocos2dx/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 204
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lorg/cocos2dx/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lorg/cocos2dx/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lorg/cocos2dx/okio/BufferedSource;

    invoke-interface {v0}, Lorg/cocos2dx/okio/BufferedSource;->close()V

    return-void
.end method

.method public read(Lorg/cocos2dx/okio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    :try_start_0
    iget-object v1, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lorg/cocos2dx/okio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lorg/cocos2dx/okio/BufferedSource;->read(Lorg/cocos2dx/okio/Buffer;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 184
    iget-boolean p1, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p1, :cond_0

    .line 185
    iput-boolean v0, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 186
    iget-object p1, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lorg/cocos2dx/okio/BufferedSink;

    invoke-interface {p1}, Lorg/cocos2dx/okio/BufferedSink;->close()V

    :cond_0
    return-wide v1

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lorg/cocos2dx/okio/BufferedSink;

    invoke-interface {v0}, Lorg/cocos2dx/okio/BufferedSink;->buffer()Lorg/cocos2dx/okio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/cocos2dx/okio/Buffer;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/cocos2dx/okio/Buffer;->copyTo(Lorg/cocos2dx/okio/Buffer;JJ)Lorg/cocos2dx/okio/Buffer;

    .line 192
    iget-object p1, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lorg/cocos2dx/okio/BufferedSink;

    invoke-interface {p1}, Lorg/cocos2dx/okio/BufferedSink;->emitCompleteSegments()Lorg/cocos2dx/okio/BufferedSink;

    return-wide p2

    :catch_0
    move-exception p1

    .line 176
    iget-boolean p2, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p2, :cond_2

    .line 177
    iput-boolean v0, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 178
    iget-object p2, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lorg/cocos2dx/okhttp3/internal/cache/CacheRequest;

    invoke-interface {p2}, Lorg/cocos2dx/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 180
    :cond_2
    throw p1
.end method

.method public timeout()Lorg/cocos2dx/okio/Timeout;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lorg/cocos2dx/okio/BufferedSource;

    invoke-interface {v0}, Lorg/cocos2dx/okio/BufferedSource;->timeout()Lorg/cocos2dx/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
