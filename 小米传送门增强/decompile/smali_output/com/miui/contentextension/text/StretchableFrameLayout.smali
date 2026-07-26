.class public Lcom/miui/contentextension/text/StretchableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "StretchableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;
    }
.end annotation


# static fields
.field private static sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBgColor:I

.field private mBgPressedColor:I

.field private mBorderColor:I

.field private mCurrentState:I

.field private mDrawTouchMask:Z

.field private mEnableStretch:Z

.field private mLastDeltaX:F

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mStretchDistance:I

.field private mStretchInAnim:Landroid/animation/ValueAnimator;

.field private mStretchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStretchOutAnim:Landroid/animation/ValueAnimator;

.field private mStretchRatio:F

.field private mTouchStartRawX:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmStretchDistance(Lcom/miui/contentextension/text/StretchableFrameLayout;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchDistance:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Lcom/miui/contentextension/text/StretchableFrameLayout;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/contentextension/text/StretchableFrameLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private isStretchInState()Z
    .registers 3

    .line 180
    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    if-eqz v0, :cond_a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method private isStretchOutState()Z
    .registers 4

    .line 185
    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method private startStretch(F)V
    .registers 7

    .line 270
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_2a

    .line 271
    iget-object v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    move v3, v2

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;

    if-nez v3, :cond_27

    .line 272
    invoke-interface {v4}, Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;->onStretchClick()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_27
    move v3, v1

    goto :goto_13

    :cond_29
    move v2, v3

    :cond_2a
    if-nez v2, :cond_49

    .line 276
    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_46

    const/4 v2, 0x0

    if-ne v0, v1, :cond_39

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_39

    goto :goto_46

    :cond_39
    const/4 v1, 0x3

    if-eq v0, v1, :cond_42

    if-nez v0, :cond_49

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_49

    .line 281
    :cond_42
    invoke-virtual {p0}, Lcom/miui/contentextension/text/StretchableFrameLayout;->stretchOut()V

    goto :goto_49

    .line 278
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/miui/contentextension/text/StretchableFrameLayout;->stretchIn()V

    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    .line 308
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 309
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 311
    invoke-direct {p0}, Lcom/miui/contentextension/text/StretchableFrameLayout;->isStretchOutState()Z

    move-result v3

    if-eqz v3, :cond_39

    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mLastDeltaX:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_35

    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMaxRadius:I

    int-to-float v4, v3

    iget v5, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMinRadius:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchRatio:F

    :goto_32
    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    goto :goto_43

    :cond_35
    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMaxRadius:I

    int-to-float v4, v3

    goto :goto_43

    .line 312
    :cond_39
    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMinRadius:I

    int-to-float v4, v3

    iget v5, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMaxRadius:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchRatio:F

    goto :goto_32

    .line 313
    :goto_43
    sget-object v3, Lcom/miui/contentextension/text/StretchableFrameLayout;->sPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mBorderColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    sget-object v3, Lcom/miui/contentextension/text/StretchableFrameLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 315
    iget-boolean v2, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mDrawTouchMask:Z

    if-eqz v2, :cond_5b

    .line 316
    sget-object v2, Lcom/miui/contentextension/text/StretchableFrameLayout;->sPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mBgPressedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_62

    .line 318
    :cond_5b
    sget-object v2, Lcom/miui/contentextension/text/StretchableFrameLayout;->sPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    :goto_62
    new-instance v2, Landroid/graphics/RectF;

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v5, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 321
    sget-object v0, Lcom/miui/contentextension/text/StretchableFrameLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 323
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 77
    sget-object v1, Landroid/widget/FrameLayout;->PRESSED_STATE_SET:[I

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Landroid/widget/FrameLayout;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 78
    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 79
    :goto_18
    iget-boolean v1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mDrawTouchMask:Z

    if-eq v1, v0, :cond_21

    .line 80
    iput-boolean v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mDrawTouchMask:Z

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 83
    :cond_21
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    return-void
.end method

.method public getStretchRatio()F
    .registers 2

    .line 296
    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchRatio:F

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 98
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 99
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchInAnim:Landroid/animation/ValueAnimator;

    .line 100
    new-instance v1, Lcom/miui/contentextension/text/StretchableFrameLayout$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/StretchableFrameLayout$1;-><init>(Lcom/miui/contentextension/text/StretchableFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    iget-object v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/contentextension/text/StretchableFrameLayout$2;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/StretchableFrameLayout$2;-><init>(Lcom/miui/contentextension/text/StretchableFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchOutAnim:Landroid/animation/ValueAnimator;

    .line 119
    new-instance v1, Lcom/miui/contentextension/text/StretchableFrameLayout$3;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/StretchableFrameLayout$3;-><init>(Lcom/miui/contentextension/text/StretchableFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    iget-object v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/contentextension/text/StretchableFrameLayout$4;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/StretchableFrameLayout$4;-><init>(Lcom/miui/contentextension/text/StretchableFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    sget-object v0, Lcom/miui/contentextension/text/StretchableFrameLayout;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 191
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p5, p3

    .line 192
    div-int/lit8 p5, p5, 0x2

    iput p5, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMaxRadius:I

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/DeviceConfig;->isFullViewDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 194
    iget p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMaxRadius:I

    int-to-float p1, p1

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMinRadius:I

    goto :goto_27

    .line 196
    :cond_1d
    iget p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMaxRadius:I

    int-to-float p1, p1

    const p2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mMinRadius:I

    :goto_27
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 224
    iget-boolean v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mEnableStretch:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 228
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a1

    const/high16 v3, -0x40800000    # -1.0f

    if-eq v0, v1, :cond_8a

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1c

    if-eq v0, v4, :cond_8a

    goto/16 :goto_a9

    .line 234
    :cond_1c
    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mTouchStartRawX:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a9

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mTouchStartRawX:F

    sub-float/2addr p1, v0

    cmpl-float v0, p1, v2

    if-lez v0, :cond_33

    .line 236
    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mLastDeltaX:F

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_3d

    :cond_33
    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mLastDeltaX:F

    sub-float v6, p1, v3

    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_40

    .line 237
    :cond_3d
    iput v5, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    goto :goto_52

    :cond_40
    cmpg-float v6, p1, v2

    if-gez v6, :cond_48

    cmpg-float v6, p1, v3

    if-ltz v6, :cond_50

    :cond_48
    sub-float v3, p1, v3

    const/high16 v6, -0x3ee00000    # -10.0f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_a9

    .line 239
    :cond_50
    iput v4, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    .line 243
    :goto_52
    iput p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mLastDeltaX:F

    .line 245
    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_73

    .line 246
    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchDistance:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_64

    move v0, v2

    goto :goto_7e

    :cond_64
    if-lez v0, :cond_68

    :goto_66
    move v0, v4

    goto :goto_7e

    :cond_68
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchDistance:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v4, v0

    goto :goto_7e

    :cond_73
    if-ltz v0, :cond_76

    goto :goto_66

    .line 248
    :cond_76
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchDistance:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 250
    :goto_7e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/contentextension/text/StretchableFrameLayout;->setStretchRatio(FF)V

    goto :goto_a9

    .line 255
    :cond_8a
    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mTouchStartRawX:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_9a

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mTouchStartRawX:F

    sub-float/2addr p1, v0

    .line 257
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/StretchableFrameLayout;->startStretch(F)V

    :cond_9a
    const/high16 p1, -0x31000000

    .line 259
    iput p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mLastDeltaX:F

    .line 260
    iput v3, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mTouchStartRawX:F

    goto :goto_a9

    .line 230
    :cond_a1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mTouchStartRawX:F

    .line 231
    iput v2, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mLastDeltaX:F

    :cond_a9
    :goto_a9
    return v1
.end method

.method public setEnableStretch(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mEnableStretch:Z

    return-void
.end method

.method public setStretchDistance(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchDistance:I

    return-void
.end method

.method public setStretchRatio(FF)V
    .registers 6

    .line 287
    iput p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchRatio:F

    .line 288
    invoke-direct {p0}, Lcom/miui/contentextension/text/StretchableFrameLayout;->isStretchInState()Z

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;

    .line 290
    invoke-interface {v2, p1, v0, p2}, Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;->onStretch(FZF)V

    goto :goto_c

    .line 292
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public stretchIn()V
    .registers 4

    .line 211
    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    goto :goto_11

    :cond_a
    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchRatio:F

    .line 215
    iput v2, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    .line 217
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;

    .line 218
    invoke-interface {v2, v1}, Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;->onStretchStart(Z)V

    goto :goto_17

    :cond_27
    return-void
.end method

.method public stretchOut()V
    .registers 4

    .line 201
    iget v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchRatio:F

    const/4 v0, 0x3

    .line 203
    iput v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mCurrentState:I

    .line 205
    :cond_a
    iget-object v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout;->mStretchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;

    const/4 v2, 0x0

    .line 206
    invoke-interface {v1, v2}, Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;->onStretchStart(Z)V

    goto :goto_10

    :cond_21
    return-void
.end method
