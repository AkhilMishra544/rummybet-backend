.class public final Lcom/java/rummybors/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;,
        Lcom/java/rummybors/util/Utils$OnActivityDestroyedListener;,
        Lcom/java/rummybors/util/Utils$OnAppStatusChangedListener;,
        Lcom/java/rummybors/util/Utils$Callback;,
        Lcom/java/rummybors/util/Utils$Task;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LIFECYCLE:Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;

.field private static final PERMISSION_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.blankj.utilcode.util.PermissionUtils$PermissionActivity"

.field static final UTIL_HANDLER:Landroid/os/Handler;

.field private static final UTIL_POOL:Ljava/util/concurrent/ExecutorService;

.field private static sApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;

    invoke-direct {v0}, Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;-><init>()V

    sput-object v0, Lcom/java/rummybors/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;

    const/4 v0, 0x3

    .line 63
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/java/rummybors/util/Utils;->UTIL_POOL:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/java/rummybors/util/Utils;->UTIL_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()V
    .locals 0

    .line 57
    invoke-static {}, Lcom/java/rummybors/util/Utils;->setAnimatorsEnabled()V

    return-void
.end method

.method static doAsync(Lcom/java/rummybors/util/Utils$Task;)Lcom/java/rummybors/util/Utils$Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/java/rummybors/util/Utils$Task<",
            "TT;>;)",
            "Lcom/java/rummybors/util/Utils$Task<",
            "TT;>;"
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/java/rummybors/util/Utils;->UTIL_POOL:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method static getActivityLifecycle()Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;
    .locals 1

    .line 125
    sget-object v0, Lcom/java/rummybors/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;

    return-object v0
.end method

.method static getActivityList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/java/rummybors/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;

    iget-object v0, v0, Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getApp()Landroid/app/Application;
    .locals 1

    .line 118
    sget-object v0, Lcom/java/rummybors/util/Utils;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    .line 119
    :cond_0
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/java/rummybors/util/Utils;->init(Landroid/app/Application;)V

    return-object v0
.end method

.method private static getApplicationByReflect()Landroid/app/Application;
    .locals 6

    const-string v0, "u should init first"

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 238
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 239
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    .line 240
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    check-cast v1, Landroid/app/Application;

    return-object v1

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 254
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getCurrentProcessName()Ljava/lang/String;
    .locals 2

    .line 174
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getCurrentProcessNameByFile()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 176
    :cond_0
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getCurrentProcessNameByAms()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 178
    :cond_1
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getCurrentProcessNameByReflect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentProcessNameByAms()Ljava/lang/String;
    .locals 5

    .line 200
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 206
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_2

    .line 207
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 208
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private static getCurrentProcessNameByFile()Ljava/lang/String;
    .locals 3

    .line 188
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 190
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method private static getCurrentProcessNameByReflect()Ljava/lang/String;
    .locals 5

    .line 218
    :try_start_0
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mLoadedApk"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mActivityThread"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getProcessName"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 228
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method static getTopActivityOrApp()Landroid/content/Context;
    .locals 1

    .line 133
    invoke-static {}, Lcom/java/rummybors/util/Utils;->isAppForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Lcom/java/rummybors/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    :cond_0
    return-object v0

    .line 137
    :cond_1
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/java/rummybors/util/Utils;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 97
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/java/rummybors/util/Utils;->sApplication:Landroid/app/Application;

    goto :goto_0

    .line 99
    :cond_0
    sput-object p0, Lcom/java/rummybors/util/Utils;->sApplication:Landroid/app/Application;

    .line 101
    :goto_0
    sget-object p0, Lcom/java/rummybors/util/Utils;->sApplication:Landroid/app/Application;

    sget-object v0, Lcom/java/rummybors/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/java/rummybors/util/Utils;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 104
    sget-object v0, Lcom/java/rummybors/util/Utils;->sApplication:Landroid/app/Application;

    sget-object v1, Lcom/java/rummybors/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 105
    iget-object v0, v1, Lcom/java/rummybors/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 106
    sput-object p0, Lcom/java/rummybors/util/Utils;->sApplication:Landroid/app/Application;

    .line 107
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    .line 82
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/java/rummybors/util/Utils;->init(Landroid/app/Application;)V

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/java/rummybors/util/Utils;->init(Landroid/app/Application;)V

    return-void
.end method

.method static isAppForeground()Z
    .locals 5

    .line 142
    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 147
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 148
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {}, Lcom/java/rummybors/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 162
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 163
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 165
    :cond_0
    sget-object v0, Lcom/java/rummybors/util/Utils;->UTIL_HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 170
    sget-object v0, Lcom/java/rummybors/util/Utils;->UTIL_HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static setAnimatorsEnabled()V
    .locals 4

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    :try_start_0
    const-class v0, Landroid/animation/ValueAnimator;

    const-string v1, "sDurationScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 270
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "Utils"

    const-string v1, "setAnimatorsEnabled: Animators are enabled now!"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
