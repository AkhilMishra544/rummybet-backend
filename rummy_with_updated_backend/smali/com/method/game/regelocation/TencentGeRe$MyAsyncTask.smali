.class Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "TencentGeRe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/method/game/regelocation/TencentGeRe;
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

.field final synthetic this$0:Lcom/method/game/regelocation/TencentGeRe;


# direct methods
.method public constructor <init>(Lcom/method/game/regelocation/TencentGeRe;Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;->this$0:Lcom/method/game/regelocation/TencentGeRe;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/method/game/net/NetUtil;->doHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;->this$0:Lcom/method/game/regelocation/TencentGeRe;

    invoke-static {v0, p1}, Lcom/method/game/regelocation/TencentGeRe;->access$000(Lcom/method/game/regelocation/TencentGeRe;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;->this$0:Lcom/method/game/regelocation/TencentGeRe;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/method/game/regelocation/TencentGeRe;->access$102(Lcom/method/game/regelocation/TencentGeRe;Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;)Lcom/method/game/regelocation/TencentGeRe$MyAsyncTask;

    return-void
.end method
