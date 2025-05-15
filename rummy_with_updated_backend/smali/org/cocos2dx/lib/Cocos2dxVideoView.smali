.class public Lorg/cocos2dx/lib/Cocos2dxVideoView;
.super Landroid/view/SurfaceView;
.source "Cocos2dxVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxVideoView$State;,
        Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    }
.end annotation


# static fields
.field private static final AssetResourceRoot:Ljava/lang/String; = "@assets/"

.field private static final EVENT_CLICKED:I = 0x5

.field private static final EVENT_COMPLETED:I = 0x3

.field private static final EVENT_META_LOADED:I = 0x4

.field private static final EVENT_PAUSED:I = 0x1

.field private static final EVENT_PLAYING:I = 0x0

.field private static final EVENT_READY_TO_PLAY:I = 0x6

.field private static final EVENT_STOPPED:I = 0x2

.field private static final PX_ALPHA:I = 0x1

.field private static final PX_ARGB_4444:I = 0x2

.field private static final PX_ARGB_8888:I = 0x3

.field private static final PX_HARDWARE:I = 0x4

.field private static final PX_INVALID:I = 0x0

.field private static final PX_RGBA_F16:I = 0x5

.field private static final PX_RGB_565:I = 0x6


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCopyListener:Ljava/lang/Object;

.field private mCurFrame:Landroid/graphics/Bitmap;

.field private mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFrame:Landroid/graphics/Bitmap;

.field private mFrameBuf:Ljava/nio/ByteBuffer;

.field protected mFullScreenEnabled:Z

.field protected mFullScreenHeight:I

.field protected mFullScreenWidth:I

.field private mIsAssetRouse:Z

.field private mKeepRatio:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMetaUpdated:Z

.field private mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

.field private mPixels:[B

.field private mPositionBeforeRelease:I

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mRetriever:Landroid/media/MediaMetadataRetriever;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field private mShowRaw:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoUri:Landroid/net/Uri;

.field private mVideoWidth:I

.field protected mViewHeight:I

.field protected mViewLeft:I

.field private mViewTag:I

.field protected mViewTop:I

.field protected mViewWidth:I

.field protected mVisibleHeight:I

.field protected mVisibleLeft:I

.field protected mVisibleTop:I

.field protected mVisibleWidth:I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;I)V
    .locals 3

    .line 149
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string v0, "Cocos2dxVideoView"

    .line 81
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    .line 86
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->IDLE:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 90
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 91
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 92
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 97
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 99
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 101
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    .line 102
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    .line 103
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    .line 104
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    .line 106
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 107
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 108
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 109
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    .line 111
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    .line 112
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenWidth:I

    .line 113
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenHeight:I

    .line 115
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mIsAssetRouse:Z

    .line 116
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoFilePath:Ljava/lang/String;

    .line 118
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    .line 119
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    .line 120
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMetaUpdated:Z

    .line 122
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    .line 123
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrameBuf:Ljava/nio/ByteBuffer;

    .line 124
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPixels:[B

    .line 125
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrame:Landroid/graphics/Bitmap;

    .line 126
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurFrame:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    .line 127
    iput-boolean v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mShowRaw:Z

    .line 128
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCopyListener:Ljava/lang/Object;

    .line 130
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurface:Landroid/view/Surface;

    .line 142
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPositionBeforeRelease:I

    .line 588
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 607
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 624
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 669
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 151
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    .line 152
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 153
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->initVideoView()V

    .line 154
    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setShowRawFrame(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release()V

    return-void
.end method

.method static synthetic access$102(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMetaUpdated:Z

    return p0
.end method

.method static synthetic access$202(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMetaUpdated:Z

    return p1
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->sendEvent(I)V

    return-void
.end method

.method static synthetic access$402(Lorg/cocos2dx/lib/Cocos2dxVideoView;Lorg/cocos2dx/lib/Cocos2dxVideoView$State;)Lorg/cocos2dx/lib/Cocos2dxVideoView$State;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    return-object p1
.end method

.method static synthetic access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$700(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$800(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPositionBeforeRelease:I

    return p0
.end method

.method static synthetic access$802(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPositionBeforeRelease:I

    return p1
.end method

.method static synthetic access$900(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private initVideoView()V
    .locals 2

    const/4 v0, 0x0

    .line 507
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 508
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 509
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 511
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v0, 0x1

    .line 512
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFocusable(Z)V

    .line 513
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFocusableInTouchMode(Z)V

    .line 514
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->IDLE:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    return-void
.end method

.method private openVideo()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Unable to open content: "

    .line 527
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    iget-boolean v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mIsAssetRouse:Z

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoFilePath:Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    .line 534
    :cond_1
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    return-void

    .line 538
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->pausePlaybackService()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 541
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 542
    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 543
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 544
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 545
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 546
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 547
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 549
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/4 v0, 0x0

    .line 550
    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrameBuf:Ljava/nio/ByteBuffer;

    .line 551
    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPixels:[B

    .line 552
    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurFrame:Landroid/graphics/Bitmap;

    .line 553
    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrame:Landroid/graphics/Bitmap;

    .line 555
    iget-boolean v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mIsAssetRouse:Z

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 557
    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 558
    iget-object v11, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v15

    invoke-virtual/range {v11 .. v16}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 560
    :cond_3
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 561
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 562
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 564
    :cond_4
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 567
    :goto_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->INITIALIZED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 571
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 572
    invoke-direct/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->showFirstFrame()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 581
    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 583
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2, v4, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_1
    move-exception v0

    .line 576
    iget-object v5, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    iput-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 578
    iget-object v0, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2, v4, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    return-void
.end method

.method private pausePlaybackService()V
    .locals 3

    .line 713
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    .line 714
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private release()V
    .locals 1

    .line 694
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 696
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private sendEvent(I)V
    .locals 2

    .line 705
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 706
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    invoke-interface {v0, v1, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    :cond_0
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 522
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 523
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    return-void
.end method

.method private showFirstFrame()V
    .locals 2

    .line 701
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method


# virtual methods
.method public fixSize()V
    .locals 4

    .line 321
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenWidth:I

    .line 323
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenHeight:I

    .line 325
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenWidth:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    goto :goto_0

    .line 327
    :cond_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    :goto_0
    return-void
.end method

.method public fixSize(IIII)V
    .locals 4

    .line 332
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    if-eqz v0, :cond_5

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 339
    iget-boolean v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    if-nez v2, :cond_3

    mul-int v2, v0, p4

    mul-int v3, p3, v1

    if-le v2, v3, :cond_1

    .line 341
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    mul-int v1, v1, p3

    .line 342
    div-int/2addr v1, v0

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_0

    :cond_1
    mul-int v2, v0, p4

    mul-int v3, p3, v1

    if-ge v2, v3, :cond_2

    mul-int v0, v0, p4

    .line 344
    div-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 345
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    .line 347
    :cond_2
    :goto_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 348
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    goto :goto_2

    .line 350
    :cond_3
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 351
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 352
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 353
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_2

    .line 357
    :cond_4
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 358
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 359
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 360
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_2

    .line 333
    :cond_5
    :goto_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 334
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 335
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 336
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    .line 363
    :goto_2
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    iget p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 365
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 367
    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 368
    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 369
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 4

    .line 214
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 216
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 223
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->IDLE:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->INITIALIZED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 230
    :cond_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    return v0
.end method

.method public getFrame()[B
    .locals 8

    .line 403
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ge v0, v1, :cond_1

    .line 408
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrame:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrame:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 411
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrame:Landroid/graphics/Bitmap;

    .line 415
    :cond_2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCopyListener:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "OnPixelCopyFinishedListener"

    const-string v4, "android.view.PixelCopy"

    if-nez v0, :cond_3

    .line 416
    :try_start_1
    invoke-static {v4, v1}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->createInstanceInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCopyListener:Ljava/lang/Object;

    .line 419
    :cond_3
    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 420
    invoke-static {v4, v1}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getInterfaceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    .line 421
    const-class v6, Landroid/view/SurfaceView;

    aput-object v6, v5, v2

    const-class v6, Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const-class v1, Landroid/os/Handler;

    aput-object v1, v5, v3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 422
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrame:Landroid/graphics/Bitmap;

    aput-object v4, v1, v7

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCopyListener:Ljava/lang/Object;

    aput-object v4, v1, v6

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "request"

    .line 424
    invoke-static {v0, v3, v5, v1}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->invokeInterfaceMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrame:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 432
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPixels:[B

    return-object v0

    .line 435
    :cond_4
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurFrame:Landroid/graphics/Bitmap;

    .line 437
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrameBuf:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_5

    .line 438
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrameBuf:Ljava/nio/ByteBuffer;

    .line 440
    :cond_5
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 441
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurFrame:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 442
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFrameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPixels:[B

    return-object v0

    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grab error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPixels:[B

    return-object v0
.end method

.method public getFrameChannel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurFrame:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 452
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 453
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x4

    if-le v2, v3, :cond_2

    .line 454
    const-class v2, Landroid/graphics/Bitmap$Config;

    const-string v3, "HARDWARE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 455
    const-class v3, Landroid/graphics/Bitmap$Config;

    const-string v5, "RGBA_F16"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 456
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_1

    return v4

    :cond_1
    if-eqz v3, :cond_2

    .line 457
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x5

    return v0

    .line 460
    :cond_2
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x6

    return v0

    :cond_4
    return v2
.end method

.method public getFrameHeight()I
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    .line 476
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 254
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 255
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-virtual {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x5

    .line 261
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->sendEvent(I)V

    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 302
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STARTED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PLAYBACK_COMPLETED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PAUSED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 305
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 306
    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->sendEvent(I)V

    :cond_1
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 2

    .line 374
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 375
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_0

    .line 390
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public seekTo(I)V
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->IDLE:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->INITIALIZED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STOPPED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFullScreenEnabled(Z)V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    if-eq v0, p1, :cond_0

    .line 175
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    .line 176
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    :cond_0
    return-void
.end method

.method public setKeepRatio(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    .line 188
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    return-void
.end method

.method public setShowRawFrame(Z)V
    .locals 1

    .line 492
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mShowRaw:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setTranslationY(F)V

    if-nez p1, :cond_1

    const/high16 v0, -0x3b860000    # -1000.0f

    .line 497
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setTranslationY(F)V

    .line 499
    :cond_1
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mShowRaw:Z

    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "@assets/"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "/"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mIsAssetRouse:Z

    .line 203
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 207
    :cond_1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mIsAssetRouse:Z

    .line 209
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public setVideoRect(IIII)V
    .locals 1

    .line 162
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    if-ne v0, p4, :cond_0

    return-void

    .line 165
    :cond_0
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    .line 166
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    .line 167
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    .line 168
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    .line 170
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mIsAssetRouse:Z

    .line 193
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoViewEventListener(Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PREPARED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PAUSED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PLAYBACK_COMPLETED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 295
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STARTED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 296
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->sendEvent(I)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 271
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->IDLE:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->INITIALIZED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STOPPED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STOPPED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 274
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x2

    .line 275
    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->sendEvent(I)V

    .line 279
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 280
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->showFirstFrame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 0

    .line 286
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release()V

    return-void
.end method
