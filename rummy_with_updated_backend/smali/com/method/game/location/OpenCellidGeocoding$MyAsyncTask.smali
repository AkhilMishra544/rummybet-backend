.class Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "OpenCellidGeocoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/method/game/location/OpenCellidGeocoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mParams:[B

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/method/game/location/OpenCellidGeocoding;


# direct methods
.method public constructor <init>(Lcom/method/game/location/OpenCellidGeocoding;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->this$0:Lcom/method/game/location/OpenCellidGeocoding;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->mUrl:Ljava/lang/String;

    .line 115
    invoke-static {p3}, Lcom/method/game/util/CommonUtil;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->mParams:[B

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->mParams:[B

    invoke-static {p1, v0}, Lcom/method/game/net/NetUtil;->doHttpPost(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->this$0:Lcom/method/game/location/OpenCellidGeocoding;

    invoke-static {v0, p1}, Lcom/method/game/location/OpenCellidGeocoding;->access$000(Lcom/method/game/location/OpenCellidGeocoding;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;->this$0:Lcom/method/game/location/OpenCellidGeocoding;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/method/game/location/OpenCellidGeocoding;->access$102(Lcom/method/game/location/OpenCellidGeocoding;Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;)Lcom/method/game/location/OpenCellidGeocoding$MyAsyncTask;

    return-void
.end method
