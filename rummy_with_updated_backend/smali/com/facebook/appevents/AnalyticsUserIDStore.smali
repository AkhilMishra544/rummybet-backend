.class public final Lcom/facebook/appevents/AnalyticsUserIDStore;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0007J\u0012\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/appevents/AnalyticsUserIDStore;",
        "",
        "()V",
        "ANALYTICS_USER_ID_KEY",
        "",
        "TAG",
        "initialized",
        "",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "userID",
        "getUserID",
        "initAndWait",
        "",
        "initStore",
        "setUserID",
        "id",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final ANALYTICS_USER_ID_KEY:Ljava/lang/String; = "com.facebook.appevents.AnalyticsUserIDStore.userID"

.field public static final INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore;

.field private static final TAG:Ljava/lang/String;

.field private static volatile initialized:Z

.field private static final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/facebook/appevents/AnalyticsUserIDStore;

    invoke-direct {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore;

    const-string v0, "AnalyticsUserIDStore"

    const-string v1, "AnalyticsUserIDStore::class.java.simpleName"

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLock$p(Lcom/facebook/appevents/AnalyticsUserIDStore;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    .line 29
    sget-object p0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method public static final synthetic access$getUserID$p(Lcom/facebook/appevents/AnalyticsUserIDStore;)Ljava/lang/String;
    .locals 0

    .line 29
    sget-object p0, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$initAndWait(Lcom/facebook/appevents/AnalyticsUserIDStore;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    return-void
.end method

.method public static final synthetic access$setUserID$p(Lcom/facebook/appevents/AnalyticsUserIDStore;Ljava/lang/String;)V
    .locals 0

    .line 29
    sput-object p1, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    return-void
.end method

.method public static final getUserID()Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 68
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore;

    invoke-direct {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    .line 72
    :cond_0
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 74
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private final initAndWait()V
    .locals 4

    .line 81
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 86
    :try_start_0
    sget-boolean v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 90
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.facebook.appevents.AnalyticsUserIDStore.userID"

    const/4 v3, 0x0

    .line 91
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    const/4 v1, 0x1

    .line 92
    sput-boolean v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static final initStore()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 38
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    sget-object v0, Lcom/facebook/appevents/InternalAppEventsLogger;->Companion:Lcom/facebook/appevents/InternalAppEventsLogger$Companion;

    invoke-virtual {v0}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore$initStore$1;->INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore$initStore$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final setUserID(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 46
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 47
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore;

    invoke-direct {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    .line 51
    :cond_0
    sget-object v0, Lcom/facebook/appevents/InternalAppEventsLogger;->Companion:Lcom/facebook/appevents/InternalAppEventsLogger$Companion;

    invoke-virtual {v0}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AnalyticsUserIDStore$setUserID$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AnalyticsUserIDStore$setUserID$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
