.class final Lcom/facebook/appevents/aam/MetadataViewObserver$process$runnable$1;
.super Ljava/lang/Object;
.source "MetadataViewObserver.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/aam/MetadataViewObserver;->process(Landroid/view/View;)V
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
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/facebook/appevents/aam/MetadataViewObserver;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/aam/MetadataViewObserver;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$process$runnable$1;->this$0:Lcom/facebook/appevents/aam/MetadataViewObserver;

    iput-object p2, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$process$runnable$1;->$view:Landroid/view/View;

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

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$process$runnable$1;->$view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_1

    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$process$runnable$1;->this$0:Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {v1, v0}, Lcom/facebook/appevents/aam/MetadataViewObserver;->access$processEditText(Lcom/facebook/appevents/aam/MetadataViewObserver;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 82
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
