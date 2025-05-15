.class public Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;
.super Ljava/lang/Object;
.source "CanvasRenderingContext2DImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;,
        Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CanvasContext2D"

.field private static final TEXT_ALIGN_CENTER:I = 0x1

.field private static final TEXT_ALIGN_LEFT:I = 0x0

.field private static final TEXT_ALIGN_RIGHT:I = 0x2

.field private static final TEXT_BASELINE_BOTTOM:I = 0x2

.field private static final TEXT_BASELINE_MIDDLE:I = 0x1

.field private static final TEXT_BASELINE_TOP:I = 0x0

.field private static _sApproximatingOblique:F = -0.25f

.field private static sContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sTypefaceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mFillStyleA:I

.field private mFillStyleB:I

.field private mFillStyleG:I

.field private mFillStyleR:I

.field private mFontName:Ljava/lang/String;

.field private mFontSize:F

.field private mIsBoldFont:Z

.field private mIsItalicFont:Z

.field private mIsObliqueFont:Z

.field private mIsSmallCapsFontVariant:Z

.field private mLineCap:Ljava/lang/String;

.field private mLineJoin:Ljava/lang/String;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLinePath:Landroid/graphics/Path;

.field private mLineWidth:F

.field private mStrokeStyleA:I

.field private mStrokeStyleB:I

.field private mStrokeStyleG:I

.field private mStrokeStyleR:I

.field private mTextAlign:I

.field private mTextBaseline:I

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sTypefaceCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextAlign:I

    const/4 v1, 0x2

    .line 62
    iput v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextBaseline:I

    .line 63
    iput v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleR:I

    .line 64
    iput v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleG:I

    .line 65
    iput v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleB:I

    const/16 v1, 0xff

    .line 66
    iput v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleA:I

    .line 68
    iput v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleR:I

    .line 69
    iput v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleG:I

    .line 70
    iput v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleB:I

    .line 71
    iput v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleA:I

    const-string v1, "Arial"

    .line 73
    iput-object v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFontName:Ljava/lang/String;

    const/high16 v1, 0x42200000    # 40.0f

    .line 74
    iput v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFontSize:F

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineWidth:F

    .line 77
    iput-boolean v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsBoldFont:Z

    .line 78
    iput-boolean v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsItalicFont:Z

    .line 79
    iput-boolean v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsObliqueFont:Z

    .line 80
    iput-boolean v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsSmallCapsFontVariant:Z

    const-string v0, "butt"

    .line 81
    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineCap:Ljava/lang/String;

    const-string v0, "miter"

    .line 82
    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineJoin:Ljava/lang/String;

    return-void
.end method

.method private _fillImageData([BFFFF)V
    .locals 9

    const-string v0, "CanvasContext2D"

    const-string v1, "_fillImageData: "

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float v0, p2, p3

    float-to-int v0, v0

    .line 454
    new-array v2, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v3, 0x0

    .line 458
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    .line 459
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x2

    .line 460
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v3, v3, 0x3

    .line 461
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    and-int/lit16 v4, v5, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v6, 0xff

    or-int/2addr v3, v4

    .line 462
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    float-to-int v7, p2

    float-to-int v5, p4

    float-to-int v6, p5

    float-to-int v8, p3

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private beginPath()V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private clearRect(FFFF)V
    .locals 9

    mul-float v0, p3, p4

    float-to-int v0, v0

    .line 342
    new-array v2, v0, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 344
    aput v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    float-to-int v7, p3

    float-to-int v5, p1

    float-to-int v6, p2

    float-to-int v8, p4

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private static clearTypefaceCache()V
    .locals 1

    .line 158
    sget-object v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sTypefaceCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private closePath()V
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private convertDrawPoint(Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;Ljava/lang/String;)Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;
    .locals 4

    .line 470
    new-instance v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;-><init>(Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;)V

    .line 471
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->measureTextReturnSize(Ljava/lang/String;)Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;

    move-result-object p1

    .line 474
    iget p2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextAlign:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 476
    iget p2, v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->x:F

    iget v3, p1, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;->width:F

    div-float/2addr v3, v1

    sub-float/2addr p2, v3

    iput p2, v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->x:F

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 480
    iget p2, v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->x:F

    iget v3, p1, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;->width:F

    sub-float/2addr p2, v3

    iput p2, v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->x:F

    .line 483
    :cond_1
    :goto_0
    iget p2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextBaseline:I

    if-nez p2, :cond_2

    .line 485
    iget p2, v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->y:F

    iget p1, p1, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;->height:F

    add-float/2addr p2, p1

    iput p2, v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->y:F

    goto :goto_1

    :cond_2
    if-ne p2, v2, :cond_3

    .line 489
    iget p2, v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->y:F

    iget p1, p1, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;->height:F

    div-float/2addr p1, v1

    add-float/2addr p2, p1

    iput p2, v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->y:F

    :cond_3
    :goto_1
    return-object v0
.end method

.method private createTextPaintIfNeeded()V
    .locals 7

    .line 350
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 351
    iget-object v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFontName:Ljava/lang/String;

    iget v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFontSize:F

    float-to-int v2, v0

    iget-boolean v3, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsBoldFont:Z

    iget-boolean v4, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsItalicFont:Z

    iget-boolean v5, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsObliqueFont:Z

    iget-boolean v6, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsSmallCapsFontVariant:Z

    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->newPaint(Ljava/lang/String;IZZZZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    :cond_0
    return-void
.end method

.method static destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    sput-object v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private fill()V
    .locals 5

    .line 290
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    .line 298
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleA:I

    iget v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleR:I

    iget v3, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleG:I

    iget v4, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleB:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 299
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 302
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 303
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->setStrokeCap(Landroid/graphics/Paint;)V

    .line 304
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->setStrokeJoin(Landroid/graphics/Paint;)V

    .line 305
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 307
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private fillRect(FFFF)V
    .locals 10

    .line 357
    iget v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleR:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleG:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleB:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    mul-float v1, p3, p4

    float-to-int v1, v1

    .line 359
    new-array v3, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 361
    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_0
    iget-object v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    float-to-int v8, p3

    float-to-int v6, p1

    float-to-int v7, p2

    float-to-int v9, p4

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private fillText(Ljava/lang/String;FFF)V
    .locals 5

    .line 376
    invoke-direct {p0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->createTextPaintIfNeeded()V

    .line 377
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleA:I

    iget v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleR:I

    iget v3, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleG:I

    iget v4, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleB:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 378
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1, p4}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->scaleX(Landroid/text/TextPaint;Ljava/lang/String;F)V

    .line 380
    new-instance p4, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;

    invoke-direct {p4, p0, p2, p3}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;-><init>(Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;FF)V

    invoke-direct {p0, p4, p1}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->convertDrawPoint(Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;Ljava/lang/String;)Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;

    move-result-object p2

    .line 381
    iget-object p3, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    iget p4, p2, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->x:F

    iget p2, p2, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->y:F

    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p1, p4, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getDataRef()[B
    .locals 3

    .line 497
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 499
    new-array v0, v0, [B

    .line 500
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 501
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 502
    iget-object v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :cond_0
    const-string v0, "CanvasContext2D"

    const-string v1, "getDataRef return null"

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private lineTo(FF)V
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private static loadTypeface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 134
    sget-object v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sTypefaceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/"

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    sget-object v1, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "@assets/"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_1
    sget-object v0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 148
    sget-object p1, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sTypefaceCache:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private measureText(Ljava/lang/String;)F
    .locals 1

    .line 396
    invoke-direct {p0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->createTextPaintIfNeeded()V

    .line 397
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private measureTextReturnSize(Ljava/lang/String;)Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;
    .locals 3

    .line 403
    invoke-direct {p0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->createTextPaintIfNeeded()V

    .line 404
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 407
    new-instance v1, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v0

    invoke-direct {v1, p0, p1, v2}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Size;-><init>(Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;FF)V

    return-object v1
.end method

.method private moveTo(FF)V
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method private static newPaint(Ljava/lang/String;IZZZZ)Landroid/text/TextPaint;
    .locals 4

    .line 162
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p1, p1

    .line 163
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 164
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    if-eqz p2, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Bold"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz p3, :cond_1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Italic"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_1
    sget-object v2, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sTypefaceCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 178
    sget-object p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->sTypefaceCache:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const/4 p2, 0x3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    const/4 p2, 0x2

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    .line 188
    :goto_1
    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 190
    :goto_2
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz p4, :cond_6

    .line 192
    sget p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->_sApproximatingOblique:F

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_6
    if-eqz p5, :cond_7

    .line 194
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p0, p2, :cond_7

    new-array p0, p1, [Ljava/lang/Class;

    .line 195
    const-class p2, Ljava/lang/String;

    aput-object p2, p0, v3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "smcp"

    aput-object p2, p1, v3

    const-string p2, "setFontFeatureSettings"

    invoke-static {v0, p2, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method private recreateBuffer(FF)V
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    float-to-double v0, p1

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mBitmap:Landroid/graphics/Bitmap;

    .line 221
    iget-object p2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private rect(FFFF)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->beginPath()V

    .line 332
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->moveTo(FF)V

    add-float/2addr p4, p2

    .line 333
    invoke-direct {p0, p1, p4}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->lineTo(FF)V

    add-float/2addr p1, p3

    .line 334
    invoke-direct {p0, p1, p4}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->lineTo(FF)V

    .line 335
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->lineTo(FF)V

    .line 336
    invoke-direct {p0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->closePath()V

    return-void
.end method

.method private restoreContext()V
    .locals 2

    .line 324
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private saveContext()V
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method private scaleX(Landroid/text/TextPaint;Ljava/lang/String;F)V
    .locals 2

    const/4 v0, 0x1

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->measureText(Ljava/lang/String;)F

    move-result p2

    sub-float v1, p2, p3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    div-float/2addr p3, p2

    .line 371
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    return-void
.end method

.method private setFillStyle(FFFF)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 433
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleR:I

    mul-float p2, p2, v0

    float-to-int p1, p2

    .line 434
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleG:I

    mul-float p3, p3, v0

    float-to-int p1, p3

    .line 435
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleB:I

    mul-float p4, p4, v0

    float-to-int p1, p4

    .line 436
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFillStyleA:I

    return-void
.end method

.method private setLineCap(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineCap:Ljava/lang/String;

    return-void
.end method

.method private setLineJoin(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineJoin:Ljava/lang/String;

    return-void
.end method

.method private setLineWidth(F)V
    .locals 0

    .line 448
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineWidth:F

    return-void
.end method

.method private setStrokeCap(Landroid/graphics/Paint;)V
    .locals 3

    .line 262
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineCap:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "round"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "butt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "square"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 267
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 264
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 270
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3553a6e3 -> :sswitch_2
        0x2e5213 -> :sswitch_1
        0x67ab18e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setStrokeJoin(Landroid/graphics/Paint;)V
    .locals 3

    .line 276
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineJoin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "round"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "miter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "bevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 281
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    .line 284
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    .line 278
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x594b07a -> :sswitch_2
        0x6317d05 -> :sswitch_1
        0x67ab18e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setStrokeStyle(FFFF)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 441
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleR:I

    mul-float p2, p2, v0

    float-to-int p1, p2

    .line 442
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleG:I

    mul-float p3, p3, v0

    float-to-int p1, p3

    .line 443
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleB:I

    mul-float p4, p4, v0

    float-to-int p1, p4

    .line 444
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleA:I

    return-void
.end method

.method private setTextAlign(I)V
    .locals 0

    .line 423
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextAlign:I

    return-void
.end method

.method private setTextBaseline(I)V
    .locals 0

    .line 428
    iput p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextBaseline:I

    return-void
.end method

.method private stroke()V
    .locals 5

    .line 244
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 246
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 250
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    .line 253
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleA:I

    iget v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleR:I

    iget v3, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleG:I

    iget v4, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleB:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 254
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->setStrokeCap(Landroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->setStrokeJoin(Landroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private strokeText(Ljava/lang/String;FFF)V
    .locals 5

    .line 386
    invoke-direct {p0}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->createTextPaintIfNeeded()V

    .line 387
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleA:I

    iget v2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleR:I

    iget v3, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleG:I

    iget v4, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mStrokeStyleB:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 388
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 389
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mLineWidth:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 390
    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1, p4}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->scaleX(Landroid/text/TextPaint;Ljava/lang/String;F)V

    .line 391
    new-instance p4, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;

    invoke-direct {p4, p0, p2, p3}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;-><init>(Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;FF)V

    invoke-direct {p0, p4, p1}, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->convertDrawPoint(Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;Ljava/lang/String;)Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;

    move-result-object p2

    .line 392
    iget-object p3, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mCanvas:Landroid/graphics/Canvas;

    iget p4, p2, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->x:F

    iget p2, p2, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl$Point;->y:F

    iget-object v0, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p1, p4, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private updateFont(Ljava/lang/String;FZZZZ)V
    .locals 0

    .line 412
    iput-object p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFontName:Ljava/lang/String;

    .line 413
    iput p2, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mFontSize:F

    .line 414
    iput-boolean p3, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsBoldFont:Z

    .line 415
    iput-boolean p4, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsItalicFont:Z

    .line 416
    iput-boolean p5, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsObliqueFont:Z

    .line 417
    iput-boolean p6, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mIsSmallCapsFontVariant:Z

    const/4 p1, 0x0

    .line 418
    iput-object p1, p0, Lorg/cocos2dx/lib/CanvasRenderingContext2DImpl;->mTextPaint:Landroid/text/TextPaint;

    return-void
.end method
