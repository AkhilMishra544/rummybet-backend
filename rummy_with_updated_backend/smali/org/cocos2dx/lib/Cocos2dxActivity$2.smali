.class Lorg/cocos2dx/lib/Cocos2dxActivity$2;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$OnGameInfoUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->addDebugInfo(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field final synthetic val$linearLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic val$renderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/LinearLayout$LayoutParams;Lorg/cocos2dx/lib/Cocos2dxRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$linearLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$renderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableBatchGLCommandsToNative()V
    .locals 2

    .line 582
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2$4;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$2$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFPSUpdated(F)V
    .locals 2

    .line 508
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2$1;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$2$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;F)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGameInfoUpdated_0(Ljava/lang/String;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2$5;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$2$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGameInfoUpdated_1(Ljava/lang/String;)V
    .locals 2

    .line 608
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2$6;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$2$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGameInfoUpdated_2(Ljava/lang/String;)V
    .locals 2

    .line 621
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2$7;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$2$7;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onJSBInvocationCountUpdated(I)V
    .locals 2

    .line 520
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2$2;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$2$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpenDebugView()V
    .locals 2

    .line 532
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 577
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$renderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->showFPS()V

    return-void
.end method
