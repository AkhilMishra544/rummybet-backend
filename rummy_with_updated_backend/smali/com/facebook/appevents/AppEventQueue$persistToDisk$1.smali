.class final Lcom/facebook/appevents/AppEventQueue$persistToDisk$1;
.super Ljava/lang/Object;
.source "AppEventQueue.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->persistToDisk()V
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


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/AppEventQueue$persistToDisk$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/AppEventQueue$persistToDisk$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue$persistToDisk$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue$persistToDisk$1;->INSTANCE:Lcom/facebook/appevents/AppEventQueue$persistToDisk$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->INSTANCE:Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->access$getAppEventCollection$p(Lcom/facebook/appevents/AppEventQueue;)Lcom/facebook/appevents/AppEventCollection;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventStore;->persistEvents(Lcom/facebook/appevents/AppEventCollection;)V

    .line 67
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->INSTANCE:Lcom/facebook/appevents/AppEventQueue;

    new-instance v1, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventQueue;->access$setAppEventCollection$p(Lcom/facebook/appevents/AppEventQueue;Lcom/facebook/appevents/AppEventCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 68
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
