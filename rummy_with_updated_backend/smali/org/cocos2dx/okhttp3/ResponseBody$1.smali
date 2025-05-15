.class Lorg/cocos2dx/okhttp3/ResponseBody$1;
.super Lorg/cocos2dx/okhttp3/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/okhttp3/ResponseBody;->create(Lorg/cocos2dx/okhttp3/MediaType;JLorg/cocos2dx/okio/BufferedSource;)Lorg/cocos2dx/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lorg/cocos2dx/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lorg/cocos2dx/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lorg/cocos2dx/okhttp3/MediaType;JLorg/cocos2dx/okio/BufferedSource;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/ResponseBody$1;->val$contentType:Lorg/cocos2dx/okhttp3/MediaType;

    iput-wide p2, p0, Lorg/cocos2dx/okhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lorg/cocos2dx/okhttp3/ResponseBody$1;->val$content:Lorg/cocos2dx/okio/BufferedSource;

    invoke-direct {p0}, Lorg/cocos2dx/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lorg/cocos2dx/okhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lorg/cocos2dx/okhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/ResponseBody$1;->val$contentType:Lorg/cocos2dx/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lorg/cocos2dx/okio/BufferedSource;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/ResponseBody$1;->val$content:Lorg/cocos2dx/okio/BufferedSource;

    return-object v0
.end method
