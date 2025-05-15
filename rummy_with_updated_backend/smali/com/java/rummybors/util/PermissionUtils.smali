.class public Lcom/java/rummybors/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;,
        Lcom/java/rummybors/util/PermissionUtils$PermissionRequestSuccessCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRequestMorePermissions(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 0

    .line 105
    :try_start_0
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->checkMorePermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-static {p0, p1, p2}, Lcom/java/rummybors/util/PermissionUtils;->requestMorePermissions(Landroid/content/Context;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static checkAndRequestMorePermissions(Landroid/content/Context;[Ljava/lang/String;ILcom/java/rummybors/util/PermissionUtils$PermissionRequestSuccessCallBack;)V
    .locals 1

    .line 173
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->checkMorePermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-interface {p3}, Lcom/java/rummybors/util/PermissionUtils$PermissionRequestSuccessCallBack;->onHasPermission()V

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/java/rummybors/util/PermissionUtils;->requestMorePermissions(Landroid/content/Context;Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method public static checkAndRequestPermission(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 95
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0, p1, p2}, Lcom/java/rummybors/util/PermissionUtils;->requestPermission(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static checkAndRequestPermission(Landroid/content/Context;Ljava/lang/String;ILcom/java/rummybors/util/PermissionUtils$PermissionRequestSuccessCallBack;)V
    .locals 1

    .line 162
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {p3}, Lcom/java/rummybors/util/PermissionUtils$PermissionRequestSuccessCallBack;->onHasPermission()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/java/rummybors/util/PermissionUtils;->requestPermission(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static checkMorePermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 47
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 48
    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lcom/java/rummybors/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static checkMorePermissions(Landroid/content/Context;[Ljava/lang/String;Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;)V
    .locals 3

    .line 136
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->checkMorePermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-interface {p2}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onHasPermission()V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    invoke-static {p0, v2}, Lcom/java/rummybors/util/PermissionUtils;->judgePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 148
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 150
    invoke-interface {p2, p0}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onUserHasAlreadyTurnedDownAndDontAsk([Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :cond_3
    invoke-interface {p2, p0}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onUserHasAlreadyTurnedDown([Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;)V
    .locals 2

    .line 120
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p2}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onHasPermission()V

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->judgePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    new-array p0, v1, [Ljava/lang/String;

    aput-object p1, p0, v0

    .line 124
    invoke-interface {p2, p0}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onUserHasAlreadyTurnedDown([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    aput-object p1, p0, v0

    .line 126
    invoke-interface {p2, p0}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onUserHasAlreadyTurnedDownAndDontAsk([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPermissionRequestSuccess([I)Z
    .locals 2

    .line 185
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static judgePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 85
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onRequestMorePermissionsResult(Landroid/content/Context;[Ljava/lang/String;Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;)V
    .locals 4

    .line 212
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->checkMorePermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-interface {p2}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onHasPermission()V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 216
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/java/rummybors/util/PermissionUtils;->judgePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 224
    invoke-interface {p2, p1}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onUserHasAlreadyTurnedDownAndDontAsk([Ljava/lang/String;)V

    goto :goto_2

    .line 226
    :cond_3
    invoke-interface {p2, p1}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onUserHasAlreadyTurnedDown([Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static onRequestPermissionResult(Landroid/content/Context;Ljava/lang/String;[ILcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;)V
    .locals 1

    .line 196
    invoke-static {p2}, Lcom/java/rummybors/util/PermissionUtils;->isPermissionRequestSuccess([I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 197
    invoke-interface {p3}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onHasPermission()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {p0, p1}, Lcom/java/rummybors/util/PermissionUtils;->judgePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    new-array p0, v0, [Ljava/lang/String;

    aput-object p1, p0, p2

    .line 200
    invoke-interface {p3, p0}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onUserHasAlreadyTurnedDown([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    aput-object p1, p0, p2

    .line 202
    invoke-interface {p3, p0}, Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;->onUserHasAlreadyTurnedDownAndDontAsk([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static requestMorePermissions(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 66
    invoke-static {p0, p1, p2}, Lcom/java/rummybors/util/PermissionUtils;->requestMorePermissions(Landroid/content/Context;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestMorePermissions(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 0

    .line 73
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestPermission(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 58
    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static toAppSetting(Landroid/content/Context;)V
    .locals 4

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 241
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    const-string v1, "android.intent.action.VIEW"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
