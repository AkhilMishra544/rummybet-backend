.class final Lcom/facebook/internal/FetchedAppSettingsManager$pollCallbacks$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$pollCallbacks$1;->$callback:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettingsManager$pollCallbacks$1;->$callback:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    invoke-interface {v0}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;->onError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
