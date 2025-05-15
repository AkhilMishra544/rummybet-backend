.class public Lcom/java/rummybors/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static isShow:Z = true


# instance fields
.field private layoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 1

    .line 94
    sget-boolean v0, Lcom/java/rummybors/util/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 81
    sget-boolean v0, Lcom/java/rummybors/util/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showLong(Landroid/content/Context;I)V
    .locals 1

    .line 68
    sget-boolean v0, Lcom/java/rummybors/util/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/java/rummybors/util/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 57
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showShort(Landroid/content/Context;I)V
    .locals 1

    .line 44
    sget-boolean v0, Lcom/java/rummybors/util/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/java/rummybors/util/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
