.class public Lcom/java/rummybors/util/SoftKeyBoardListener;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    }
.end annotation


# instance fields
.field private onSoftKeyBoardChangeListener:Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

.field private rootView:Landroid/view/View;

.field rootViewVisibleHeight:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/java/rummybors/util/SoftKeyBoardListener$1;

    invoke-direct {v0, p0}, Lcom/java/rummybors/util/SoftKeyBoardListener$1;-><init>(Lcom/java/rummybors/util/SoftKeyBoardListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/java/rummybors/util/SoftKeyBoardListener;)Landroid/view/View;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/java/rummybors/util/SoftKeyBoardListener;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/java/rummybors/util/SoftKeyBoardListener;)Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/java/rummybors/util/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    return-object p0
.end method

.method public static setListener(Landroid/app/Activity;Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/java/rummybors/util/SoftKeyBoardListener;

    invoke-direct {v0, p0}, Lcom/java/rummybors/util/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V

    .line 74
    invoke-direct {v0, p1}, Lcom/java/rummybors/util/SoftKeyBoardListener;->setOnSoftKeyBoardChangeListener(Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    return-void
.end method

.method private setOnSoftKeyBoardChangeListener(Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/java/rummybors/util/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/java/rummybors/util/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    return-void
.end method
