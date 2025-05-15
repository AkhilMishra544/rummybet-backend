.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$6;
.super Ljava/lang/Object;
.source "Cocos2dxVideoHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->getFrameWidth(I)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 520
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$6;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Float;
    .locals 3

    .line 523
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1400()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$6;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getFrameWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "Cocos2dxVideoHelper"

    const-string v2, "Video player\'s frame width is not ready to get now!"

    .line 529
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1
    new-instance v1, Ljava/lang/Float;

    int-to-float v0, v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$6;->call()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
