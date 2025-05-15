.class final Lcom/facebook/internal/DialogPresenter$2;
.super Ljava/lang/Object;
.source "DialogPresenter.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/DialogPresenter;->startActivityForResultWithAndroidX(Landroidx/activity/result/ActivityResultRegistry;Lcom/facebook/CallbackManager;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Landroid/content/Intent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callbackManager:Lcom/facebook/CallbackManager;

.field final synthetic val$launcherHolder:Lcom/facebook/internal/DialogPresenter$1LauncherHolder;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/facebook/CallbackManager;ILcom/facebook/internal/DialogPresenter$1LauncherHolder;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/facebook/internal/DialogPresenter$2;->val$callbackManager:Lcom/facebook/CallbackManager;

    iput p2, p0, Lcom/facebook/internal/DialogPresenter$2;->val$requestCode:I

    iput-object p3, p0, Lcom/facebook/internal/DialogPresenter$2;->val$launcherHolder:Lcom/facebook/internal/DialogPresenter$1LauncherHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/facebook/internal/DialogPresenter$2;->val$callbackManager:Lcom/facebook/CallbackManager;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl;

    invoke-direct {v0}, Lcom/facebook/internal/CallbackManagerImpl;-><init>()V

    .line 124
    :cond_0
    iget v1, p0, Lcom/facebook/internal/DialogPresenter$2;->val$requestCode:I

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 125
    iget-object p1, p0, Lcom/facebook/internal/DialogPresenter$2;->val$launcherHolder:Lcom/facebook/internal/DialogPresenter$1LauncherHolder;

    monitor-enter p1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/DialogPresenter$2;->val$launcherHolder:Lcom/facebook/internal/DialogPresenter$1LauncherHolder;

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter$1LauncherHolder;->access$000(Lcom/facebook/internal/DialogPresenter$1LauncherHolder;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/facebook/internal/DialogPresenter$2;->val$launcherHolder:Lcom/facebook/internal/DialogPresenter$1LauncherHolder;

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter$1LauncherHolder;->access$000(Lcom/facebook/internal/DialogPresenter$1LauncherHolder;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 128
    iget-object v0, p0, Lcom/facebook/internal/DialogPresenter$2;->val$launcherHolder:Lcom/facebook/internal/DialogPresenter$1LauncherHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/internal/DialogPresenter$1LauncherHolder;->access$002(Lcom/facebook/internal/DialogPresenter$1LauncherHolder;Landroidx/activity/result/ActivityResultLauncher;)Landroidx/activity/result/ActivityResultLauncher;

    .line 130
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/DialogPresenter$2;->onActivityResult(Landroid/util/Pair;)V

    return-void
.end method
