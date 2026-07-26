.class public Lmiuix/miuixbasewidget/widget/PageIndicator;
.super Landroid/view/View;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/PageIndicator$OnPageChangeListener;
    }
.end annotation


# instance fields
.field private mBackgroundDrawableAlpha:Lmiuix/animation/property/ViewProperty;

.field private mCurrentPosition:I

.field private mCurrentPositionOffset:F

.field private final mEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

.field private mHorizontalPadding:I

.field private mIndicatorCount:I

.field private mIndicatorGap:F

.field private mIndicatorInterval:F

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorRadius:F

.field private mIsRtl:Z

.field private mLargeSizeGap:F

.field private mLargeSizeHorizontalPadding:I

.field private mLargeSizeRadius:F

.field private mLargeSizeVerticalPadding:F

.field private mNeedBackground:Z

.field private mOnPageChangeListener:Lmiuix/miuixbasewidget/widget/PageIndicator$OnPageChangeListener;

.field private mPageScrolling:Z

.field private mSelectedColor:I

.field private mSize:I

.field private mSmallSizeGap:F

.field private mSmallSizeHorizontalPadding:I

.field private mSmallSizeRadius:F

.field private mSmallSizeVerticalPadding:F

.field private mUnselectedColor:I

.field private mVerticalPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 81
    sget v0, Lmiuix/miuixbasewidget/R$style;->Widget_PageIndicator_DayNight:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/miuixbasewidget/widget/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mPageScrolling:Z

    .line 50
    new-instance v1, Lmiuix/miuixbasewidget/widget/PageIndicator$1;

    const-string v2, "backgroundDrawableAlpha"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, p0, v2, v3}, Lmiuix/miuixbasewidget/widget/PageIndicator$1;-><init>(Lmiuix/miuixbasewidget/widget/PageIndicator;Ljava/lang/String;F)V

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mBackgroundDrawableAlpha:Lmiuix/animation/property/ViewProperty;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_page_indicator_small_size_horizontal_padding:I

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSmallSizeHorizontalPadding:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_page_indicator_large_size_horizontal_padding:I

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mLargeSizeHorizontalPadding:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_page_indicator_small_size__vertical_padding:I

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSmallSizeVerticalPadding:F

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_page_indicator_large_size__vertical_padding:I

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mLargeSizeVerticalPadding:F

    .line 94
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/PageIndicator;->createIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 95
    sget-object v1, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_totalCount:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorCount:I

    .line 98
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_needBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mNeedBackground:Z

    .line 99
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_selectedColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSelectedColor:I

    .line 100
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_unselectedColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mUnselectedColor:I

    .line 101
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_sizeLevel:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSize:I

    .line 102
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_smallSizeRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSmallSizeRadius:F

    .line 103
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_largeSizeRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mLargeSizeRadius:F

    .line 104
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_smallSizeGap:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSmallSizeGap:F

    .line 105
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->PageIndicator_largeSizeGap:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mLargeSizeGap:F

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    iget p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSize:I

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/PageIndicator;->setSize(I)V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b7

    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mNeedBackground:Z

    if-nez p1, :cond_b7

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_b7
    return-void
.end method

.method private createIndicatorPaint()Landroid/graphics/Paint;
    .registers 3

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 273
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 274
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method

.method private drawIndicator(Landroid/graphics/Canvas;FFFI)V
    .registers 7

    .line 267
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object p5, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private notifyUpdate()V
    .registers 3

    .line 192
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSize:I

    if-nez v0, :cond_15

    .line 193
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSmallSizeRadius:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    .line 194
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSmallSizeVerticalPadding:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mVerticalPadding:F

    .line 195
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSmallSizeHorizontalPadding:I

    iput v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mHorizontalPadding:I

    .line 196
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSmallSizeGap:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorGap:F

    goto :goto_25

    .line 198
    :cond_15
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mLargeSizeRadius:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    .line 199
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mLargeSizeVerticalPadding:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mVerticalPadding:F

    .line 200
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mLargeSizeHorizontalPadding:I

    iput v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mHorizontalPadding:I

    .line 201
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mLargeSizeGap:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorGap:F

    :goto_25
    const/high16 v0, 0x40000000    # 2.0f

    .line 203
    iget v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    mul-float/2addr v1, v0

    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorGap:F

    add-float/2addr v1, v0

    iput v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorInterval:F

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public getIndicatorCount()I
    .registers 2

    .line 219
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorCount:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 123
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIsRtl:Z

    .line 124
    iget v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mHorizontalPadding:I

    int-to-float v1, v1

    iget v2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    add-float/2addr v1, v2

    .line 125
    iget v3, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mVerticalPadding:F

    add-float/2addr v3, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_6c

    .line 128
    :goto_12
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorCount:I

    if-ge v2, v0, :cond_c1

    .line 129
    iget v4, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPosition:I

    sub-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_3a

    .line 130
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    iget v4, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPositionOffset:F

    iget v5, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSelectedColor:I

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mUnselectedColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 130
    invoke-virtual {v0, v4, v5, v6}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_38
    move v9, v0

    goto :goto_5d

    :cond_3a
    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2

    if-ne v2, v0, :cond_5a

    .line 133
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    iget v4, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPositionOffset:F

    iget v5, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mUnselectedColor:I

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSelectedColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 133
    invoke-virtual {v0, v4, v5, v6}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_38

    .line 136
    :cond_5a
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mUnselectedColor:I

    goto :goto_38

    .line 138
    :goto_5d
    iget v8, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lmiuix/miuixbasewidget/widget/PageIndicator;->drawIndicator(Landroid/graphics/Canvas;FFFI)V

    .line 139
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorInterval:F

    add-float/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 142
    :cond_6c
    :goto_6c
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorCount:I

    if-ge v2, v0, :cond_c1

    .line 143
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPosition:I

    if-ne v2, v0, :cond_90

    .line 144
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    iget v4, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPositionOffset:F

    iget v5, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSelectedColor:I

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mUnselectedColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 144
    invoke-virtual {v0, v4, v5, v6}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_8e
    move v9, v0

    goto :goto_b2

    :cond_90
    add-int/lit8 v0, v0, 0x1

    if-ne v2, v0, :cond_af

    .line 147
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    iget v4, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPositionOffset:F

    iget v5, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mUnselectedColor:I

    .line 148
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSelectedColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 147
    invoke-virtual {v0, v4, v5, v6}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8e

    .line 150
    :cond_af
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mUnselectedColor:I

    goto :goto_8e

    .line 152
    :goto_b2
    iget v8, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lmiuix/miuixbasewidget/widget/PageIndicator;->drawIndicator(Landroid/graphics/Canvas;FFFI)V

    .line 153
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorInterval:F

    add-float/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_c1
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 115
    iget p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorCount:I

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorInterval:F

    mul-float/2addr p1, p2

    iget p2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p2, v0

    add-float/2addr p1, v1

    iget v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mHorizontalPadding:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    mul-float/2addr p2, v0

    .line 117
    iget v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mVerticalPadding:F

    mul-float/2addr v1, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_66

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mPageScrolling:Z

    if-nez v0, :cond_66

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 164
    iget v1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPosition:I

    .line 165
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIsRtl:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    if-eqz v2, :cond_3e

    .line 166
    iget v2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mHorizontalPadding:I

    int-to-float v2, v2

    iget v5, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorCount:I

    sub-int v6, v5, v1

    sub-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    mul-float v8, v7, v3

    iget v9, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorGap:F

    add-float/2addr v8, v9

    mul-float/2addr v6, v8

    add-float/2addr v2, v6

    mul-float/2addr v7, v3

    add-float/2addr v7, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_35

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_35

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_35
    cmpl-float v0, v0, v7

    if-lez v0, :cond_5e

    if-lez v1, :cond_5e

    :goto_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_5e

    .line 175
    :cond_3e
    iget v2, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mHorizontalPadding:I

    int-to-float v2, v2

    int-to-float v5, v1

    iget v6, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorRadius:F

    mul-float v7, v6, v3

    iget v8, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorGap:F

    add-float/2addr v7, v8

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_54

    if-lez v1, :cond_54

    goto :goto_3b

    :cond_54
    cmpl-float v0, v0, v6

    if-lez v0, :cond_5e

    .line 179
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorCount:I

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_5e

    goto :goto_32

    .line 183
    :cond_5e
    :goto_5e
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mOnPageChangeListener:Lmiuix/miuixbasewidget/widget/PageIndicator$OnPageChangeListener;

    if-eqz v0, :cond_66

    .line 184
    invoke-interface {v0, v1}, Lmiuix/miuixbasewidget/widget/PageIndicator$OnPageChangeListener;->onPageSelected(I)V

    return v4

    .line 188
    :cond_66
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundVisible(Z)V
    .registers 3

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mNeedBackground:Z

    if-eq v0, p1, :cond_f

    .line 249
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mNeedBackground:Z

    .line 250
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/PageIndicator;->setBackgroundVisibleInternal(Z)V

    :cond_f
    return-void
.end method

.method setBackgroundVisibleInternal(Z)V
    .registers 7

    if-eqz p1, :cond_25

    .line 285
    invoke-static {p0}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mBackgroundDrawableAlpha:Lmiuix/animation/property/ViewProperty;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Lmiuix/animation/FolmeEase;->sinOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_47

    .line 287
    :cond_25
    invoke-static {p0}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mBackgroundDrawableAlpha:Lmiuix/animation/property/ViewProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Lmiuix/animation/FolmeEase;->sinOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_47
    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 3

    .line 230
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPosition:I

    if-eq v0, p1, :cond_9

    .line 231
    iput p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPosition:I

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public setCurrentPositionOffset(F)V
    .registers 3

    .line 237
    iget v0, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPositionOffset:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 238
    iput p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mCurrentPositionOffset:F

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method public setIndicatorCount(I)V
    .registers 2

    if-ltz p1, :cond_7

    .line 213
    iput p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mIndicatorCount:I

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setOnPageChangeListener(Lmiuix/miuixbasewidget/widget/PageIndicator$OnPageChangeListener;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mOnPageChangeListener:Lmiuix/miuixbasewidget/widget/PageIndicator$OnPageChangeListener;

    return-void
.end method

.method public setSize(I)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 224
    :cond_5
    iput p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator;->mSize:I

    .line 225
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/PageIndicator;->notifyUpdate()V

    :cond_a
    return-void
.end method
