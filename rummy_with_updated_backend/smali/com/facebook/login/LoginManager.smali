.class public Lcom/facebook/login/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginManager$LoginLoggerHolder;,
        Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;
    }
.end annotation


# static fields
.field private static final EXPRESS_LOGIN_ALLOWED:Ljava/lang/String; = "express_login_allowed"

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFERENCE_LOGIN_MANAGER:Ljava/lang/String; = "com.facebook.loginManager"

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/facebook/login/LoginManager;


# instance fields
.field private authType:Ljava/lang/String;

.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private isFamilyLogin:Z

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private messengerPageId:Ljava/lang/String;

.field private resetMessengerState:Z

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private shouldSkipAccountDeduplication:Z

.field private targetApp:Lcom/facebook/login/LoginTargetApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/facebook/login/LoginManager;->getOtherPublishPermissions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 77
    const-class v0, Lcom/facebook/login/LoginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/LoginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 82
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    const-string v0, "rerequest"

    .line 84
    iput-object v0, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/facebook/login/LoginTargetApp;->FACEBOOK:Lcom/facebook/login/LoginTargetApp;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->targetApp:Lcom/facebook/login/LoginTargetApp;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    .line 89
    iput-boolean v0, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    .line 92
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 94
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.facebook.loginManager"

    .line 95
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 97
    sget-boolean v0, Lcom/facebook/FacebookSdk;->hasCustomTabsPrefetching:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/facebook/login/CustomTabPrefetchHelper;

    invoke-direct {v0}, Lcom/facebook/login/CustomTabPrefetchHelper;-><init>()V

    .line 102
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.chrome"

    .line 101
    invoke-static {v1, v2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    .line 104
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V
    .locals 0

    .line 71
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/login/LoginManager;->handleLoginStatusError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    return-void
.end method

.method static computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginResult;
    .locals 3

    .line 1156
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v0

    .line 1157
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1161
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1162
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1165
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1166
    invoke-interface {p0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1167
    new-instance v0, Lcom/facebook/login/LoginResult;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/facebook/login/LoginResult;-><init>(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;
    .locals 1

    const-string v0, "response"

    .line 218
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    return-object p1
.end method

.method private finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/AuthenticationToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/FacebookException;",
            "Z",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1178
    invoke-static {p1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 1179
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    :cond_0
    if-eqz p6, :cond_5

    if-eqz p1, :cond_1

    .line 1184
    invoke-static {p3, p1, p2}, Lcom/facebook/login/LoginManager;->computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginResult;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p5, :cond_4

    if-eqz p2, :cond_2

    .line 1187
    invoke-virtual {p2}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 1190
    invoke-interface {p6, p4}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 1192
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginManager;->setExpressLoginStatus(Z)V

    .line 1193
    invoke-interface {p6, p2}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 1188
    :cond_4
    :goto_1
    invoke-interface {p6}, Lcom/facebook/FacebookCallback;->onCancel()V

    :cond_5
    :goto_2
    return-void
.end method

.method static getExtraDataFromIntent(Landroid/content/Intent;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.facebook.LoginFragment:Result"

    .line 313
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/facebook/login/LoginClient$Result;

    if-nez p0, :cond_1

    return-object v0

    .line 317
    :cond_1
    iget-object p0, p0, Lcom/facebook/login/LoginClient$Result;->extraData:Ljava/util/Map;

    return-object p0
.end method

.method public static getInstance()Lcom/facebook/login/LoginManager;
    .locals 2

    .line 115
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_1

    .line 116
    const-class v0, Lcom/facebook/login/LoginManager;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/facebook/login/LoginManager;

    invoke-direct {v1}, Lcom/facebook/login/LoginManager;-><init>()V

    sput-object v1, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    .line 120
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    return-object v0
.end method

.method private static getOtherPublishPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 948
    new-instance v0, Lcom/facebook/login/LoginManager$2;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager$2;-><init>()V

    .line 956
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static handleLoginStatusError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V
    .locals 2

    .line 1311
    new-instance v0, Lcom/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p3, p2, v0}, Lcom/facebook/login/LoginLogger;->logLoginStatusError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1313
    invoke-interface {p4, v0}, Lcom/facebook/LoginStatusCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method private isExpressLoginAllowed()Z
    .locals 3

    .line 1302
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "express_login_allowed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isPublishPermission(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 942
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 943
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 944
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .line 1087
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string p1, "fb_mobile_login_complete"

    if-nez p6, :cond_1

    const-string p2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 1093
    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1097
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_2

    const-string p5, "1"

    goto :goto_0

    :cond_2
    const-string p5, "0"

    :goto_0
    const-string v1, "try_login_activity"

    .line 1098
    invoke-virtual {v2, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->isFamilyLogin()Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p1, "foa_mobile_login_complete"

    :cond_3
    move-object v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1103
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/login/LoginLogger;->logCompleteLogin(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private logIn(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Lcom/facebook/login/LoginConfiguration;)V
    .locals 1

    .line 867
    invoke-virtual {p0, p3}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p3

    .line 868
    new-instance v0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    invoke-direct {v0, p1, p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;-><init>(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;)V

    invoke-direct {p0, v0, p3}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method private logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 702
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 704
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p2}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 705
    invoke-direct {p0, p1, v0}, Lcom/facebook/login/LoginManager;->loginWithConfiguration(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method private logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 553
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 555
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p2}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 556
    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method private logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .line 1070
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1074
    invoke-virtual {p2}, Lcom/facebook/login/LoginClient$Request;->isFamilyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "foa_mobile_login_start"

    goto :goto_0

    :cond_0
    const-string v0, "fb_mobile_login_start"

    .line 1072
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/facebook/login/LoginLogger;->logStartLogin(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private loginWithConfiguration(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V
    .locals 0

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method private reauthorizeDataAccess(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 2

    .line 644
    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 645
    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method private resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 194
    new-instance v0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 195
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    .line 194
    invoke-direct {p0, v0, p1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 1135
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
    .locals 12

    .line 1202
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    .line 1203
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1205
    new-instance v10, Lcom/facebook/login/LoginLogger;

    move-object v1, p1

    invoke-direct {v10, p1, v8}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1207
    invoke-direct {p0}, Lcom/facebook/login/LoginManager;->isExpressLoginAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    invoke-virtual {v10, v9}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 1209
    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    return-void

    .line 1213
    :cond_0
    new-instance v11, Lcom/facebook/login/LoginStatusClient;

    .line 1218
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, v8

    move-object v3, v9

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/login/LoginStatusClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1222
    new-instance v6, Lcom/facebook/login/LoginManager$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, v9

    move-object v3, v10

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginManager$4;-><init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v11, v6}, Lcom/facebook/login/LoginStatusClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 1288
    invoke-virtual {v10, v9}, Lcom/facebook/login/LoginLogger;->logLoginStatusStart(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v11}, Lcom/facebook/login/LoginStatusClient;->start()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1290
    invoke-virtual {v10, v9}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 1291
    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    :cond_1
    return-void
.end method

.method private setExpressLoginStatus(Z)V
    .locals 2

    .line 1296
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "express_login_allowed"

    .line 1297
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .line 1038
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 1041
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 1042
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/LoginManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/LoginManager$3;-><init>(Lcom/facebook/login/LoginManager;)V

    .line 1041
    invoke-static {v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 1050
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/LoginManager;->tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1053
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1059
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v0

    move-object v7, p2

    .line 1058
    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 1065
    throw v0
.end method

.method private tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 2

    .line 1118
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object p2

    .line 1120
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->resolveIntent(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1125
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/facebook/login/StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method private validatePublishPermissions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 930
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 931
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 932
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Cannot pass a read permission (%s) to a request for publish authorization"

    .line 933
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private validateReadPermissions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 915
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 916
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 917
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    .line 918
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method protected createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .line 982
    new-instance v8, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    new-instance v0, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 985
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    iget-object v4, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    .line 989
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 990
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/login/LoginManager;->targetApp:Lcom/facebook/login/LoginTargetApp;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;)V

    .line 992
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    .line 993
    iget-object p1, p0, Lcom/facebook/login/LoginManager;->messengerPageId:Ljava/lang/String;

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setMessengerPageId(Ljava/lang/String;)V

    .line 994
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->resetMessengerState:Z

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setResetMessengerState(Z)V

    .line 995
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setFamilyLogin(Z)V

    .line 996
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setShouldSkipAccountDeduplication(Z)V

    return-object v8
.end method

.method protected createLoginRequest(Ljava/util/Collection;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .line 1002
    new-instance v8, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    new-instance v0, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1005
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    iget-object v4, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    .line 1009
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/login/LoginManager;->targetApp:Lcom/facebook/login/LoginTargetApp;

    move-object v0, v8

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;)V

    .line 1012
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    .line 1013
    iget-object p1, p0, Lcom/facebook/login/LoginManager;->messengerPageId:Ljava/lang/String;

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setMessengerPageId(Ljava/lang/String;)V

    .line 1014
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->resetMessengerState:Z

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setResetMessengerState(Z)V

    .line 1015
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setFamilyLogin(Z)V

    .line 1016
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    invoke-virtual {v8, p1}, Lcom/facebook/login/LoginClient$Request;->setShouldSkipAccountDeduplication(Z)V

    return-object v8
.end method

.method protected createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;
    .locals 10

    .line 960
    new-instance v9, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 964
    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->getPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .line 965
    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->getPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 963
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    iget-object v4, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    .line 969
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 970
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/login/LoginManager;->targetApp:Lcom/facebook/login/LoginTargetApp;

    .line 972
    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->getNonce()Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;)V

    .line 973
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result p1

    invoke-virtual {v9, p1}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    .line 974
    iget-object p1, p0, Lcom/facebook/login/LoginManager;->messengerPageId:Ljava/lang/String;

    invoke-virtual {v9, p1}, Lcom/facebook/login/LoginClient$Request;->setMessengerPageId(Ljava/lang/String;)V

    .line 975
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->resetMessengerState:Z

    invoke-virtual {v9, p1}, Lcom/facebook/login/LoginClient$Request;->setResetMessengerState(Z)V

    .line 976
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    invoke-virtual {v9, p1}, Lcom/facebook/login/LoginClient$Request;->setFamilyLogin(Z)V

    .line 977
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    invoke-virtual {v9, p1}, Lcom/facebook/login/LoginClient$Request;->setShouldSkipAccountDeduplication(Z)V

    return-object v9
.end method

.method protected createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;
    .locals 9

    .line 1021
    new-instance v8, Lcom/facebook/login/LoginClient$Request;

    sget-object v1, Lcom/facebook/login/LoginBehavior;->DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 1027
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 1028
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/login/LoginManager;->targetApp:Lcom/facebook/login/LoginTargetApp;

    const-string v4, "reauthorize"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;)V

    .line 1030
    iget-boolean v0, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    invoke-virtual {v8, v0}, Lcom/facebook/login/LoginClient$Request;->setFamilyLogin(Z)V

    .line 1031
    iget-boolean v0, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    invoke-virtual {v8, v0}, Lcom/facebook/login/LoginClient$Request;->setShouldSkipAccountDeduplication(Z)V

    return-object v8
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method protected getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    .line 1140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1141
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1142
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request"

    .line 1146
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "com.facebook.LoginFragment:Request"

    .line 1147
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method public getLoginTargetApp()Lcom/facebook/login/LoginTargetApp;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->targetApp:Lcom/facebook/login/LoginTargetApp;

    return-object v0
.end method

.method public getShouldSkipAccountDeduplication()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    return v0
.end method

.method public isFamilyLogin()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    return v0
.end method

.method public logIn(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V
    .locals 2

    .line 833
    instance-of v0, p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    if-eqz v0, :cond_0

    .line 834
    sget-object v0, Lcom/facebook/login/LoginManager;->TAG:Ljava/lang/String;

    const-string v1, "You\'re calling logging in Facebook with an activity supports androidx activity result APIs. Please follow our document to upgrade to new APIs to avoid overriding onActivityResult()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    .line 839
    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public logIn(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 811
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p2}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 812
    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logIn(Landroid/app/Activity;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 850
    invoke-virtual {p0, p2, p3}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    .line 851
    new-instance p3, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {p3, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p3, p2}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public logIn(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 766
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public logIn(Landroid/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 778
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public logIn(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultRegistryOwner;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 907
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p3}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 908
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->logIn(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logIn(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultRegistryOwner;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 888
    invoke-virtual {p0, p3, p4}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p3

    .line 889
    new-instance p4, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    invoke-direct {p4, p1, p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;-><init>(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;)V

    invoke-direct {p0, p4, p3}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public logIn(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 745
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public logIn(Landroidx/fragment/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 756
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public logIn(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V
    .locals 1

    .line 822
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    .line 823
    new-instance v0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 788
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p2}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 789
    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 800
    invoke-virtual {p0, p2, p3}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    .line 801
    new-instance p3, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {p3, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, p3, p2}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public logInWithConfiguration(Landroidx/fragment/app/Fragment;Lcom/facebook/login/LoginConfiguration;)V
    .locals 1

    .line 595
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->loginWithConfiguration(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 715
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 717
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p2}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 718
    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->loginWithConfiguration(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logInWithPublishPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 691
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public logInWithPublishPermissions(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultRegistryOwner;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 733
    invoke-direct {p0, p3}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 734
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p3}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 735
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->logIn(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logInWithPublishPermissions(Landroidx/fragment/app/Fragment;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 674
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V

    return-void

    .line 678
    :cond_0
    new-instance p2, Lcom/facebook/FacebookException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot obtain activity context on the fragment "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public logInWithPublishPermissions(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 660
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 566
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 568
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p2}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 569
    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logInWithReadPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 543
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public logInWithReadPermissions(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultRegistryOwner;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 584
    invoke-direct {p0, p3}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 585
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    invoke-direct {v0, p3}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;)V

    .line 586
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->logIn(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logInWithReadPermissions(Landroidx/fragment/app/Fragment;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 526
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V

    return-void

    .line 530
    :cond_0
    new-instance p2, Lcom/facebook/FacebookException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot obtain activity context on the fragment "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public logInWithReadPermissions(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public logOut()V
    .locals 1

    const/4 v0, 0x0

    .line 464
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 465
    invoke-static {v0}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    const/4 v0, 0x0

    .line 466
    invoke-direct {p0, v0}, Lcom/facebook/login/LoginManager;->setExpressLoginStatus(Z)V

    return-void
.end method

.method public loginWithConfiguration(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V
    .locals 0

    .line 616
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method onActivityResult(ILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    move-result p1

    return p1
.end method

.method onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)Z"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 268
    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    const-string v6, "com.facebook.LoginFragment:Result"

    .line 274
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginClient$Result;

    if-eqz v1, :cond_3

    .line 276
    iget-object v2, v1, Lcom/facebook/login/LoginClient$Result;->request:Lcom/facebook/login/LoginClient$Request;

    .line 277
    iget-object v6, v1, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    .line 279
    iget-object v0, v1, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    sget-object v7, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v0, v7, :cond_0

    .line 280
    iget-object v0, v1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    .line 281
    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->authenticationToken:Lcom/facebook/AuthenticationToken;

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Lcom/facebook/FacebookAuthorizationException;

    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v4

    move-object v7, v0

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v4

    move-object v7, v0

    .line 288
    :goto_0
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    move v15, v5

    move-object v5, v2

    move-object v2, v6

    move v6, v15

    goto :goto_1

    :cond_3
    move-object v0, v4

    move-object v1, v0

    move-object v5, v1

    move-object v7, v5

    const/4 v6, 0x0

    :goto_1
    move-object v8, v1

    move v13, v6

    move-object v1, v7

    move-object v7, v2

    move-object v2, v5

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 292
    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    move-object v7, v2

    move-object v0, v4

    move-object v1, v0

    move-object v2, v1

    move-object v8, v2

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    move-object v7, v2

    move-object v0, v4

    move-object v1, v0

    move-object v2, v1

    move-object v8, v2

    const/4 v13, 0x0

    :goto_2
    if-nez v4, :cond_6

    if-nez v0, :cond_6

    if-nez v13, :cond_6

    .line 296
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_6
    move-object v12, v4

    const/4 v10, 0x1

    const/4 v6, 0x0

    move-object/from16 v5, p0

    move-object v9, v12

    move-object v11, v2

    .line 301
    invoke-direct/range {v5 .. v11}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object/from16 v8, p0

    move-object v9, v0

    move-object v10, v1

    move-object/from16 v14, p3

    .line 304
    invoke-direct/range {v8 .. v14}, Lcom/facebook/login/LoginManager;->finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V

    return v3
.end method

.method public reauthorizeDataAccess(Landroid/app/Activity;)V
    .locals 2

    .line 625
    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 626
    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public reauthorizeDataAccess(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 635
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/login/LoginManager;->reauthorizeDataAccess(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .line 231
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_0

    .line 235
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 237
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/LoginManager$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/LoginManager$1;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V

    .line 236
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void

    .line 232
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveError(Landroid/app/Activity;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 134
    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 135
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    .line 134
    invoke-direct {p0, v0, p1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public resolveError(Landroid/app/Fragment;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 183
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method public resolveError(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 211
    new-instance v0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    invoke-direct {v0, p1, p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;-><init>(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;)V

    .line 214
    invoke-direct {p0, p3}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    .line 211
    invoke-direct {p0, v0, p1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public resolveError(Landroidx/fragment/app/Fragment;Lcom/facebook/CallbackManager;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->resolveError(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Lcom/facebook/GraphResponse;)V

    return-void

    .line 170
    :cond_0
    new-instance p2, Lcom/facebook/FacebookException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot obtain activity context on the fragment "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public resolveError(Landroidx/fragment/app/Fragment;Lcom/facebook/GraphResponse;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method public retrieveLoginStatus(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V

    return-void
.end method

.method public retrieveLoginStatus(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 480
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/login/LoginManager;->retrieveLoginStatus(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V

    return-void
.end method

.method public setAuthType(Ljava/lang/String;)Lcom/facebook/login/LoginManager;
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object p0
.end method

.method public setFamilyLogin(Z)Lcom/facebook/login/LoginManager;
    .locals 0

    .line 438
    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    return-object p0
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object p0
.end method

.method public setLoginTargetApp(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/LoginManager;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->targetApp:Lcom/facebook/login/LoginTargetApp;

    return-object p0
.end method

.method public setMessengerPageId(Ljava/lang/String;)Lcom/facebook/login/LoginManager;
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->messengerPageId:Ljava/lang/String;

    return-object p0
.end method

.method public setResetMessengerState(Z)Lcom/facebook/login/LoginManager;
    .locals 0

    .line 418
    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->resetMessengerState:Z

    return-object p0
.end method

.method public setShouldSkipAccountDeduplication(Z)Lcom/facebook/login/LoginManager;
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    return-object p0
.end method

.method public unregisterCallback(Lcom/facebook/CallbackManager;)V
    .locals 1

    .line 252
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 257
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/internal/CallbackManagerImpl;->unregisterCallback(I)V

    return-void

    .line 253
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
