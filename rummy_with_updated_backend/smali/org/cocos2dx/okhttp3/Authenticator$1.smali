.class Lorg/cocos2dx/okhttp3/Authenticator$1;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Lorg/cocos2dx/okhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/okhttp3/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/cocos2dx/okhttp3/Route;Lorg/cocos2dx/okhttp3/Response;)Lorg/cocos2dx/okhttp3/Request;
    .locals 0
    .param p1    # Lorg/cocos2dx/okhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method
