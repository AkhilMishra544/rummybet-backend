.class Lorg/cocos2dx/javascript/AppActivity$9;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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

    .line 1587
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$9;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHasPermission()V
    .locals 0

    return-void
.end method

.method public varargs onUserHasAlreadyTurnedDown([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs onUserHasAlreadyTurnedDownAndDontAsk([Ljava/lang/String;)V
    .locals 0

    return-void
.end method
