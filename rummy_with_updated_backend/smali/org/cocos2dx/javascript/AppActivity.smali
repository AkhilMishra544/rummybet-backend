.class public Lorg/cocos2dx/javascript/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;
    }
.end annotation


# static fields
.field private static final CAMERA_PERMISSIONS_REQUEST_CODE:I = 0x8

.field private static final CODE_CAMERA_REQUEST:I = 0xa1

.field private static final CODE_GALLERY_REQUEST:I = 0xa0

.field private static final CODE_RESULT_REQUEST:I = 0xa2

.field public static final COPYHD:I = 0x6e

.field public static FACEBOOK_PAGE_ID:Ljava/lang/String; = "RummyBors"

.field public static FACEBOOK_URL:Ljava/lang/String; = """  # removed backend URL"

.field private static Latitude:D = 0.0

.field private static Longitude:D = 0.0

.field private static final OUTPUT_X:I = 0xc8

.field private static final OUTPUT_Y:I = 0xc8

.field private static final RC_GET_TOKEN:I = 0x232a

.field private static final RC_SIGN_IN:I = 0x2329

.field public static final REQUEST_CAMERA:I = 0xc

.field public static final REQUEST_CODE_CHOOSE_IMAGE:I = 0x1

.field public static final REQUEST_CODE_CROP_IMAGE:I = 0x2

.field public static final REQUEST_CROP:I = 0xd

.field public static final REQUEST_GALLERY:I = 0xb

.field private static final STORAGE_PERMISSIONS_REQUEST_CODE:I = 0x9

.field private static TAG:Ljava/lang/String; = "AppActivity"

.field public static final TS:I = 0x1

.field private static final VOICE_PERMISSIONS_REQUEST_CODE:I = 0x7

.field public static callbackManager:Lcom/facebook/CallbackManager; = null

.field public static cropImagePath:Ljava/lang/String; = null

.field private static imageUploadPath:Ljava/lang/String; = "head/"

.field public static instance:Lorg/cocos2dx/javascript/AppActivity; = null

.field private static isCrop:Z = true

.field private static isImgReq:Z = false

.field public static loginManager:Lcom/facebook/login/LoginManager; = null

.field private static mHandler:Landroid/os/Handler; = null

.field private static photoName:Ljava/lang/String; = "cropimg.jpg"

.field private static playerid:Ljava/lang/String; = null

.field public static shareDialog:Lcom/facebook/share/widget/ShareDialog; = null

.field private static splashImage:Landroid/widget/ImageView; = null

.field private static splashUIHandler:Landroid/os/Handler; = null

.field private static targetPath:Ljava/lang/String; = ""

.field private static tempFile:Ljava/io/File;


# instance fields
.field private final PERMISSIONS:[Ljava/lang/String;

.field private final PERMISSION_CAMERA:Ljava/lang/String;

.field private cropImage:Landroid/net/Uri;

.field private cropImageUri:Landroid/net/Uri;

.field private fileCropUri:Ljava/io/File;

.field private fileUri:Ljava/io/File;

.field private imageUri:Landroid/net/Uri;

.field private isAndroidQ:Z

.field private mCameraImagePath:Ljava/lang/String;

.field private mCameraUri:Landroid/net/Uri;

.field private mCropImageFile:Ljava/io/File;

.field public mService:Lcom/alibaba/service/OssService;

.field private mTmpFile:Ljava/io/File;

.field private picture:Landroid/widget/ImageView;

.field reGeManager:Lcom/method/game/ReverseGeocodingManager;

.field siLoManager:Lcom/method/game/GeocodingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1535
    new-instance v0, Lorg/cocos2dx/javascript/AppActivity$8;

    invoke-direct {v0}, Lorg/cocos2dx/javascript/AppActivity$8;-><init>()V

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 2077
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isImgReq:Z

    const/4 v0, 0x0

    .line 2093
    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 211
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const-string v0, "android.permission.CAMERA"

    .line 173
    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->PERMISSION_CAMERA:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.READ_CALENDAR"

    .line 174
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->PERMISSIONS:[Ljava/lang/String;

    .line 2069
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/photo.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->fileUri:Ljava/io/File;

    .line 2070
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/crop_photo.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->fileCropUri:Ljava/io/File;

    const/4 v0, 0x0

    .line 2091
    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->mTmpFile:Ljava/io/File;

    .line 2092
    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->mCropImageFile:Ljava/io/File;

    const/4 v0, 0x0

    .line 2305
    iput-boolean v0, p0, Lorg/cocos2dx/javascript/AppActivity;->isAndroidQ:Z

    return-void
.end method

.method public static ChargeConsume(Ljava/lang/String;)V
    .locals 2

    .line 1499
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1500
    new-instance p0, Lcom/java/rummybors/googlepay/ChargePacket;

    invoke-direct {p0}, Lcom/java/rummybors/googlepay/ChargePacket;-><init>()V

    const-string v1, "pay_token"

    .line 1501
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/java/rummybors/googlepay/ChargePacket;->SetToken(Ljava/lang/String;)Lcom/java/rummybors/googlepay/ChargePacket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static FBAuthSucc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fbSDK.onFaceBookLoginLoginCallBcak(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$7;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/javascript/AppActivity$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ReqFBAuth()V
    .locals 6

    .line 1431
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1433
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "test"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDataAccessExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/cocos2dx/javascript/AppActivity;->FBAuthSucc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "\u5f00\u59cbfacebook\u767b\u5f55\uff01"

    .line 1439
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v2, "public_profile"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ImageView;
    .locals 1

    .line 165
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/javascript/AppActivity;)Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 165
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 165
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->targetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 165
    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->targetPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lorg/cocos2dx/javascript/AppActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2dx/javascript/AppActivity;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private autoObtainCameraPermission()V
    .locals 5

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_SETTINGS"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 2103
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private autoObtainStoragePermission()V
    .locals 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 2117
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 2122
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    .line 2124
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 2126
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    if-nez v0, :cond_1

    .line 2127
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    sget-object v1, Lorg/cocos2dx/javascript/Constants;->OSS_ENDPOINT:Ljava/lang/String;

    sget-object v2, Lorg/cocos2dx/javascript/Constants;->BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->initOSS(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/service/OssService;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    :cond_1
    const/16 v0, 0xa0

    .line 2129
    invoke-static {p0, v0}, Lcom/java/rummybors/util/PhotoUtils;->openPic(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public static callVibration()V
    .locals 3

    .line 2215
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x3e8

    .line 2216
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static camera(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2268
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isCrop:Z

    const-string v0, "head/"

    .line 2269
    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->imageUploadPath:Ljava/lang/String;

    .line 2270
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {v0}, Lorg/cocos2dx/javascript/AppActivity;->autoObtainCameraPermission()V

    .line 2271
    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;

    return-void
.end method

.method private checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1379
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1383
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1384
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1385
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1387
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "test"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private checkPermissions()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2064
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static conVertImageData(Ljava/lang/String;)[B
    .locals 3

    .line 2380
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    .line 2382
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2383
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 2384
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2387
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static copyStr(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    const-string v0, "copystr"

    .line 791
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Label"

    .line 800
    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 802
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static copyStrUrl(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "copyStrUrl"

    .line 817
    :try_start_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 825
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 826
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/javascript/AppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "URI"

    invoke-static {v2, v3, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    .line 828
    invoke-virtual {v1, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 831
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private createImageFile2()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2366
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2367
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/cocos2dx/javascript/AppActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2368
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2369
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2371
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2372
    invoke-static {v2}, Landroidx/core/os/EnvironmentCompat;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    return-object v2
.end method

.method private createImageUri()Landroid/net/Uri;
    .locals 3

    .line 2353
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2355
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2356
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 2358
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1913
    :try_start_0
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1916
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fileIsExist(Ljava/lang/String;)Z
    .locals 1

    .line 1958
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1963
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    return p1
.end method

.method public static gallery(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 2227
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isCrop:Z

    const-string v1, "head/"

    .line 2228
    sput-object v1, Lorg/cocos2dx/javascript/AppActivity;->imageUploadPath:Ljava/lang/String;

    .line 2229
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isImgReq:Z

    .line 2230
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;

    .line 2231
    invoke-direct {v0}, Lorg/cocos2dx/javascript/AppActivity;->autoObtainStoragePermission()V

    return-void
.end method

.method public static getAddress()Ljava/lang/String;
    .locals 3

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v1, Lorg/cocos2dx/javascript/AppActivity;->Latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lorg/cocos2dx/javascript/AppActivity;->Longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getByteStream([[B)[B
    .locals 4

    .line 2393
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2395
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 2396
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2399
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 2401
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 778
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->removeSplashImage()V

    .line 779
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .line 754
    :try_start_0
    invoke-static {}, Lcom/java/rummybors/util/PhoneUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static getItemForJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 464
    :try_start_0
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static getTuiguangid()Ljava/lang/String;
    .locals 1

    .line 744
    sget-object v0, Lorg/cocos2dx/javascript/Constants;->tuiguangid:Ljava/lang/String;

    return-object v0
.end method

.method public static googlePay(Ljava/lang/String;)V
    .locals 2

    .line 1482
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1483
    new-instance p0, Lcom/java/rummybors/googlepay/ChargePacket;

    invoke-direct {p0}, Lcom/java/rummybors/googlepay/ChargePacket;-><init>()V

    const-string v1, "pay_point"

    .line 1484
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/java/rummybors/googlepay/ChargePacket;->SetProduct(Ljava/lang/String;)Lcom/java/rummybors/googlepay/ChargePacket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static hasSdcard()Z
    .locals 2

    .line 2223
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static initGooglePay(Ljava/lang/String;)V
    .locals 3

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initGooglePay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test123"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1465
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1466
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1467
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static initOosService(Ljava/lang/String;)V
    .locals 10

    .line 662
    sput-object p0, Lorg/cocos2dx/javascript/Constants;->stsserver:Ljava/lang/String;

    .line 664
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 667
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "&"

    .line 668
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    const-string v6, "="

    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 670
    aget-object v6, v5, v3

    const-string v7, ""

    .line 672
    array-length v8, v5

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 673
    aget-object v7, v5, v9

    .line 675
    :cond_0
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "?"

    .line 678
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/cocos2dx/javascript/Constants;->picUrl:Ljava/lang/String;

    const-string p0, "token_id"

    .line 679
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lorg/cocos2dx/javascript/Constants;->token_id:Ljava/lang/String;

    const-string p0, "player_id"

    .line 680
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lorg/cocos2dx/javascript/Constants;->player_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 683
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1371
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1373
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1288
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static isWeixinAvilible()Z
    .locals 5

    .line 1510
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1511
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1513
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1514
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.tencent.mm"

    .line 1515
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static makeToast(Ljava/lang/String;)V
    .locals 2

    .line 1528
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 1529
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1530
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1531
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static openAlbum(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 2235
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isImgReq:Z

    .line 2236
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;

    .line 2237
    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity;->requestAllPower()V

    .line 2238
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2239
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "image/*"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2240
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/cocos2dx/javascript/AppActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static openAnotherApp(Ljava/lang/String;)V
    .locals 2

    .line 770
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 771
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 773
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 774
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openCamera()V
    .locals 4

    .line 2313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2319
    iget-boolean v1, p0, Lorg/cocos2dx/javascript/AppActivity;->isAndroidQ:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2320
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->createImageUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 2323
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->createImageFile2()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2325
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 2329
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    .line 2330
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 2332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/cocos2dx/javascript/Constants;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 2334
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 2339
    :cond_2
    :goto_1
    iput-object v2, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    const-string v1, "output"

    .line 2341
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 2342
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 2343
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0xa1

    .line 2344
    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method

.method public static openCamera(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2287
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isCrop:Z

    .line 2289
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "path"

    .line 2290
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->imageUploadPath:Ljava/lang/String;

    const-string p0, "player_id"

    .line 2291
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2293
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2295
    :goto_0
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->autoObtainCameraPermission()V

    return-void
.end method

.method public static openFacebook()V
    .locals 4

    const-string v0, "android.intent.action.VIEW"

    .line 930
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v2, "com.facebook.katana"

    invoke-static {v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "fb://page/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 933
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v2, v1}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 936
    :catch_0
    :try_start_1
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, """  # removed backend URL"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static openFacebookUrl(Ljava/lang/String;)V
    .locals 3

    const-string p0, "android.intent.action.VIEW"

    .line 972
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "com.facebook.katana"

    invoke-static {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 975
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1, v1}, Lorg/cocos2dx/javascript/AppActivity;->getFacebookPageURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 976
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 977
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    :catch_0
    :try_start_1
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, """  # removed backend URL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 982
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static openLibrary(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2275
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isCrop:Z

    .line 2277
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "path"

    .line 2278
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->imageUploadPath:Ljava/lang/String;

    const-string p0, "player_id"

    .line 2279
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2281
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2283
    :goto_0
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->autoObtainStoragePermission()V

    return-void
.end method

.method public static openWhatsapp()V
    .locals 4

    .line 1103
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "com.whatsapp"

    invoke-static {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 1105
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    const-string v3, "This is my text to send."

    .line 1106
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    .line 1107
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static picDecrypt(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 6

    :try_start_0
    const-string v0, "rummya1abc"

    const/16 v1, 0xa

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 1304
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1306
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    const/4 v5, 0x0

    .line 1307
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1309
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1310
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 1311
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1312
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1315
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 1318
    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 1319
    aget-byte v1, p0, v1

    const/16 v2, 0xb

    .line 1320
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, -0x1

    .line 1321
    aget-byte v4, p0, v2

    xor-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1323
    :cond_2
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1324
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1328
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static popreviewPlay()V
    .locals 0

    return-void
.end method

.method public static removeSplashImage()V
    .locals 2

    .line 481
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashUIHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$3;

    invoke-direct {v1}, Lorg/cocos2dx/javascript/AppActivity$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static requestVoice()V
    .locals 4

    .line 492
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static reviewPlay()V
    .locals 0

    return-void
.end method

.method private saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "Save Bitmap"

    const-string v1, "Ready to save picture"

    .line 1929
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "/images/"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save Path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-direct {p0, p3}, Lorg/cocos2dx/javascript/AppActivity;->fileIsExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "TargetPath isn\'t exist"

    .line 1935
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1938
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1943
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p2, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1945
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 1946
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    const-string p1, "The picture is save to your phone!"

    .line 1947
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1949
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p3
.end method

.method public static saveImg(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1339
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1340
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1341
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1342
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1344
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method public static saveTracker()V
    .locals 3

    .line 641
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

    .line 642
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v2, Lorg/cocos2dx/javascript/AppActivity$4;

    invoke-direct {v2, v0}, Lorg/cocos2dx/javascript/AppActivity$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static schemeCallback(Ljava/lang/String;)V
    .locals 2

    .line 1352
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$6;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setItemForJava(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 458
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->setItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static shareCallback(II)V
    .locals 2

    .line 837
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$5;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/javascript/AppActivity$5;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shareLinkToByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1267
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.facebook.katana"

    .line 1268
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1269
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1270
    invoke-direct {p0, p3}, Lorg/cocos2dx/javascript/AppActivity;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "image/*"

    .line 1271
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1273
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.extra.STREAM"

    .line 1272
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p3, "text/plain"

    .line 1277
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.TEXT"

    .line 1278
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    :goto_0
    invoke-virtual {p0, p1}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private shareLinkToFacebook(Ljava/lang/String;)V
    .locals 2

    const-string v0, "facebook"

    const/4 v1, 0x0

    .line 1254
    invoke-direct {p0, v0, p1, v1}, Lorg/cocos2dx/javascript/AppActivity;->shareLinkToByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sharePhotoToFacebook()V
    .locals 3

    const-string v0, "facebook"

    const/4 v1, 0x0

    const-string v2, "/storage/sdcard1/1.jpg"

    .line 1262
    invoke-direct {p0, v0, v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->shareLinkToByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static shareToSystemText(Ljava/lang/String;)V
    .locals 2

    .line 1243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 1244
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 1245
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "text/plain"

    .line 1246
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 1248
    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    .line 1249
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static shareToTelegram(Ljava/lang/String;)V
    .locals 4

    .line 1121
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "test"

    .line 1122
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 1126
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "path"

    .line 1127
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "content"

    .line 1128
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1129
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "org.telegram.messenger"

    .line 1130
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    .line 1131
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    .line 1132
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 1133
    invoke-virtual {v2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1159
    sget-object v3, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v3, v2}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 1160
    invoke-static {v1, p0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f02\u5e38\u4fe1\u606f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 1165
    invoke-static {v1, p0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    :goto_0
    return-void
.end method

.method public static shareToTelegramImg(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    .line 1193
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "path"

    .line 1194
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "content"

    .line 1195
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "org.telegram.messenger"

    .line 1197
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    .line 1198
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    .line 1199
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1200
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p0, :cond_2

    const-string v3, "@assets/"

    .line 1204
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1205
    sget-object v3, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v3}, Lorg/cocos2dx/javascript/AppActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/16 v4, 0x8

    .line 1206
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 1208
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p0, v3

    .line 1210
    :goto_0
    invoke-static {p0}, Lorg/cocos2dx/javascript/AppActivity;->picDecrypt(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 1212
    :cond_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Share"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1216
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p0, v3, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1217
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v3, "image/*"

    .line 1218
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    .line 1219
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1223
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "bitmap == null"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1226
    :cond_3
    :goto_1
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {p0, v2}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 1227
    invoke-static {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1230
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f02\u5e38\u4fe1\u606f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "test"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 1232
    invoke-static {v0, p0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    :goto_2
    return-void
.end method

.method public static shareToWhatsapp(Ljava/lang/String;)V
    .locals 4

    const-string v0, "test"

    .line 993
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .line 995
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "path"

    .line 996
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "content"

    .line 997
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 999
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.whatsapp"

    .line 1000
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    .line 1001
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    .line 1002
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 1003
    invoke-virtual {v2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1006
    sget-object v3, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v3, v2}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 1007
    invoke-static {v1, p0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1010
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f02\u5e38\u4fe1\u606f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 1012
    invoke-static {v1, p0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    :goto_0
    return-void
.end method

.method public static shareToWhatsappImg(Ljava/lang/String;)V
    .locals 6

    const-string v0, "test"

    .line 1048
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .line 1051
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "path"

    .line 1052
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "content"

    .line 1053
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1055
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.whatsapp"

    .line 1056
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "text/plain"

    .line 1057
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TEXT"

    .line 1058
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 1059
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p0, :cond_2

    const-string v4, "@assets/"

    .line 1063
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1064
    sget-object v4, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v4}, Lorg/cocos2dx/javascript/AppActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/16 v5, 0x8

    .line 1065
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 1067
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p0, v4

    .line 1069
    :goto_0
    invoke-static {p0}, Lorg/cocos2dx/javascript/AppActivity;->picDecrypt(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 1071
    :cond_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v4, "ws_share.png"

    .line 1074
    invoke-static {p0, v4}, Lorg/cocos2dx/javascript/AppActivity;->saveImg(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1078
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v4, "image/*"

    .line 1079
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    .line 1080
    invoke-virtual {v3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1084
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "bitmap == null"

    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1087
    :cond_3
    :goto_1
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {p0, v3}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 1088
    invoke-static {v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1091
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f02\u5e38\u4fe1\u606f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 1093
    invoke-static {v1, p0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    :goto_2
    return-void
.end method

.method public static shareTofacebook(Ljava/lang/String;)V
    .locals 2

    const-string v0, "test"

    .line 854
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "url"

    .line 863
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 865
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity;->shareLinkToFacebook(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 871
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 872
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 878
    invoke-static {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    :goto_0
    return-void
.end method

.method public static shareTofacebookImg(Ljava/lang/String;)V
    .locals 3

    const-string v0, "test"

    .line 886
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "url"

    .line 890
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "title"

    .line 891
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "content"

    .line 892
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "path"

    .line 893
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 895
    new-instance v1, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 896
    invoke-virtual {v1, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 897
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 898
    new-instance v1, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 899
    invoke-virtual {v1, v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    .line 900
    invoke-virtual {v1, p0}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    .line 901
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p0

    .line 902
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v0, p0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 913
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 915
    :try_start_1
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, """  # removed backend URL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 917
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 919
    invoke-static {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->shareCallback(II)V

    :goto_1
    return-void
.end method

.method private showInstallDialog(Ljava/lang/String;)V
    .locals 3

    .line 1967
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1969
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "OpenInstall"

    .line 1970
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1972
    new-instance p1, Lorg/cocos2dx/javascript/AppActivity$13;

    invoke-direct {p1, p0}, Lorg/cocos2dx/javascript/AppActivity$13;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    const-string v1, "ok"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1978
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1979
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1980
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWakeUpDialog(Ljava/lang/String;)V
    .locals 3

    .line 1985
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1986
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "OpenInstall"

    .line 1987
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1989
    new-instance p1, Lorg/cocos2dx/javascript/AppActivity$14;

    invoke-direct {p1, p0}, Lorg/cocos2dx/javascript/AppActivity$14;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    const-string v1, "ok"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1995
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1996
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1997
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static signIn()V
    .locals 0

    return-void
.end method

.method private signOut()V
    .locals 0

    return-void
.end method

.method private startCropImage(Landroid/net/Uri;)V
    .locals 4

    .line 2160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 2161
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v1, "true"

    .line 2163
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2165
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "aspectY"

    const-string v2, "aspectX"

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/16 p1, 0x270f

    .line 2167
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x270e

    .line 2168
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2171
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2172
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string p1, "scale"

    .line 2179
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2182
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->photoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2186
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2187
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2189
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2191
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2194
    :goto_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImageUri:Landroid/net/Uri;

    const-string v2, "output"

    .line 2195
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2198
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outputFormat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "return-data"

    .line 2200
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2201
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cropImageUri=>"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object p1, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "noFaceDetection"

    .line 2203
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 2207
    invoke-virtual {p0, v0, p1}, Lorg/cocos2dx/javascript/AppActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static uploadPictures()V
    .locals 4

    .line 2244
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2245
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 2247
    :cond_0
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    iget-object v1, v0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    if-nez v1, :cond_1

    .line 2248
    sget-object v1, Lorg/cocos2dx/javascript/Constants;->OSS_ENDPOINT:Ljava/lang/String;

    sget-object v2, Lorg/cocos2dx/javascript/Constants;->BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->initOSS(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/service/OssService;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    .line 2251
    :cond_1
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    iget-object v0, v0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    if-eqz v0, :cond_2

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "club/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2253
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v2, Lorg/cocos2dx/javascript/AppActivity$15;

    invoke-direct {v2, v0}, Lorg/cocos2dx/javascript/AppActivity$15;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static watchGoogleAD()V
    .locals 0

    return-void
.end method

.method public static watchUnityAD()V
    .locals 0

    return-void
.end method


# virtual methods
.method public createSplashImage()Landroid/widget/ImageView;
    .locals 2

    .line 473
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashImage:Landroid/widget/ImageView;

    const v1, 0x7f070056

    .line 474
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 476
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFacebookPageURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 957
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_0
    const-string v0, "com.facebook.katana"

    const/4 v1, 0x0

    .line 959
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v0, 0x2dd1e2

    if-lt p1, v0, :cond_0

    const-string p1, "fb://profile/187947059973572"

    return-object p1

    .line 964
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fb://page/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->FACEBOOK_PAGE_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 967
    :catch_0
    sget-object p1, Lorg/cocos2dx/javascript/AppActivity;->FACEBOOK_URL:Ljava/lang/String;

    return-object p1
.end method

.method public getFromRaw()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 730
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 731
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v0

    .line 734
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 735
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    .line 738
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getServerPic()V
    .locals 6

    .line 1853
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 1856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition:form-data;name=\"uploadedfile\";filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->targetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1863
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->targetPath:Ljava/lang/String;

    invoke-static {v2}, Lorg/cocos2dx/javascript/AppActivity;->conVertImageData(Ljava/lang/String;)[B

    move-result-object v2

    .line 1864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--*****\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--*****--\r\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [[B

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 1867
    invoke-static {v4}, Lorg/cocos2dx/javascript/AppActivity;->getByteStream([[B)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 1869
    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 1871
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lorg/cocos2dx/javascript/Constants;->picUrl:Ljava/lang/String;

    .line 1872
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 1873
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    .line 1874
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Charset"

    const-string v3, "UTF-8"

    .line 1875
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v3, "multipart/form-data;boundary=*****"

    .line 1876
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    sget-object v2, Lorg/cocos2dx/javascript/Constants;->token_id:Ljava/lang/String;

    const-string v3, "token"

    .line 1877
    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    sget-object v2, Lorg/cocos2dx/javascript/Constants;->player_id:Ljava/lang/String;

    const-string v3, "playerid"

    .line 1878
    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 1879
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 1883
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$12;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$12;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method protected hideVirtualButton()V
    .locals 8

    .line 609
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 612
    const-class v0, Landroid/view/View;

    :try_start_0
    const-string v1, "SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION"

    .line 615
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN"

    .line 616
    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    .line 617
    invoke-static {v0, v3}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "SYSTEM_UI_FLAG_FULLSCREEN"

    .line 618
    invoke-static {v0, v4}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "SYSTEM_UI_FLAG_IMMERSIVE_STICKY"

    .line 619
    invoke-static {v0, v5}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    .line 620
    invoke-static {v0, v6}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    or-int/2addr v0, v4

    or-int/2addr v0, v5

    .line 623
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    .line 629
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v2, "setSystemUiVisibility"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3, v7}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 634
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->TAG:Ljava/lang/String;

    const-string v2, "hideVirtualButton"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public initOSS(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/service/OssService;
    .locals 4

    .line 689
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endpost"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/cocos2dx/javascript/Constants;->stsserver:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "test123"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-object p2, Lorg/cocos2dx/javascript/Constants;->stsserver:Ljava/lang/String;

    const-string v0, """  # removed backend URL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 713
    sget-object p2, Lorg/cocos2dx/javascript/Constants;->stsserver:Ljava/lang/String;

    .line 714
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;

    invoke-direct {v0, p2}, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;-><init>(Ljava/lang/String;)V

    .line 716
    sget-object p2, Lorg/cocos2dx/javascript/Constants;->BUCKET_NAME:Ljava/lang/String;

    .line 717
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    const/16 v2, 0x3a98

    .line 718
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    .line 719
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    const/4 v2, 0x5

    .line 720
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    const/4 v2, 0x2

    .line 721
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 722
    new-instance v2, Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    .line 724
    new-instance p1, Lcom/alibaba/service/OssService;

    invoke-direct {p1, v2, p2}, Lcom/alibaba/service/OssService;-><init>(Lcom/alibaba/sdk/android/oss/OSS;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 1700
    sget-object v3, Lorg/cocos2dx/javascript/AppActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 1701
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1702
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lorg/cocos2dx/javascript/SDKWrapper;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    const/4 v4, 0x2

    const/4 v5, -0x1

    const-string v6, "_"

    const-string v7, "yyyyMMdd_HHmmss"

    if-eq p1, v4, :cond_7

    const-string v4, ".jpg"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-nez p2, :cond_0

    const-string v0, "cancel"

    .line 1772
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1775
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->fileCropUri:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "qeqeqwe121"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$10;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$10;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_1
    if-nez p2, :cond_1

    const-string v0, "Photo canceled"

    .line 1707
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    if-ne p2, v5, :cond_a

    .line 1711
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->fileCropUri:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImageUri:Landroid/net/Uri;

    .line 1712
    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    sput-object v1, Lorg/cocos2dx/javascript/AppActivity;->cropImagePath:Ljava/lang/String;

    .line 1713
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    .line 1714
    sget-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isCrop:Z

    if-eqz v0, :cond_2

    .line 1715
    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraUri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImageUri:Landroid/net/Uri;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    const/16 v8, 0xa2

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/java/rummybors/util/PhotoUtils;->cropImageUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;IIIII)V

    goto/16 :goto_0

    .line 1719
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1720
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0, v1, v0, v3}, Lorg/cocos2dx/javascript/AppActivity;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->targetPath:Ljava/lang/String;

    .line 1723
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getServerPic()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 1726
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    if-nez p3, :cond_3

    return-void

    .line 1738
    :cond_3
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->hasSdcard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1739
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->fileCropUri:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImageUri:Landroid/net/Uri;

    .line 1740
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/java/rummybors/util/PhotoUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1741
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_4

    .line 1742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/cocos2dx/javascript/Constants;->gamepackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1744
    :cond_4
    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    .line 1745
    sget-boolean v1, Lorg/cocos2dx/javascript/AppActivity;->isCrop:Z

    if-eqz v1, :cond_5

    .line 1746
    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    .line 1747
    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImageUri:Landroid/net/Uri;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    const/16 v8, 0xa2

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v8}, Lcom/java/rummybors/util/PhotoUtils;->cropImageUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;IIIII)V

    goto/16 :goto_0

    .line 1750
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/java/rummybors/util/PhotoUtils;->getRealPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    .line 1753
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->mCameraImagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1754
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->playerid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0, v1, v0, v3}, Lorg/cocos2dx/javascript/AppActivity;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->targetPath:Ljava/lang/String;

    .line 1757
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getServerPic()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 1760
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "The device does not have an SD card\uff01"

    .line 1767
    invoke-static {p0, v0}, Lcom/java/rummybors/util/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    if-ne p2, v5, :cond_a

    .line 1831
    :try_start_2
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImage:Landroid/net/Uri;

    .line 1832
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1831
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->photoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1834
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0, v1, v0, v2}, Lorg/cocos2dx/javascript/AppActivity;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->targetPath:Ljava/lang/String;

    const-string v1, "targetPath"

    .line 1837
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$11;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$11;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1845
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_8
    if-nez p2, :cond_9

    return-void

    .line 1819
    :cond_9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1820
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->cropImage:Landroid/net/Uri;

    .line 1821
    invoke-direct {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->startCropImage(Landroid/net/Uri;)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .line 2034
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/SDKWrapper;->onBackPressed()V

    .line 2035
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2040
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2dx/javascript/SDKWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2041
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 219
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    sput-object p1, Lorg/cocos2dx/javascript/AppActivity;->splashUIHandler:Landroid/os/Handler;

    .line 220
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->createSplashImage()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x400

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x404

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 223
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x2

    .line 226
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 237
    :cond_1
    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    .line 239
    sput-object p0, Lcom/java/rummybors/util/AndroidBridge;->c2dx:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 240
    sput-object p0, Lcom/java/rummybors/util/GameUtil;->context:Landroid/content/Context;

    .line 241
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/cocos2dx/javascript/SDKWrapper;->init(Landroid/content/Context;)V

    const-string p1, "jsb.sqlite"

    const-string v0, "data"

    .line 242
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->init(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "AGENT_ID"

    const-string v0, "2015"

    .line 243
    invoke-static {p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->setItemForJava(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 244
    sput-object p1, Lcom/java/rummybors/util/AndroidBridge;->LOCAL_OPEN_URL:Ljava/lang/String;

    .line 263
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    sput-object p1, Lorg/cocos2dx/javascript/AppActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 264
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    sput-object p1, Lorg/cocos2dx/javascript/AppActivity;->loginManager:Lcom/facebook/login/LoginManager;

    .line 265
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$1;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 313
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getFromRaw()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/cocos2dx/javascript/Constants;->tuiguangid:Ljava/lang/String;

    .line 315
    new-instance p1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p1, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    sput-object p1, Lorg/cocos2dx/javascript/AppActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    .line 316
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$2;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 333
    invoke-static {p0}, Lcom/java/rummybors/util/SaveImgModule;->init(Lorg/cocos2dx/javascript/AppActivity;)V

    .line 366
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 368
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/Constants;->schemeUrl:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOG_TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 8

    .line 1663
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move-object v0, v7

    .line 1665
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 1666
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0, v7, p0}, Lorg/cocos2dx/javascript/SDKWrapper;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;Landroid/content/Context;)V

    return-object v7
.end method

.method protected onDestroy()V
    .locals 1

    .line 1687
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 1688
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/SDKWrapper;->onDestroy()V

    .line 1689
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->siLoManager:Lcom/method/game/GeocodingManager;

    if-eqz v0, :cond_0

    .line 1690
    invoke-virtual {v0}, Lcom/method/game/GeocodingManager;->stop()V

    .line 1691
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->reGeManager:Lcom/method/game/ReverseGeocodingManager;

    if-eqz v0, :cond_1

    .line 1692
    invoke-virtual {v0}, Lcom/method/game/ReverseGeocodingManager;->stop()V

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 2003
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2004
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2dx/javascript/SDKWrapper;->onNewIntent(Landroid/content/Intent;)V

    .line 2008
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2010
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2011
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/cocos2dx/javascript/Constants;->schemeUrl:Ljava/lang/String;

    .line 2012
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOG_TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    sget-object p1, Lorg/cocos2dx/javascript/Constants;->schemeUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Lorg/cocos2dx/javascript/Constants;->schemeUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1680
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 1681
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/SDKWrapper;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1646
    :cond_0
    iget-object p1, p0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    if-nez p1, :cond_1

    .line 1647
    sget-object p1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    sget-object p2, Lorg/cocos2dx/javascript/Constants;->OSS_ENDPOINT:Ljava/lang/String;

    sget-object v0, Lorg/cocos2dx/javascript/Constants;->BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/cocos2dx/javascript/AppActivity;->initOSS(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/service/OssService;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    .line 1649
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_8

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_8

    const/16 p1, 0xa0

    .line 1650
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PhotoUtils;->openPic(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1636
    :cond_2
    iget-object p1, p0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    if-nez p1, :cond_3

    .line 1637
    sget-object p1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    sget-object p2, Lorg/cocos2dx/javascript/Constants;->OSS_ENDPOINT:Ljava/lang/String;

    sget-object p3, Lorg/cocos2dx/javascript/Constants;->BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/cocos2dx/javascript/AppActivity;->initOSS(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/service/OssService;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity;->mService:Lcom/alibaba/service/OssService;

    .line 1639
    :cond_3
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->openCamera()V

    goto :goto_0

    .line 1606
    :cond_4
    invoke-static {p3}, Lcom/java/rummybors/util/PermissionUtils;->isPermissionRequestSuccess([I)Z

    goto :goto_0

    .line 1587
    :cond_5
    sget-object p1, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    iget-object p2, p0, Lorg/cocos2dx/javascript/AppActivity;->PERMISSIONS:[Ljava/lang/String;

    new-instance p3, Lorg/cocos2dx/javascript/AppActivity$9;

    invoke-direct {p3, p0}, Lorg/cocos2dx/javascript/AppActivity$9;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    invoke-static {p1, p2, p3}, Lcom/java/rummybors/util/PermissionUtils;->onRequestMorePermissionsResult(Landroid/content/Context;[Ljava/lang/String;Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;)V

    goto :goto_0

    .line 1576
    :cond_6
    invoke-static {p3}, Lcom/java/rummybors/util/PermissionUtils;->isPermissionRequestSuccess([I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "tagg"

    const-string p2, "onCreate errr"

    .line 1581
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 2021
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestart()V

    .line 2022
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/SDKWrapper;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 2046
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2dx/javascript/SDKWrapper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2047
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1673
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 1674
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/SDKWrapper;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 2052
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2dx/javascript/SDKWrapper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2053
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 2058
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/SDKWrapper;->onStart()V

    .line 2059
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    const-string v0, "AGENT_ID"

    const-string v1, "2015"

    .line 2060
    invoke-static {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->setItemForJava(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 2027
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 2028
    invoke-static {}, Lorg/cocos2dx/javascript/SDKWrapper;->getInstance()Lorg/cocos2dx/javascript/SDKWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/SDKWrapper;->onStop()V

    return-void
.end method

.method public requestAllPower()V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.CAMERA"

    .line 2146
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
