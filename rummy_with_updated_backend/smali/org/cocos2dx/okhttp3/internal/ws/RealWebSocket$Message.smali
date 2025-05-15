.class final Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lorg/cocos2dx/okio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILorg/cocos2dx/okio/ByteString;)V
    .locals 0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput p1, p0, Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 583
    iput-object p2, p0, Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket$Message;->data:Lorg/cocos2dx/okio/ByteString;

    return-void
.end method
