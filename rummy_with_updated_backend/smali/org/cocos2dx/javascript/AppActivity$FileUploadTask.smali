.class Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;
.super Landroid/os/AsyncTask;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/javascript/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field boundary:Ljava/lang/String;

.field connection:Ljava/net/HttpURLConnection;

.field private dialog:Landroid/app/ProgressDialog;

.field inputStream:Ljava/io/DataInputStream;

.field lineEnd:Ljava/lang/String;

.field outputStream:Ljava/io/DataOutputStream;

.field pathToOurFile:Ljava/lang/String;

.field final synthetic this$0:Lorg/cocos2dx/javascript/AppActivity;

.field totalSize:J

.field twoHyphene:Ljava/lang/String;

.field uploadFile:Ljava/io/File;

.field urlServer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 2

    .line 2404
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2405
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->dialog:Landroid/app/ProgressDialog;

    .line 2406
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    .line 2407
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    .line 2408
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->inputStream:Ljava/io/DataInputStream;

    .line 2409
    sget-object p1, Lorg/cocos2dx/javascript/AppActivity;->cropImagePath:Ljava/lang/String;

    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->pathToOurFile:Ljava/lang/String;

    .line 2410
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->urlServer:Ljava/lang/String;

    const-string p1, "\r\n"

    .line 2411
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->lineEnd:Ljava/lang/String;

    const-string p1, "--"

    .line 2412
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->twoHyphene:Ljava/lang/String;

    const-string p1, "*****"

    .line 2413
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->boundary:Ljava/lang/String;

    .line 2414
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->pathToOurFile:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->uploadFile:Ljava/io/File;

    .line 2415
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->totalSize:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2404
    invoke-virtual {p0, p1}, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 12

    .line 2434
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->pathToOurFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2435
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->urlServer:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2436
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    const/high16 v1, 0x40000

    .line 2437
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 2438
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2439
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2440
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2441
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2442
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    const-string v4, "Charset"

    const-string v5, "UTF-8"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/form-data;boundary="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    .line 2446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->twoHyphene:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->lineEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2447
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Disposition:form-data;name=\"uploadedfile\";filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->pathToOurFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->lineEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2448
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    iget-object v4, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->lineEnd:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 2450
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2451
    new-array v4, v0, [B

    .line 2452
    invoke-virtual {p1, v4, v3, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const-wide/16 v6, 0x0

    :goto_0
    if-lez v5, :cond_0

    .line 2454
    iget-object v5, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v4, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/16 v8, 0x64

    mul-long v8, v8, v6

    .line 2456
    iget-wide v10, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->totalSize:J

    div-long/2addr v8, v10

    long-to-int v0, v8

    new-array v5, v2, [Ljava/lang/Integer;

    .line 2457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {p0, v5}, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 2458
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 2459
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2460
    invoke-virtual {p1, v4, v3, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    goto :goto_0

    .line 2462
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->lineEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2463
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->twoHyphene:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->twoHyphene:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->lineEnd:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v1, 0x64

    .line 2464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 2465
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 2466
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 2467
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 2468
    iget-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 2469
    iget-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2404
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 2482
    :try_start_0
    iget-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2483
    iget-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2485
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2486
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-char v1, v1

    .line 2487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2489
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 2419
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "onuploading......."

    .line 2420
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2421
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2422
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2423
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2424
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 2477
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 2404
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/javascript/AppActivity$FileUploadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
