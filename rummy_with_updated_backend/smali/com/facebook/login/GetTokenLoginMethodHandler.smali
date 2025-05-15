.class Lcom/facebook/login/GetTokenLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "GetTokenLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/GetTokenLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private getTokenClient:Lcom/facebook/login/GetTokenClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$3;

    invoke-direct {v0}, Lcom/facebook/login/GetTokenLoginMethodHandler$3;-><init>()V

    sput-object v0, Lcom/facebook/login/GetTokenLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/facebook/login/GetTokenClient;->cancel()V

    .line 55
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 56
    iput-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    :cond_0
    return-void
.end method

.method complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.facebook.platform.extra.USER_ID"

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/GetTokenLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    goto :goto_1

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStart()V

    const-string v0, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/facebook/login/GetTokenLoginMethodHandler$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$2;-><init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V

    :goto_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "get_token"

    return-object v0
.end method

.method getTokenCompleted(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 84
    :cond_0
    iput-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    .line 86
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStop()V

    if-eqz p2, :cond_8

    const-string v0, "com.facebook.platform.extra.PERMISSIONS"

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "com.facebook.platform.extra.ID_TOKEN"

    .line 92
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "openid"

    .line 96
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/GetTokenLoginMethodHandler;->complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    return-void

    .line 109
    :cond_4
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 110
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 112
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_6
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ","

    .line 117
    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_permissions"

    .line 116
    invoke-virtual {p0, v1, v0}, Lcom/facebook/login/GetTokenLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_7
    invoke-virtual {p1, p2}, Lcom/facebook/login/LoginClient$Request;->setPermissions(Ljava/util/Set;)V

    .line 123
    :cond_8
    iget-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    return-void
.end method

.method onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 2

    .line 130
    :try_start_0
    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    .line 132
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {p2, v0, v1}, Lcom/facebook/login/GetTokenLoginMethodHandler;->createAccessTokenFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/facebook/login/GetTokenLoginMethodHandler;->createAuthenticationTokenFromNativeLogin(Landroid/os/Bundle;Ljava/lang/String;)Lcom/facebook/AuthenticationToken;

    move-result-object p2

    .line 135
    invoke-static {p1, v0, p2}, Lcom/facebook/login/LoginClient$Result;->createCompositeTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    iget-object p2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 139
    invoke-virtual {p2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p2, v0, p1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    .line 141
    :goto_0
    iget-object p2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p2, p1}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)I
    .locals 2

    .line 61
    new-instance v0, Lcom/facebook/login/GetTokenClient;

    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/login/GetTokenClient;-><init>(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    iput-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    .line 62
    invoke-virtual {v0}, Lcom/facebook/login/GetTokenClient;->start()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStart()V

    .line 68
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$1;-><init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 76
    iget-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {p1, v0}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
