.class public Lcom/facebook/login/widget/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method protected constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLoginManager()Lcom/facebook/login/LoginManager;
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 916
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 917
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    .line 918
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 919
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getAuthType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->setAuthType(Ljava/lang/String;)Lcom/facebook/login/LoginManager;

    .line 920
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getMessengerPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->setMessengerPageId(Ljava/lang/String;)Lcom/facebook/login/LoginManager;

    .line 921
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getResetMessengerState()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->setResetMessengerState(Z)Lcom/facebook/login/LoginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 923
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 841
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0, p1}, Lcom/facebook/login/widget/LoginButton;->access$300(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V

    .line 843
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    .line 844
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->performLogout(Landroid/content/Context;)V

    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->performLogin()V

    .line 851
    :goto_0
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 853
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "logging_in"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 854
    :goto_1
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "access_token_expired"

    .line 855
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 857
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-static {p1}, Lcom/facebook/login/widget/LoginButton;->access$400(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 858
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected performLogin()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 861
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 862
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getAndroidxActivityResultRegistryOwner()Landroidx/activity/result/ActivityResultRegistryOwner;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 865
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 866
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/CallbackManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 867
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/CallbackManager;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/facebook/internal/CallbackManagerImpl;

    invoke-direct {v1}, Lcom/facebook/internal/CallbackManagerImpl;-><init>()V

    .line 869
    :goto_0
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 870
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getAndroidxActivityResultRegistryOwner()Landroidx/activity/result/ActivityResultRegistryOwner;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v3}, Lcom/facebook/login/widget/LoginButton;->access$600(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v3

    .line 869
    invoke-virtual {v0, v2, v1, v3}, Lcom/facebook/login/LoginManager;->logIn(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V

    goto :goto_1

    .line 871
    :cond_2
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 872
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$600(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logIn(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V

    goto :goto_1

    .line 873
    :cond_3
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 874
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$600(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_1

    .line 876
    :cond_4
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$800(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$600(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 878
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected performLogout(Landroid/content/Context;)V
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 881
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 882
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$900(Lcom/facebook/login/widget/LoginButton;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 884
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 885
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/login/R$string;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 888
    invoke-virtual {v3}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 889
    iget-object v5, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 891
    invoke-virtual {v5}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/login/R$string;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 892
    invoke-virtual {v3}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    .line 890
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 894
    :cond_1
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 895
    invoke-virtual {v3}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/facebook/login/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 897
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 899
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 900
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;-><init>(Lcom/facebook/login/widget/LoginButton$LoginClickListener;Lcom/facebook/login/LoginManager;)V

    .line 901
    invoke-virtual {p1, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 908
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 909
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 911
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 913
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
