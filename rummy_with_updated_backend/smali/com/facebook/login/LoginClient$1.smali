.class final Lcom/facebook/login/LoginClient$1;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/login/LoginClient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient;
    .locals 1

    .line 873
    new-instance v0, Lcom/facebook/login/LoginClient;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginClient;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 870
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/login/LoginClient;
    .locals 0

    .line 878
    new-array p1, p1, [Lcom/facebook/login/LoginClient;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 870
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient$1;->newArray(I)[Lcom/facebook/login/LoginClient;

    move-result-object p1

    return-object p1
.end method
