.class public interface abstract Lorg/cocos2dx/okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lorg/cocos2dx/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lorg/cocos2dx/okhttp3/Authenticator$1;

    invoke-direct {v0}, Lorg/cocos2dx/okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Lorg/cocos2dx/okhttp3/Authenticator;->NONE:Lorg/cocos2dx/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lorg/cocos2dx/okhttp3/Route;Lorg/cocos2dx/okhttp3/Response;)Lorg/cocos2dx/okhttp3/Request;
    .param p1    # Lorg/cocos2dx/okhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
