.class public Lcom/method/game/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "tag_sl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/method/game/util/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "tag_sl"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/method/game/util/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "tag_sl"

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/method/game/util/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "tag_sl"

    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/method/game/util/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "tag_sl"

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
