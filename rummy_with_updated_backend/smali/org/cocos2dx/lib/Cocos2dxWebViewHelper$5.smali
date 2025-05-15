.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->setBackgroundTransparent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$isTransparent:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;->val$index:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;->val$isTransparent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    if-eqz v0, :cond_1

    .line 144
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;->val$isTransparent:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setBackgroundColor(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
