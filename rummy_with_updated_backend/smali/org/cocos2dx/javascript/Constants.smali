.class public Lorg/cocos2dx/javascript/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/javascript/Constants$ShowMsgActivity;
    }
.end annotation


# static fields
.field public static final AGENT_ID:I = 0x7df

.field public static BUCKET_NAME:Ljava/lang/String; = "rummya1"

.field public static final CODE_CANCEL:I = 0x2

.field public static final CODE_ERROR:I = 0x4

.field public static final CODE_NOT_INSTALLED:I = 0x3

.field public static final CODE_OTHER:I = 0x5

.field public static final CODE_SUCCESS:I = 0x1

.field public static OSS_ENDPOINT:Ljava/lang/String; = """  # removed backend URL"

.field public static OSS_ENDPOINT2:Ljava/lang/String; = """  # removed backend URL"

.field public static final REQUEST_CODE_CAMERA:I = 0x1

.field public static final REQUEST_CODE_OPENAPP:I = 0x4

.field public static final REQUEST_CODE_PERMISSIONS:I = 0x2

.field public static final REQUEST_CODE_READPHONESTATE:I = 0x3

.field public static final SHARE_FB:I = 0x1

.field public static final SHARE_TL:I = 0x2

.field public static final SHARE_WSAPP:I = 0x3

.field public static bindData:Ljava/lang/String; = ""

.field public static gamepackage:Ljava/lang/String; = "com.Ludoguru.game"

.field public static final isSupportShare:Z = true

.field public static packageName:Ljava/lang/String; = "com.Ludoguru.game"

.field public static picUrl:Ljava/lang/String; = ""

.field public static player_id:Ljava/lang/String; = ""

.field public static push_token:Ljava/lang/String; = ""

.field public static schemeUrl:Ljava/lang/String; = ""

.field public static stsserver:Ljava/lang/String; = ""

.field public static token_id:Ljava/lang/String; = ""

.field public static trackerName:Ljava/lang/String; = ""

.field public static trackerToken:Ljava/lang/String; = ""

.field public static tuiguangid:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAgentID()I
    .locals 1

    const/16 v0, 0x7df

    return v0
.end method

.method public static getGoogleAdID()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPush_token()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lorg/cocos2dx/javascript/Constants;->push_token:Ljava/lang/String;

    return-object v0
.end method

.method public static getScheme()Ljava/lang/String;
    .locals 2

    .line 64
    sget-object v0, Lorg/cocos2dx/javascript/Constants;->schemeUrl:Ljava/lang/String;

    const-string v1, ""

    .line 65
    sput-object v1, Lorg/cocos2dx/javascript/Constants;->schemeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getTracker()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/cocos2dx/javascript/Constants;->trackerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/cocos2dx/javascript/Constants;->trackerToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getbindData()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lorg/cocos2dx/javascript/Constants;->bindData:Ljava/lang/String;

    return-object v0
.end method
