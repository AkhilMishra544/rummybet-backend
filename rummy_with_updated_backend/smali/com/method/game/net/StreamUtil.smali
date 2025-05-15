.class public Lcom/method/game/net/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 35
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static toBytes(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v0, 0x0

    .line 15
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1000

    :try_start_1
    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 19
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    invoke-static {v1}, Lcom/method/game/net/StreamUtil;->safeClose(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 25
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    invoke-static {v1}, Lcom/method/game/net/StreamUtil;->safeClose(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/method/game/net/StreamUtil;->safeClose(Ljava/io/Closeable;)V

    .line 28
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
