.class Lorg/cocos2dx/javascript/AppActivity$12;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->getServerPic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/javascript/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 0

    .line 1883
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1886
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1891
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "message_url"

    .line 1892
    invoke-virtual {p2, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1893
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$12$1;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/javascript/AppActivity$12$1;-><init>(Lorg/cocos2dx/javascript/AppActivity$12;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1901
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Upload failed"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1903
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
