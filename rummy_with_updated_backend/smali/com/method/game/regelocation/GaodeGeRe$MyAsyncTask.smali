.class Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "GaodeGeRe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/method/game/regelocation/GaodeGeRe;
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
.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/method/game/regelocation/GaodeGeRe;


# direct methods
.method public constructor <init>(Lcom/method/game/regelocation/GaodeGeRe;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;->this$0:Lcom/method/game/regelocation/GaodeGeRe;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/method/game/net/NetUtil;->doHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;->this$0:Lcom/method/game/regelocation/GaodeGeRe;

    invoke-static {v0, p1}, Lcom/method/game/regelocation/GaodeGeRe;->access$000(Lcom/method/game/regelocation/GaodeGeRe;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;->this$0:Lcom/method/game/regelocation/GaodeGeRe;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/method/game/regelocation/GaodeGeRe;->access$102(Lcom/method/game/regelocation/GaodeGeRe;Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;)Lcom/method/game/regelocation/GaodeGeRe$MyAsyncTask;

    return-void
.end method
