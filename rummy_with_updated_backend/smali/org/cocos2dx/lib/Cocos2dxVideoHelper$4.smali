.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$4;
.super Ljava/lang/Object;
.source "Cocos2dxVideoHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->getFrame(I)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
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

    .line 470
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$4;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1400()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$4;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getFrame()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "Cocos2dxVideoHelper"

    const-string v2, "Video player\'s frame is not ready to get now!"

    .line 477
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method
