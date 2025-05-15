.class Lcom/java/rummybors/util/SoftKeyBoardListener$1;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/java/rummybors/util/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;


# direct methods
.method constructor <init>(Lcom/java/rummybors/util/SoftKeyBoardListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/java/rummybors/util/SoftKeyBoardListener;->access$000(Lcom/java/rummybors/util/SoftKeyBoardListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iget v1, v1, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iput v0, v1, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iget v1, v1, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    if-ne v1, v0, :cond_1

    return-void

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iget v1, v1, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int/2addr v1, v0

    const/16 v2, 0xc8

    if-le v1, v2, :cond_3

    .line 42
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/java/rummybors/util/SoftKeyBoardListener;->access$100(Lcom/java/rummybors/util/SoftKeyBoardListener;)Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/java/rummybors/util/SoftKeyBoardListener;->access$100(Lcom/java/rummybors/util/SoftKeyBoardListener;)Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iget v2, v2, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardShow(I)V

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iput v0, v1, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    return-void

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iget v1, v1, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int v1, v0, v1

    if-le v1, v2, :cond_5

    .line 51
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/java/rummybors/util/SoftKeyBoardListener;->access$100(Lcom/java/rummybors/util/SoftKeyBoardListener;)Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 52
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/java/rummybors/util/SoftKeyBoardListener;->access$100(Lcom/java/rummybors/util/SoftKeyBoardListener;)Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iget v2, v2, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide(I)V

    .line 54
    :cond_4
    iget-object v1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;->this$0:Lcom/java/rummybors/util/SoftKeyBoardListener;

    iput v0, v1, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootViewVisibleHeight:I

    :cond_5
    return-void
.end method
