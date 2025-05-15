.class Lorg/cocos2dx/javascript/AppActivity$2;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/javascript/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$2;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 324
    invoke-static {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 329
    invoke-static {p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 0

    const/4 p1, 0x1

    .line 319
    invoke-static {p1, p1}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 316
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/javascript/AppActivity$2;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
