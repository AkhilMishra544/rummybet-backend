.class public Lcom/facebook/share/internal/LikeActionController;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$RequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;,
        Lcom/facebook/share/internal/LikeActionController$CreationCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_ERROR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_RESET:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_RESET"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_LIKE_ACTION_CONTROLLER_UPDATED:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.UPDATED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_OBJECT_ID_KEY:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.OBJECT_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ERROR_CODE_OBJECT_ALREADY_LIKED:I = 0xdad

.field public static final ERROR_INVALID_OBJECT_ID:Ljava/lang/String; = "Invalid Object Id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_PUBLISH_ERROR:Ljava/lang/String; = "Unable to publish the like/unlike action"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final JSON_BOOL_IS_OBJECT_LIKED_KEY:Ljava/lang/String; = "is_object_liked"

.field private static final JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE:Ljava/lang/String; = "facebook_dialog_analytics_bundle"

.field private static final JSON_INT_OBJECT_TYPE_KEY:Ljava/lang/String; = "object_type"

.field private static final JSON_INT_VERSION_KEY:Ljava/lang/String; = "com.facebook.share.internal.LikeActionController.version"

.field private static final JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY:Ljava/lang/String; = "like_count_string_without_like"

.field private static final JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY:Ljava/lang/String; = "like_count_string_with_like"

.field private static final JSON_STRING_OBJECT_ID_KEY:Ljava/lang/String; = "object_id"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY:Ljava/lang/String; = "social_sentence_without_like"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY:Ljava/lang/String; = "social_sentence_with_like"

.field private static final JSON_STRING_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final LIKE_ACTION_CONTROLLER_STORE:Ljava/lang/String; = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

.field private static final LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY:Ljava/lang/String; = "OBJECT_SUFFIX"

.field private static final LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY:Ljava/lang/String; = "PENDING_CONTROLLER_KEY"

.field private static final LIKE_ACTION_CONTROLLER_VERSION:I = 0x3

.field private static final LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY:Ljava/lang/String; = "like_count_string"

.field private static final LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY:Ljava/lang/String; = "object_is_liked"

.field private static final LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY:Ljava/lang/String; = "social_sentence"

.field private static final LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final MAX_CACHE_SIZE:I = 0x80

.field private static final MAX_OBJECT_SUFFIX:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "LikeActionController"

.field private static accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/share/internal/LikeActionController;",
            ">;"
        }
    .end annotation
.end field

.field private static controllerDiskCache:Lcom/facebook/internal/FileLruCache;

.field private static diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static isInitialized:Z

.field private static mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static objectIdForPendingController:Ljava/lang/String;

.field private static volatile objectSuffix:I


# instance fields
.field private facebookDialogAnalyticsBundle:Landroid/os/Bundle;

.field private isObjectLiked:Z

.field private isObjectLikedOnServer:Z

.field private isPendingLikeOrUnlike:Z

.field private likeCountStringWithLike:Ljava/lang/String;

.field private likeCountStringWithoutLike:Ljava/lang/String;

.field private logger:Lcom/facebook/appevents/InternalAppEventsLogger;

.field private objectId:Ljava/lang/String;

.field private objectIsPage:Z

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private socialSentenceWithLike:Ljava/lang/String;

.field private socialSentenceWithoutLike:Ljava/lang/String;

.field private unlikeToken:Ljava/lang/String;

.field private verifiedObjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    .line 145
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    .line 582
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/LikeActionController;IILandroid/content/Intent;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/InternalAppEventsLogger;
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct/range {p0 .. p6}, Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/LikeActionController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->refreshStatusAsync()V

    return-void
.end method

.method static synthetic access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishAgainIfNeeded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/facebook/share/internal/LikeActionController;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    return p0
.end method

.method static synthetic access$2600(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 75
    sget v0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .line 75
    sput p0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 75
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Lcom/facebook/internal/FileLruCache;
    .locals 1

    .line 75
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    return-object p0
.end method

.method private static broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 559
    invoke-static {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 563
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    .line 566
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    move-object p2, p1

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeActionController;->getObjectId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 573
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 575
    :cond_2
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    .line 576
    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private canUseOGPublish()Z
    .locals 2

    .line 880
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 883
    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 885
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 887
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 865
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    return-void
.end method

.method private static createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .locals 1

    .line 263
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    return-void

    .line 271
    :cond_0
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/LikeActionController;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 275
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 279
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/share/internal/LikeActionController;)V

    .line 283
    sget-object p0, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/facebook/share/internal/LikeActionController$2;

    invoke-direct {p1, v0}, Lcom/facebook/share/internal/LikeActionController$2;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    .line 291
    invoke-static {p2, v0, p0}, Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method private static deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .locals 5

    const/4 v0, 0x0

    .line 438
    :try_start_0
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 439
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v1, p0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 441
    :try_start_1
    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->deserializeFromJson(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 451
    :goto_1
    invoke-static {p0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_4

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 447
    :goto_2
    :try_start_2
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v3, "Unable to deserialize controller from disk"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p0, :cond_2

    .line 451
    invoke-static {p0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 453
    :cond_2
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static deserializeFromJson(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .locals 4

    const/4 v0, 0x0

    .line 462
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, -0x1

    .line 463
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    return-object v0

    :cond_0
    const-string p0, "object_id"

    .line 470
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "object_type"

    .line 471
    sget-object v3, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 472
    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 474
    new-instance v3, Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/facebook/share/internal/LikeActionController;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    const-string p0, "like_count_string_with_like"

    .line 479
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    const-string p0, "like_count_string_without_like"

    .line 481
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    const-string p0, "social_sentence_with_like"

    .line 483
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    const-string p0, "social_sentence_without_like"

    .line 485
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    const-string p0, "is_object_liked"

    .line 486
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    const-string p0, "unlike_token"

    .line 487
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    const-string p0, "facebook_dialog_analytics_bundle"

    .line 490
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 493
    invoke-static {p0}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 496
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v2, "Unable to deserialize controller from JSON"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V
    .locals 4

    .line 1107
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1109
    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;->onComplete()V

    :cond_0
    return-void

    .line 1115
    :cond_1
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1117
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1119
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1120
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1121
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1123
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$11;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$11;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1153
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method private getAppEventsLogger()Lcom/facebook/appevents/InternalAppEventsLogger;
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->logger:Lcom/facebook/appevents/InternalAppEventsLogger;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->logger:Lcom/facebook/appevents/InternalAppEventsLogger;

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->logger:Lcom/facebook/appevents/InternalAppEventsLogger;

    return-object v0
.end method

.method private static getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 535
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 536
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 544
    invoke-static {v0}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    const-string v3, ""

    .line 550
    invoke-static {v0, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p0

    const/4 p0, 0x2

    sget v0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    .line 551
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    const-string p0, "%s|%s|com.fb.sdk.like|%d"

    .line 546
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    sget-boolean v0, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->performFirstInitialize()V

    .line 217
    :cond_0
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    goto :goto_0

    .line 222
    :cond_1
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    :goto_0
    return-void
.end method

.method private static getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .locals 4

    .line 387
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 389
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/LikeActionController;

    if-eqz v0, :cond_0

    .line 392
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    :cond_0
    return-object v0
.end method

.method private getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;
    .locals 2

    .line 783
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$6;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static handleOnActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    .line 180
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "PENDING_CONTROLLER_KEY"

    .line 183
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 186
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 191
    :cond_1
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$1;-><init>(IILandroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 331
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/share/internal/LikeActionController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$4;-><init>(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1158
    iget-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    const-string v1, "object_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {p2}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "object_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "current_action"

    .line 1160
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object p1

    const-string p2, "fb_like_control_error"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method private logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 2

    .line 1166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    .line 1168
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1171
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "error"

    .line 1170
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 775
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;

    move-result-object v0

    .line 774
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    .line 779
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->clearState()V

    return-void
.end method

.method private static declared-synchronized performFirstInitialize()V
    .locals 5

    const-class v0, Lcom/facebook/share/internal/LikeActionController;

    monitor-enter v0

    .line 295
    :try_start_0
    sget-boolean v1, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 296
    monitor-exit v0

    return-void

    .line 299
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    .line 301
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    .line 303
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    .line 305
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    .line 306
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v4}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v2, v4}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    .line 308
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->registerAccessTokenTracker()V

    .line 310
    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 311
    invoke-virtual {v1}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v1

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$3;

    invoke-direct {v2}, Lcom/facebook/share/internal/LikeActionController$3;-><init>()V

    .line 310
    invoke-static {v1, v2}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 320
    sput-boolean v3, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private presentLikeDialog(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V
    .locals 4

    .line 731
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v0

    const-string v1, "fb_like_control_did_present_dialog"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 733
    :cond_0
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "fb_like_control_did_present_fallback_dialog"

    goto :goto_0

    :cond_1
    const-string v0, "present_dialog"

    .line 737
    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 738
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v3, "Cannot show the Like Dialog on this device."

    invoke-static {v0, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    .line 742
    invoke-static {v2, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_4

    .line 748
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eqz v0, :cond_2

    .line 750
    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 751
    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    :goto_1
    new-instance v2, Lcom/facebook/share/internal/LikeContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/internal/LikeContent$Builder;-><init>()V

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    .line 754
    invoke-virtual {v2, v3}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v2

    .line 755
    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectType(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeContent$Builder;->build()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 759
    new-instance p1, Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {p1, p2}, Lcom/facebook/share/internal/LikeDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/LikeDialog;->show(Lcom/facebook/share/internal/LikeContent;)V

    goto :goto_2

    .line 761
    :cond_3
    new-instance p2, Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {p2, p1}, Lcom/facebook/share/internal/LikeDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/facebook/share/internal/LikeDialog;->show(Lcom/facebook/share/internal/LikeContent;)V

    .line 764
    :goto_2
    invoke-direct {p0, p3}, Lcom/facebook/share/internal/LikeActionController;->saveState(Landroid/os/Bundle;)V

    .line 766
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object p1

    .line 767
    invoke-virtual {p1, v1, p3}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method private publishAgainIfNeeded(Landroid/os/Bundle;)V
    .locals 2

    .line 1098
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z

    if-eq v0, v1, :cond_0

    .line 1099
    invoke-direct {p0, v0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1102
    iget-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V

    :cond_0
    return-void
.end method

.method private publishDidError(Z)V
    .locals 2

    .line 668
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 670
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v1, "Unable to publish the like/unlike action"

    .line 671
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 673
    invoke-static {p0, v0, p1}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private publishLikeAsync(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 891
    iput-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 893
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/LikeActionController$7;-><init>(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    return-void
.end method

.method private publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z
    .locals 2

    .line 650
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->canUseOGPublish()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 653
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V

    goto :goto_0

    .line 654
    :cond_0
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 656
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/LikeActionController;->publishUnlikeAsync(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private publishUnlikeAsync(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 945
    iput-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 948
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 949
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 950
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 951
    new-instance v2, Lcom/facebook/share/internal/LikeActionController$8;

    invoke-direct {v2, p0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$8;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 976
    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method private static putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/share/internal/LikeActionController;)V
    .locals 3

    .line 379
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 381
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 383
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private refreshStatusAsync()V
    .locals 1

    .line 980
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->refreshStatusViaService()V

    return-void

    .line 988
    :cond_0
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$9;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/LikeActionController$9;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    return-void
.end method

.method private refreshStatusViaService()V
    .locals 4

    .line 1041
    new-instance v0, Lcom/facebook/share/internal/LikeStatusClient;

    .line 1043
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/LikeStatusClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeStatusClient;->start()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1048
    :cond_0
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$10;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/LikeActionController$10;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    .line 1094
    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeStatusClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    return-void
.end method

.method private static registerAccessTokenTracker()V
    .locals 1

    .line 345
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$5;

    invoke-direct {v0}, Lcom/facebook/share/internal/LikeActionController$5;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    return-void
.end method

.method private saveState(Landroid/os/Bundle;)V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 856
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 859
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    return-void
.end method

.method private static serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V
    .locals 3

    .line 403
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToJson(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 406
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;

    invoke-direct {v2, p0, v0}, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    :cond_0
    return-void
.end method

.method private static serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 418
    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v1, p0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 421
    :try_start_1
    sget-object p1, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v1, "Unable to serialize controller to disk"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    .line 424
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 426
    :cond_1
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private static serializeToJson(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .locals 3

    .line 504
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, 0x3

    .line 506
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "object_id"

    .line 507
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "object_type"

    .line 508
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "like_count_string_with_like"

    .line 509
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "like_count_string_without_like"

    .line 510
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "social_sentence_with_like"

    .line 512
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "social_sentence_without_like"

    .line 514
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_object_liked"

    .line 516
    iget-boolean v2, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "unlike_token"

    .line 517
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    .line 520
    invoke-static {p0}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "facebook_dialog_analytics_bundle"

    .line 522
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 526
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v1, "Unable to serialize controller to JSON"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static storeObjectIdForPendingController(Ljava/lang/String;)V
    .locals 2

    .line 869
    sput-object p0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 870
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v1, 0x0

    .line 873
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 874
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    const-string v1, "PENDING_CONTROLLER_KEY"

    .line 875
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 876
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateLikeState(Z)V
    .locals 7

    .line 678
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 695
    invoke-static {p2, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 696
    invoke-static {p3, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 697
    invoke-static {p4, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 698
    invoke-static {p5, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 699
    invoke-static {p6, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 701
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 703
    invoke-static {p2, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 704
    invoke-static {p3, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 705
    invoke-static {p4, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 706
    invoke-static {p5, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 707
    invoke-static {p6, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 713
    :cond_2
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 714
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 715
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 716
    iput-object p4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 717
    iput-object p5, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 718
    iput-object p6, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 720
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    const-string p1, "com.facebook.sdk.LikeActionController.UPDATED"

    .line 722
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    return-void
.end method

.method private static verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 232
    invoke-static {p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->getMostSpecificObjectType(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/facebook/FacebookException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 242
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x2

    .line 243
    invoke-virtual {p1}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    invoke-direct {v0, p0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v1

    move-object v1, v0

    goto :goto_0

    .line 246
    :cond_0
    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 249
    :goto_0
    invoke-static {p2, p0, v1}, Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    return-void
.end method


# virtual methods
.method public getLikeCountString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 594
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialSentence()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public isObjectLiked()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 606
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method public shouldEnableView()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public toggleLike(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    xor-int/lit8 v0, v0, 0x1

    .line 620
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->canUseOGPublish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 623
    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    if-eqz v1, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object p1

    const-string p2, "fb_like_control_did_undo_quickly"

    .line 628
    invoke-virtual {p1, p2, p3}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 630
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    .line 633
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    goto :goto_0

    .line 637
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method
