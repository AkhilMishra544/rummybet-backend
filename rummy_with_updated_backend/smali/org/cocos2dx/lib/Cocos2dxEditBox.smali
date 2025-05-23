.class public Lorg/cocos2dx/lib/Cocos2dxEditBox;
.super Ljava/lang/Object;
.source "Cocos2dxEditBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;
    }
.end annotation


# static fields
.field private static final DARK_GREEN:I

.field private static final DARK_GREEN_PRESS:I

.field private static sThis:Lorg/cocos2dx/lib/Cocos2dxEditBox;


# instance fields
.field private mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private mButton:Landroid/widget/Button;

.field private mButtonLayout:Landroid/widget/RelativeLayout;

.field private mButtonLayoutID:I

.field private mButtonParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mButtonTitle:Ljava/lang/String;

.field private mConfirmHold:Z

.field private mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

.field private mEditTextID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#1fa014"

    .line 60
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->DARK_GREEN:I

    const-string v0, "#008e26"

    .line 61
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->DARK_GREEN_PRESS:I

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->sThis:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    .line 65
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    .line 66
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonTitle:Ljava/lang/String;

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mConfirmHold:Z

    .line 68
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 69
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    .line 71
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditTextID:I

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayoutID:I

    .line 277
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->sThis:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 278
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 279
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->addItems(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 57
    sget v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->DARK_GREEN:I

    return v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxEditBox;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->onKeyboardInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/cocos2dx/lib/Cocos2dxEditBox;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->onKeyboardConfirm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/cocos2dx/lib/Cocos2dxEditBox;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mConfirmHold:Z

    return p0
.end method

.method static synthetic access$1300()Lorg/cocos2dx/lib/Cocos2dxEditBox;
    .locals 1

    .line 57
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->sThis:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/cocos2dx/lib/Cocos2dxEditBox;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p6}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->show(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->onKeyboardInputNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->onKeyboardCompleteNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->onKeyboardConfirmNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxEditBox;)Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    return-object p0
.end method

.method static synthetic access$302(Lorg/cocos2dx/lib/Cocos2dxEditBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/cocos2dx/lib/Cocos2dxEditBox;)Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object p0
.end method

.method static synthetic access$600(Lorg/cocos2dx/lib/Cocos2dxEditBox;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->hide()V

    return-void
.end method

.method private addButton(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 329
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    .line 330
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 331
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 332
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getRoundRectShape()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    .line 334
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 336
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 338
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 339
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditTextID:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 340
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditTextID:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 341
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayoutID:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 343
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxEditBox$1;

    invoke-direct {p2, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addEditText(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 318
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBox;Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    const/4 p1, 0x4

    .line 319
    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->setBackgroundColor(I)V

    .line 321
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditTextID:I

    invoke-virtual {p1, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->setId(I)V

    .line 322
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 324
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayoutID:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 325
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addItems(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V
    .locals 3

    .line 295
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    .line 297
    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->addEditText(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/RelativeLayout;)V

    .line 298
    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->addButton(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/RelativeLayout;)V

    .line 300
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 302
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    invoke-virtual {p2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private closeKeyboard()V
    .locals 3

    .line 407
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 408
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 410
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->onKeyboardComplete(Ljava/lang/String;)V

    return-void
.end method

.method public static complete()V
    .locals 1

    .line 288
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->sThis:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->hide()V

    return-void
.end method

.method private getRoundRectShape()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x7

    int-to-float v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    const/4 v5, 0x2

    aput v2, v0, v5

    const/4 v5, 0x3

    aput v2, v0, v5

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v5, 0x5

    aput v2, v0, v5

    const/4 v5, 0x6

    aput v2, v0, v5

    aput v2, v0, v1

    .line 359
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 360
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 361
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 362
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 363
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v5, Lorg/cocos2dx/lib/Cocos2dxEditBox;->DARK_GREEN:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 365
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 366
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v5, Lorg/cocos2dx/lib/Cocos2dxEditBox;->DARK_GREEN_PRESS:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v3

    .line 369
    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v3, [I

    .line 370
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private hide()V
    .locals 2

    .line 376
    invoke-static {}, Lorg/cocos2dx/lib/Utils;->hideVirtualButton()V

    .line 377
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->hide()V

    .line 378
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->closeKeyboard()V

    .line 381
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 382
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setStopHandleTouchAndKeyEvents(Z)V

    return-void
.end method

.method private static hideNative()V
    .locals 2

    .line 434
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->sThis:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBox$3;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$3;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private onKeyboardComplete(Ljava/lang/String;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 458
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setStopHandleTouchAndKeyEvents(Z)V

    .line 459
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBox$5;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBox;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native onKeyboardCompleteNative(Ljava/lang/String;)V
.end method

.method private onKeyboardConfirm(Ljava/lang/String;)V
    .locals 2

    .line 468
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBox$6;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBox;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native onKeyboardConfirmNative(Ljava/lang/String;)V
.end method

.method private onKeyboardInput(Ljava/lang/String;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBox$4;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBox;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native onKeyboardInputNative(Ljava/lang/String;)V
.end method

.method private openKeyboard()V
    .locals 3

    .line 414
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 415
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private show(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 386
    iput-boolean p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mConfirmHold:Z

    .line 387
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->show(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->getPaddingBottom()I

    move-result p1

    .line 389
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {p2}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->getPaddingTop()I

    move-result p2

    .line 390
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {p3, p2, p2, p2, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->setPadding(IIII)V

    .line 391
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonTitle:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 394
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 395
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mEditText:Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox$Cocos2dxEditText;->getPaddingBottom()I

    move-result p1

    const/4 p4, 0x2

    div-int/2addr p1, p4

    .line 398
    iget-object p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButton:Landroid/widget/Button;

    invoke-virtual {p5, p2, p1, p2, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 399
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2, p3, p1, p4, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 400
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    :goto_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setStopHandleTouchAndKeyEvents(Z)V

    .line 403
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->openKeyboard()V

    return-void
.end method

.method private static showNative(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 423
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->sThis:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v8, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;-><init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
