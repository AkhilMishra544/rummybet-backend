.class Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$2;->onOpenDebugView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$2;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 535
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v2, v2, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$402(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 541
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 542
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 544
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v2, v2, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$202(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 545
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$200(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 546
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$200(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v3, v3, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$200(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v4, v4, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$linearLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v4, v4, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$302(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 550
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$300(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0xff0100

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 551
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$300(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v4, v4, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$300(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v5, v5, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$linearLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v5, v5, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$602(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 555
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$600(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v4, -0xffff01

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 556
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$600(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$600(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v5, "GL Opt: Enabled"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v5, v5, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$600(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v6, v6, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$linearLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v6, v6, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$702(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 561
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$700(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 562
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$700(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$700(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v5, v5, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$linearLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v5, v5, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$802(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 566
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$800(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 567
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$800(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$800(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v3, v3, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$linearLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v3, v3, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$902(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 571
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$900(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 572
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$900(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$400(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$900(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$2$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    iget-object v2, v2, Lorg/cocos2dx/lib/Cocos2dxActivity$2;->val$linearLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 536
    :cond_1
    :goto_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpenDebugView: failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
