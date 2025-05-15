.class public abstract Lcom/java/rummybors/util/Utils$Task;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/java/rummybors/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x2

.field private static final COMPLETING:I = 0x1

.field private static final EXCEPTIONAL:I = 0x3

.field private static final NEW:I


# instance fields
.field private mCallback:Lcom/java/rummybors/util/Utils$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/java/rummybors/util/Utils$Callback<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile state:I


# direct methods
.method public constructor <init>(Lcom/java/rummybors/util/Utils$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/java/rummybors/util/Utils$Callback<",
            "TResult;>;)V"
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 523
    iput v0, p0, Lcom/java/rummybors/util/Utils$Task;->state:I

    .line 530
    iput-object p1, p0, Lcom/java/rummybors/util/Utils$Task;->mCallback:Lcom/java/rummybors/util/Utils$Callback;

    return-void
.end method

.method static synthetic access$100(Lcom/java/rummybors/util/Utils$Task;)Lcom/java/rummybors/util/Utils$Callback;
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/java/rummybors/util/Utils$Task;->mCallback:Lcom/java/rummybors/util/Utils$Callback;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x2

    .line 553
    iput v0, p0, Lcom/java/rummybors/util/Utils$Task;->state:I

    return-void
.end method

.method abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public isCanceled()Z
    .locals 2

    .line 561
    iget v0, p0, Lcom/java/rummybors/util/Utils$Task;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 557
    iget v0, p0, Lcom/java/rummybors/util/Utils$Task;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 3

    .line 536
    :try_start_0
    invoke-virtual {p0}, Lcom/java/rummybors/util/Utils$Task;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 538
    iget v1, p0, Lcom/java/rummybors/util/Utils$Task;->state:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 539
    iput v1, p0, Lcom/java/rummybors/util/Utils$Task;->state:I

    .line 540
    sget-object v1, Lcom/java/rummybors/util/Utils;->UTIL_HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/java/rummybors/util/Utils$Task$1;

    invoke-direct {v2, p0, v0}, Lcom/java/rummybors/util/Utils$Task$1;-><init>(Lcom/java/rummybors/util/Utils$Task;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 547
    iget v0, p0, Lcom/java/rummybors/util/Utils$Task;->state:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 548
    iput v0, p0, Lcom/java/rummybors/util/Utils$Task;->state:I

    :goto_0
    return-void
.end method
