.class public interface abstract Lcom/java/rummybors/util/PermissionUtils$PermissionCheckCallBack;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/java/rummybors/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionCheckCallBack"
.end annotation


# virtual methods
.method public abstract onHasPermission()V
.end method

.method public varargs abstract onUserHasAlreadyTurnedDown([Ljava/lang/String;)V
.end method

.method public varargs abstract onUserHasAlreadyTurnedDownAndDontAsk([Ljava/lang/String;)V
.end method
