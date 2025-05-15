.class Lorg/cocos2dx/okhttp3/RealCall$1;
.super Lorg/cocos2dx/okio/AsyncTimeout;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/okhttp3/RealCall;-><init>(Lorg/cocos2dx/okhttp3/OkHttpClient;Lorg/cocos2dx/okhttp3/Request;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/okhttp3/RealCall;


# direct methods
.method constructor <init>(Lorg/cocos2dx/okhttp3/RealCall;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/RealCall$1;->this$0:Lorg/cocos2dx/okhttp3/RealCall;

    invoke-direct {p0}, Lorg/cocos2dx/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RealCall$1;->this$0:Lorg/cocos2dx/okhttp3/RealCall;

    invoke-virtual {v0}, Lorg/cocos2dx/okhttp3/RealCall;->cancel()V

    return-void
.end method
