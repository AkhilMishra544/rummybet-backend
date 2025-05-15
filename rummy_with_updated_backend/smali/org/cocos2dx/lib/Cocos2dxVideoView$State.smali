.class final enum Lorg/cocos2dx/lib/Cocos2dxVideoView$State;
.super Ljava/lang/Enum;
.source "Cocos2dxVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/cocos2dx/lib/Cocos2dxVideoView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum IDLE:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum INITIALIZED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum PAUSED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum PLAYBACK_COMPLETED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum PREPARED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum PREPARING:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum STARTED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

.field public static final enum STOPPED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;


# direct methods
.method private static synthetic $values()[Lorg/cocos2dx/lib/Cocos2dxVideoView$State;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 60
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->IDLE:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->INITIALIZED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PREPARING:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PREPARED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STARTED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PAUSED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STOPPED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PLAYBACK_COMPLETED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->IDLE:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 62
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->ERROR:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 63
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->INITIALIZED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 64
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "PREPARING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PREPARING:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 65
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "PREPARED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PREPARED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 66
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "STARTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STARTED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 67
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PAUSED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 68
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->STOPPED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 69
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    const-string v1, "PLAYBACK_COMPLETED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->PLAYBACK_COMPLETED:Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    .line 60
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->$values()[Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->$VALUES:[Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cocos2dx/lib/Cocos2dxVideoView$State;
    .locals 1

    .line 60
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    return-object p0
.end method

.method public static values()[Lorg/cocos2dx/lib/Cocos2dxVideoView$State;
    .locals 1

    .line 60
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->$VALUES:[Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    invoke-virtual {v0}, [Lorg/cocos2dx/lib/Cocos2dxVideoView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/cocos2dx/lib/Cocos2dxVideoView$State;

    return-object v0
.end method
