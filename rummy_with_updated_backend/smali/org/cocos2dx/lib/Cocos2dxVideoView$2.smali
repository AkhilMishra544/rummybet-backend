.class Lorg/cocos2dx/lib/Cocos2dxVideoView$2;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 608
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 610
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PLAYBACK_COMPLETED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$402(Lorg/cocos2dx/lib/Cocos2dxVideoView;Lorg/cocos2dx/lib/Cocos2dxVideoView$State;)Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 611
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$300(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    return-void
.end method
