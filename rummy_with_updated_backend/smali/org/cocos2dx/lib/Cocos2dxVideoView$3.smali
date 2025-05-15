.class Lorg/cocos2dx/lib/Cocos2dxVideoView$3;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 627
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    sget-object p3, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    invoke-static {p1, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$402(Lorg/cocos2dx/lib/Cocos2dxVideoView;Lorg/cocos2dx/lib/Cocos2dxVideoView$State;)Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 635
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 636
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object p1, p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p3, 0xc8

    const-string v0, "android"

    const-string v1, "string"

    if-ne p2, p3, :cond_0

    const-string p2, "VideoView_error_text_invalid_progressive_playback"

    .line 641
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const-string p2, "VideoView_error_text_unknown"

    .line 644
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :goto_0
    const-string p3, "VideoView_error_title"

    .line 647
    invoke-virtual {p1, p3, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const-string v2, "VideoView_error_button"

    .line 648
    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 650
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v2, v2, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 652
    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 653
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lorg/cocos2dx/lib/Cocos2dxVideoView$3$1;

    invoke-direct {p3, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$3$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView$3;)V

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 662
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 663
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
