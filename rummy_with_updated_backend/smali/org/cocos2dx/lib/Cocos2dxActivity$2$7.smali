.class Lorg/cocos2dx/lib/Cocos2dxActivity$2$7;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$2;->onGameInfoUpdated_2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 621
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$7;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$7;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 624
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$7;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$900(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$7;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$900(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$7;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
