.class public final Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lorg/cocos2dx/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Ljava/lang/String; = "connection"

.field private static final ENCODING:Ljava/lang/String; = "encoding"

.field private static final HOST:Ljava/lang/String; = "host"

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field private static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final TE:Ljava/lang/String; = "te"

.field private static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field private static final UPGRADE:Ljava/lang/String; = "upgrade"


# instance fields
.field private final chain:Lorg/cocos2dx/okhttp3/Interceptor$Chain;

.field private final connection:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;

.field private final protocol:Lorg/cocos2dx/okhttp3/Protocol;

.field private stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 69
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 82
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/okhttp3/OkHttpClient;Lorg/cocos2dx/okhttp3/Interceptor$Chain;Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->chain:Lorg/cocos2dx/okhttp3/Interceptor$Chain;

    .line 101
    iput-object p3, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    .line 102
    iput-object p4, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->connection:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;

    .line 103
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lorg/cocos2dx/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lorg/cocos2dx/okhttp3/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    sget-object p1, Lorg/cocos2dx/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lorg/cocos2dx/okhttp3/Protocol;

    goto :goto_0

    .line 105
    :cond_0
    sget-object p1, Lorg/cocos2dx/okhttp3/Protocol;->HTTP_2:Lorg/cocos2dx/okhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->protocol:Lorg/cocos2dx/okhttp3/Protocol;

    return-void
.end method

.method public static http2HeadersList(Lorg/cocos2dx/okhttp3/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2dx/okhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Lorg/cocos2dx/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/Request;->headers()Lorg/cocos2dx/okhttp3/Headers;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    new-instance v2, Lorg/cocos2dx/okhttp3/internal/http2/Header;

    sget-object v3, Lorg/cocos2dx/okhttp3/internal/http2/Header;->TARGET_METHOD:Lorg/cocos2dx/okio/ByteString;

    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/cocos2dx/okhttp3/internal/http2/Header;-><init>(Lorg/cocos2dx/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v2, Lorg/cocos2dx/okhttp3/internal/http2/Header;

    sget-object v3, Lorg/cocos2dx/okhttp3/internal/http2/Header;->TARGET_PATH:Lorg/cocos2dx/okio/ByteString;

    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2dx/okhttp3/internal/http/RequestLine;->requestPath(Lorg/cocos2dx/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/cocos2dx/okhttp3/internal/http2/Header;-><init>(Lorg/cocos2dx/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 144
    invoke-virtual {p0, v2}, Lorg/cocos2dx/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v3, Lorg/cocos2dx/okhttp3/internal/http2/Header;

    sget-object v4, Lorg/cocos2dx/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lorg/cocos2dx/okio/ByteString;

    invoke-direct {v3, v4, v2}, Lorg/cocos2dx/okhttp3/internal/http2/Header;-><init>(Lorg/cocos2dx/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    new-instance v2, Lorg/cocos2dx/okhttp3/internal/http2/Header;

    sget-object v3, Lorg/cocos2dx/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lorg/cocos2dx/okio/ByteString;

    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/Request;->url()Lorg/cocos2dx/okhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lorg/cocos2dx/okhttp3/internal/http2/Header;-><init>(Lorg/cocos2dx/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 150
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 152
    invoke-virtual {v0, p0}, Lorg/cocos2dx/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2dx/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lorg/cocos2dx/okio/ByteString;

    move-result-object v3

    .line 153
    sget-object v4, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-virtual {v3}, Lorg/cocos2dx/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    new-instance v4, Lorg/cocos2dx/okhttp3/internal/http2/Header;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/cocos2dx/okhttp3/internal/http2/Header;-><init>(Lorg/cocos2dx/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static readHttp2HeadersList(Lorg/cocos2dx/okhttp3/Headers;Lorg/cocos2dx/okhttp3/Protocol;)Lorg/cocos2dx/okhttp3/Response$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Lorg/cocos2dx/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lorg/cocos2dx/okhttp3/Headers$Builder;-><init>()V

    .line 165
    invoke-virtual {p0}, Lorg/cocos2dx/okhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 166
    invoke-virtual {p0, v3}, Lorg/cocos2dx/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {p0, v3}, Lorg/cocos2dx/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    .line 168
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2dx/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lorg/cocos2dx/okhttp3/internal/http/StatusLine;

    move-result-object v2

    goto :goto_1

    .line 170
    :cond_0
    sget-object v6, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    sget-object v6, Lorg/cocos2dx/okhttp3/internal/Internal;->instance:Lorg/cocos2dx/okhttp3/internal/Internal;

    invoke-virtual {v6, v0, v4, v5}, Lorg/cocos2dx/okhttp3/internal/Internal;->addLenient(Lorg/cocos2dx/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 176
    new-instance p0, Lorg/cocos2dx/okhttp3/Response$Builder;

    invoke-direct {p0}, Lorg/cocos2dx/okhttp3/Response$Builder;-><init>()V

    .line 177
    invoke-virtual {p0, p1}, Lorg/cocos2dx/okhttp3/Response$Builder;->protocol(Lorg/cocos2dx/okhttp3/Protocol;)Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object p0

    iget p1, v2, Lorg/cocos2dx/okhttp3/internal/http/StatusLine;->code:I

    .line 178
    invoke-virtual {p0, p1}, Lorg/cocos2dx/okhttp3/Response$Builder;->code(I)Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object p0

    iget-object p1, v2, Lorg/cocos2dx/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Lorg/cocos2dx/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/Headers$Builder;->build()Lorg/cocos2dx/okhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/okhttp3/Response$Builder;->headers(Lorg/cocos2dx/okhttp3/Headers;)Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object p0

    return-object p0

    .line 174
    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/cocos2dx/okhttp3/internal/http2/ErrorCode;->CANCEL:Lorg/cocos2dx/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;->closeLater(Lorg/cocos2dx/okhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lorg/cocos2dx/okhttp3/Request;J)Lorg/cocos2dx/okio/Sink;
    .locals 0

    .line 109
    iget-object p1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;->getSink()Lorg/cocos2dx/okio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;->getSink()Lorg/cocos2dx/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lorg/cocos2dx/okio/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->connection:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public openResponseBody(Lorg/cocos2dx/okhttp3/Response;)Lorg/cocos2dx/okhttp3/ResponseBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    iget-object v0, v0, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->eventListener:Lorg/cocos2dx/okhttp3/EventListener;

    iget-object v1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, v1, Lorg/cocos2dx/okhttp3/internal/connection/StreamAllocation;->call:Lorg/cocos2dx/okhttp3/Call;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/okhttp3/EventListener;->responseBodyStart(Lorg/cocos2dx/okhttp3/Call;)V

    const-string v0, "Content-Type"

    .line 185
    invoke-virtual {p1, v0}, Lorg/cocos2dx/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {p1}, Lorg/cocos2dx/okhttp3/internal/http/HttpHeaders;->contentLength(Lorg/cocos2dx/okhttp3/Response;)J

    move-result-wide v1

    .line 187
    new-instance p1, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v3, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;->getSource()Lorg/cocos2dx/okio/Source;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;Lorg/cocos2dx/okio/Source;)V

    .line 188
    new-instance v3, Lorg/cocos2dx/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Lorg/cocos2dx/okio/Okio;->buffer(Lorg/cocos2dx/okio/Source;)Lorg/cocos2dx/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lorg/cocos2dx/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLorg/cocos2dx/okio/BufferedSource;)V

    return-object v3
.end method

.method public readResponseHeaders(Z)Lorg/cocos2dx/okhttp3/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;->takeHeaders()Lorg/cocos2dx/okhttp3/Headers;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->protocol:Lorg/cocos2dx/okhttp3/Protocol;

    invoke-static {v0, v1}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Lorg/cocos2dx/okhttp3/Headers;Lorg/cocos2dx/okhttp3/Protocol;)Lorg/cocos2dx/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 133
    sget-object p1, Lorg/cocos2dx/okhttp3/internal/Internal;->instance:Lorg/cocos2dx/okhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Lorg/cocos2dx/okhttp3/internal/Internal;->code(Lorg/cocos2dx/okhttp3/Response$Builder;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public writeRequestHeaders(Lorg/cocos2dx/okhttp3/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/Request;->body()Lorg/cocos2dx/okhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 116
    :goto_0
    invoke-static {p1}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->http2HeadersList(Lorg/cocos2dx/okhttp3/Request;)Ljava/util/List;

    move-result-object p1

    .line 117
    iget-object v1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->connection:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    .line 118
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;->readTimeout()Lorg/cocos2dx/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->chain:Lorg/cocos2dx/okhttp3/Interceptor$Chain;

    invoke-interface {v0}, Lorg/cocos2dx/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lorg/cocos2dx/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lorg/cocos2dx/okio/Timeout;

    .line 119
    iget-object p1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->stream:Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Stream;->writeTimeout()Lorg/cocos2dx/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Codec;->chain:Lorg/cocos2dx/okhttp3/Interceptor$Chain;

    invoke-interface {v0}, Lorg/cocos2dx/okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lorg/cocos2dx/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lorg/cocos2dx/okio/Timeout;

    return-void
.end method
