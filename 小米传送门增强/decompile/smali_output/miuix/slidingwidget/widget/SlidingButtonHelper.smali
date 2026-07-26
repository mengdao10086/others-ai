.class public Lmiuix/slidingwidget/widget/SlidingButtonHelper;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAnimChecked:Z

.field private mAnimCheckedTemp:Z

.field private mCornerRadius:I

.field private mExtraAlpha:F

.field private mHeight:I

.field private final mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mIsSliderEdgeReached:Z

.field private mLastX:I

.field private mMarginHorizontal:I

.field private mMarginVertical:I

.field private mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskCheckedSlideBarAlpha:F

.field private final mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskCheckedSlideBarAlphaTemp:F

.field private mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaxTranslateOffset:I

.field private mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOriginalTouchPointX:I

.field private mParamCached:Z

.field private mSlideBar:Landroid/graphics/drawable/StateListDrawable;

.field private mSliderHeight:I

.field private mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderMoved:Z

.field private mSliderOff:Landroid/graphics/drawable/Drawable;

.field private mSliderOffset:I

.field private final mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderOffsetTemp:I

.field private mSliderOn:Landroid/graphics/drawable/Drawable;

.field private mSliderOnAlpha:I

.field private mSliderOnAlphaTemp:I

.field private mSliderPaddingH:I

.field private mSliderPositionEnd:I

.field private mSliderPositionStart:I

.field private mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderScale:F

.field private final mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderWidth:I

.field private mSlidingBarColor:I

.field private mTapThreshold:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTranslateDist:[F

.field private mView:Landroid/widget/CompoundButton;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$aIprBi06XBmK2vzEJDKmOn8qy9E(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const v0, 0x10100a0

    .line 33
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .registers 5

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 78
    new-instance v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    const-string v2, "SliderOffset"

    invoke-direct {v1, p0, v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 111
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    .line 112
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 114
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    const/4 v2, -0x1

    .line 115
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 116
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 117
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 118
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 120
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$2;

    const-string v2, "SliderScale"

    invoke-direct {v0, p0, v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$2;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 133
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$$ExternalSyntheticLambda0;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 138
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;

    const-string v2, "MaskCheckedSlideBarAlpha"

    invoke-direct {v0, p0, v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 155
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 157
    new-array v1, v1, [F

    fill-array-data v1, :array_60

    iput-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 161
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 162
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 163
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_5f

    .line 164
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_5f
    return-void

    :array_60
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .registers 1

    .line 30
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    return p0
.end method

.method static synthetic access$002(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .registers 2

    .line 30
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    return p1
.end method

.method static synthetic access$100(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .registers 1

    .line 30
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    return p0
.end method

.method static synthetic access$102(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .registers 2

    .line 30
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    return p1
.end method

.method static synthetic access$202(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    return p1
.end method

.method static synthetic access$300(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I
    .registers 1

    .line 30
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I
    .registers 1

    .line 30
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    return p0
.end method

.method private actualTranslateDist(Landroid/view/View;Landroid/view/MotionEvent;)[F
    .registers 11

    .line 536
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 537
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/4 v1, 0x2

    .line 538
    new-array v2, v1, [I

    .line 539
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 541
    aget v4, v2, v3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x1

    .line 542
    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v2, v7

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2f

    move v0, v7

    goto :goto_36

    :cond_2f
    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 544
    :goto_36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_45

    :cond_3d
    sub-float/2addr p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v7, p2, p1

    :goto_45
    const/high16 p1, 0x3f800000    # 1.0f

    .line 546
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 547
    invoke-static {p1, v7}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 548
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaxTranslateOffset:I

    int-to-float v2, v0

    mul-float/2addr p2, v2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 551
    new-array v0, v1, [F

    aput p2, v0, v3

    aput p1, v0, v5

    return-object v0
.end method

.method private animateToState(Z)V
    .registers 4

    .line 667
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_13

    .line 668
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 669
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->startCheckedChangeAnimInternal(Z)V

    .line 670
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_13
    if-eqz p1, :cond_18

    .line 672
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_1a

    :cond_18
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 673
    :goto_1a
    new-instance v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;

    invoke-direct {v1, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V

    invoke-direct {p0, p1, v0, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method private animateToState(ZILjava/lang/Runnable;)V
    .registers 7

    .line 616
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 617
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 619
    :cond_f
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_18

    return-void

    .line 622
    :cond_18
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 623
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x4476bd71

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 624
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 625
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 626
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;

    invoke-direct {v0, p0, p3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 632
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    if-eqz p1, :cond_6d

    .line 634
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5f

    .line 635
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 637
    :cond_5f
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 638
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    goto :goto_87

    .line 641
    :cond_6d
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_7a

    .line 642
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 644
    :cond_7a
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 645
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_87
    :goto_87
    return-void
.end method

.method private animateToggle()V
    .registers 4

    .line 662
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 663
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    return-void
.end method

.method private createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 702
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    .line 703
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getLayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 704
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 705
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginHorizontal:I

    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginVertical:I

    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    sub-int/2addr v3, v1

    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    sub-int/2addr v4, v2

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;
    .registers 5

    .line 689
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 690
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 691
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method private initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 696
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 697
    iput-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 698
    iput-object p3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private synthetic lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    .line 135
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method private moveSlider(I)V
    .registers 5

    .line 597
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    neg-int p1, p1

    .line 600
    :cond_9
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 601
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-ge v0, p1, :cond_15

    .line 602
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    goto :goto_1b

    .line 603
    :cond_15
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-le v0, v1, :cond_1b

    .line 604
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 607
    :cond_1b
    :goto_1b
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    if-eq v0, p1, :cond_26

    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-ne v0, p1, :cond_24

    goto :goto_26

    :cond_24
    const/4 p1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p1, 0x1

    :goto_27
    if-eqz p1, :cond_36

    .line 608
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    if-nez v0, :cond_36

    .line 609
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 611
    :cond_36
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 612
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderOffset(I)V

    return-void
.end method

.method private onDrawSlideBar(Landroid/graphics/Canvas;)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 583
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_15

    .line 585
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 586
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 588
    :cond_15
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_25

    .line 590
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 591
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_25
    return-void
.end method

.method private onPressedInner()V
    .registers 2

    .line 555
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 556
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 558
    :cond_d
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 559
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_1a
    return-void
.end method

.method private onUnPressedInner()V
    .registers 2

    .line 564
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 565
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 567
    :cond_d
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 568
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_1a
    return-void
.end method

.method private popSavedParams()V
    .registers 2

    .line 325
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    if-eqz v0, :cond_20

    .line 326
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 327
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 328
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 329
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    const/4 v0, -0x1

    .line 331
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 332
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 333
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    :cond_20
    return-void
.end method

.method private saveCurrentParams()V
    .registers 2

    .line 317
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 318
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 319
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 320
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    return-void
.end method

.method private scaleCanvasEnd(Landroid/graphics/Canvas;)V
    .registers 2

    .line 573
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private scaleCanvasStart(Landroid/graphics/Canvas;II)V
    .registers 5

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 579
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    return-void
.end method

.method private setCheckedInner(Z)V
    .registers 3

    .line 347
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_1f

    .line 348
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 349
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 351
    :cond_11
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez p1, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 353
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 357
    :cond_1f
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-nez v0, :cond_3d

    .line 358
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 359
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 361
    :cond_30
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3d

    if-eqz p1, :cond_3d

    const/4 p1, 0x0

    .line 363
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_3d
    return-void
.end method

.method private startCheckedChangeAnimInternal(Z)V
    .registers 4

    .line 338
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 339
    :cond_a
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_11

    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_13

    :cond_11
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_13
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    if-eqz v0, :cond_1a

    const/16 v0, 0xff

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 340
    :goto_1b
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 342
    :cond_1d
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->popSavedParams()V

    .line 343
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setCheckedInner(Z)V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .line 374
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    return v0
.end method

.method public getMeasuredHeight()I
    .registers 2

    .line 183
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .registers 2

    .line 179
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    return v0
.end method

.method public getSliderOffset()I
    .registers 2

    .line 272
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    return v0
.end method

.method public getSliderOn()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 187
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public initAnim()V
    .registers 8

    .line 378
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v3, 0x3f904189    # 1.127f

    invoke-direct {v0, v1, v2, v3}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 379
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 380
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 381
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    const v3, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 382
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 384
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 385
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 386
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 387
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 388
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 390
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v2, v3, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 391
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x43db51ec

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 392
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 393
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 394
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 396
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 397
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 398
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 399
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 400
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    return-void
.end method

.method public initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 8

    .line 195
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_frame_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mCornerRadius:I

    .line 196
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_mask_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginVertical:I

    .line 197
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_mask_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginHorizontal:I

    .line 199
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setDrawingCacheEnabled(Z)V

    .line 200
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTapThreshold:I

    .line 202
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_sliderOn:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 203
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_sliderOff:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v2, Lmiuix/slidingwidget/R$styleable;->SlidingButton_android_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    const-string v0, "#FF3482FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 207
    sget v0, Lmiuix/slidingwidget/R$color;->miuix_appcompat_sliding_button_bar_on_light:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 209
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_slidingBarColor:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlidingBarColor:I

    .line 211
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_frame_vertical_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 212
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_frame_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 213
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 214
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 215
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    .line 216
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 218
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_slider_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 219
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_slider_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPaddingH:I

    .line 220
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 221
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderHeight:I

    .line 222
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 223
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    sub-int/2addr v2, p1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 224
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 226
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 227
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 228
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 229
    sget v2, Lmiuix/slidingwidget/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 230
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 231
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 235
    iget v2, p1, Landroid/util/TypedValue;->type:I

    iget v3, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_fd

    iget v2, p1, Landroid/util/TypedValue;->data:I

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_fd

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-ne p1, v1, :cond_fd

    move-object p2, v0

    :cond_fd
    if-eqz p2, :cond_11b

    if-eqz v0, :cond_11b

    .line 245
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlidingBarColor:I

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 247
    invoke-direct {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 248
    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    invoke-direct {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 251
    invoke-direct {p0, p1, v0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 259
    :cond_11b
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    .line 261
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_12b

    .line 262
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderOffset(I)V

    .line 265
    :cond_12b
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_slider_max_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaxTranslateOffset:I

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 427
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_7

    .line 428
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    :cond_7
    return-void
.end method

.method public notifyCheckedChangeListener()V
    .registers 4

    .line 655
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_11

    .line 656
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 657
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-interface {v1, v2, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_11
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 405
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    .line 406
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDrawSlideBar(Landroid/graphics/Canvas;)V

    .line 409
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 410
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPaddingH:I

    if-eqz v0, :cond_11

    neg-int v1, v1

    :cond_11
    if-eqz v0, :cond_1c

    .line 411
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v2, v3

    goto :goto_1e

    :cond_1c
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    :goto_1e
    add-int/2addr v2, v1

    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    const/4 v4, 0x0

    aget v4, v3, v4

    float-to-int v5, v4

    add-int/2addr v2, v5

    if-eqz v0, :cond_2e

    .line 412
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v0, v5

    goto :goto_33

    :cond_2e
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    add-int/2addr v0, v5

    :goto_33
    add-int/2addr v0, v1

    float-to-int v1, v4

    add-int/2addr v0, v1

    .line 413
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderHeight:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    const/4 v5, 0x1

    aget v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v1, v3

    add-int/2addr v4, v1

    add-int v3, v0, v2

    .line 415
    div-int/lit8 v3, v3, 0x2

    add-int v5, v4, v1

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, p1, v3, v5}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->scaleCanvasStart(Landroid/graphics/Canvas;II)V

    .line 416
    iget-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v3, :cond_5d

    .line 417
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_67

    .line 420
    :cond_5d
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 421
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 423
    :goto_67
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->scaleCanvasEnd(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3f

    const/16 p1, 0x9

    if-eq v0, p1, :cond_2c

    const/16 p1, 0xa

    if-eq v0, p1, :cond_10

    goto :goto_4c

    .line 523
    :cond_10
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 524
    aput v1, p1, v0

    .line 525
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 526
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 528
    :cond_26
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    goto :goto_4c

    .line 513
    :cond_2c
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 514
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 516
    :cond_39
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    goto :goto_4c

    .line 519
    :cond_3f
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-direct {p0, v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->actualTranslateDist(Landroid/view/View;Landroid/view/MotionEvent;)[F

    move-result-object p1

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 520
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    :goto_4c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 9

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 441
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 442
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v3}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 443
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v4, v5

    goto :goto_23

    :cond_21
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    :goto_23
    if-eqz v3, :cond_2b

    .line 444
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v3, v5

    goto :goto_30

    :cond_2b
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    add-int/2addr v3, v5

    .line 445
    :goto_30
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x1

    if-eqz v0, :cond_c7

    const/4 v4, 0x2

    if-eq v0, v3, :cond_88

    if-eq v0, v4, :cond_63

    const/4 p1, 0x3

    if-eq v0, p1, :cond_43

    goto/16 :goto_ee

    .line 496
    :cond_43
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onUnPressedInner()V

    .line 497
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz p1, :cond_58

    .line 498
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    div-int/2addr v0, v4

    if-lt p1, v0, :cond_52

    goto :goto_53

    :cond_52
    move v3, v6

    :goto_53
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 499
    invoke-direct {p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 501
    :cond_58
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 502
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 503
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto/16 :goto_ee

    .line 464
    :cond_63
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz p1, :cond_ee

    .line 465
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    sub-int p1, v1, p1

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->moveSlider(I)V

    .line 466
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 467
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTapThreshold:I

    if-lt p1, v0, :cond_ee

    .line 468
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 469
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_ee

    .line 475
    :cond_88
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 476
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onUnPressedInner()V

    .line 477
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz v0, :cond_ba

    .line 478
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    if-nez v0, :cond_9c

    .line 479
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToggle()V

    goto :goto_bd

    .line 481
    :cond_9c
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    div-int/2addr v5, v4

    if-lt v0, v5, :cond_a4

    goto :goto_a5

    :cond_a4
    move v3, v6

    :goto_a5
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 482
    invoke-direct {p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 483
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 484
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    goto :goto_bd

    .line 488
    :cond_ba
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToggle()V

    .line 490
    :cond_bd
    :goto_bd
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 491
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 492
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_ee

    .line 449
    :cond_c7
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 450
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 451
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 452
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onPressedInner()V

    .line 453
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-le p1, v0, :cond_e3

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-lt p1, v0, :cond_e2

    goto :goto_e3

    :cond_e2
    move v3, v6

    :cond_e3
    :goto_e3
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    goto :goto_e8

    .line 456
    :cond_e6
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 458
    :goto_e8
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 459
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    .line 460
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    :cond_ee
    :goto_ee
    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    .line 370
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 299
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->saveCurrentParams()V

    .line 300
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz p1, :cond_a

    .line 301
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_c

    :cond_a
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_c
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    if-eqz p1, :cond_13

    const/16 v0, 0xff

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 302
    :goto_14
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    if-eqz p1, :cond_1b

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 303
    :goto_1c
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 304
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 305
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 307
    :cond_2d
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 308
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 310
    :cond_3a
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 311
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 313
    :cond_47
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setLayerType(I)V
    .registers 4

    .line 711
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v1, :cond_b

    .line 712
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 714
    :cond_b
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v1, :cond_16

    .line 715
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 717
    :cond_16
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v1, :cond_21

    .line 718
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    :cond_21
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2

    .line 651
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setParentClipChildren()V
    .registers 3

    .line 682
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 683
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 684
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_10
    return-void
.end method

.method public setSliderDrawState()V
    .registers 3

    .line 169
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getSliderOn()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 170
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 171
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 172
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 173
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 174
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3d
    return-void
.end method

.method public setSliderOffset(I)V
    .registers 2

    .line 279
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 280
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 433
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
