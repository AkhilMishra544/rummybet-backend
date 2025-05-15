.class Lcom/facebook/internal/DialogPresenter$1LauncherHolder;
.super Ljava/lang/Object;
.source "DialogPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/DialogPresenter;->startActivityForResultWithAndroidX(Landroidx/activity/result/ActivityResultRegistry;Lcom/facebook/CallbackManager;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherHolder"
.end annotation


# instance fields
.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/facebook/internal/DialogPresenter$1LauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/DialogPresenter$1LauncherHolder;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/facebook/internal/DialogPresenter$1LauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static synthetic access$002(Lcom/facebook/internal/DialogPresenter$1LauncherHolder;Landroidx/activity/result/ActivityResultLauncher;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/facebook/internal/DialogPresenter$1LauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p1
.end method
