.class Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;
.super Ljava/lang/Object;
.source "Cocos2dxEditBox.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->registKeyboardVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 246
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 247
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 249
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->access$700(Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->access$800(Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->access$802(Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;Z)Z

    goto :goto_0

    .line 254
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->access$800(Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->access$802(Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;Z)Z

    .line 256
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->access$600(Lorg/cocos2dx/lib/Cocos2dxEditBox;)V

    .line 260
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->access$900(Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 261
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->access$1000(Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;I)V

    :cond_2
    return-void
.end method
