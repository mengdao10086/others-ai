.class public Lcom/miui/support/drawable/CardDrawable;
.super Lcom/miui/support/drawable/CardStateDrawable;
.source "CardDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/support/drawable/CardDrawable$CardState;
    }
.end annotation


# instance fields
.field private mCardColor:I

.field private mCardPaddingBottom:I

.field private mCardPaddingLeft:I

.field private mCardPaddingRight:I

.field private mCardPaddingTop:I

.field private mCardRadius:I

.field private mCardState:Lcom/miui/support/drawable/CardDrawable$CardState;

.field private mIsSupportOutline:Z

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/miui/support/drawable/CardStateDrawable;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/support/drawable/CardDrawable;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/support/drawable/CardDrawable;->mPadding:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/miui/support/drawable/CardDrawable;->mIsSupportOutline:Z

    .line 40
    new-instance v0, Lcom/miui/support/drawable/CardDrawable$CardState;

    invoke-direct {v0}, Lcom/miui/support/drawable/CardDrawable$CardState;-><init>()V

    iput-object v0, p0, Lcom/miui/support/drawable/CardDrawable;->mCardState:Lcom/miui/support/drawable/CardDrawable$CardState;

    return-void
.end method

.method public constructor <init>(Lcom/miui/support/drawable/CardDrawable$CardState;Landroid/content/res/Resources;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/support/drawable/CardStateDrawable;-><init>(Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;Landroid/content/res/Resources;)V

    .line 28
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/support/drawable/CardDrawable;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/support/drawable/CardDrawable;->mPadding:Landroid/graphics/Rect;

    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Lcom/miui/support/drawable/CardDrawable;->mIsSupportOutline:Z

    .line 45
    new-instance p2, Lcom/miui/support/drawable/CardDrawable$CardState;

    invoke-direct {p2, p1}, Lcom/miui/support/drawable/CardDrawable$CardState;-><init>(Lcom/miui/support/drawable/CardDrawable$CardState;)V

    iput-object p2, p0, Lcom/miui/support/drawable/CardDrawable;->mCardState:Lcom/miui/support/drawable/CardDrawable$CardState;

    .line 46
    invoke-direct {p0, p1}, Lcom/miui/support/drawable/CardDrawable;->initCardDrawable(Lcom/miui/support/drawable/CardDrawable$CardState;)V

    .line 47
    invoke-direct {p0}, Lcom/miui/support/drawable/CardDrawable;->cacheCardDrawable()V

    return-void
.end method

.method private cacheCardDrawable()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/miui/support/drawable/CardDrawable;->mCardState:Lcom/miui/support/drawable/CardDrawable$CardState;

    iget v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardColor:I

    iput v1, v0, Lcom/miui/support/drawable/CardDrawable$CardState;->color:I

    .line 70
    iget v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardRadius:I

    iput v1, v0, Lcom/miui/support/drawable/CardDrawable$CardState;->radius:I

    .line 71
    iget v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingLeft:I

    iput v1, v0, Lcom/miui/support/drawable/CardDrawable$CardState;->paddingLeft:I

    .line 72
    iget v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingTop:I

    iput v1, v0, Lcom/miui/support/drawable/CardDrawable$CardState;->paddingTop:I

    .line 73
    iget v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingRight:I

    iput v1, v0, Lcom/miui/support/drawable/CardDrawable$CardState;->paddingRight:I

    .line 74
    iget v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingBottom:I

    iput v1, v0, Lcom/miui/support/drawable/CardDrawable$CardState;->paddingBottom:I

    .line 75
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mCardRadiusMode:I

    iput v1, v0, Lcom/miui/support/drawable/CardDrawable$CardState;->radiusMode:I

    .line 76
    iget-boolean v1, p0, Lcom/miui/support/drawable/CardDrawable;->mIsSupportOutline:Z

    iput-boolean v1, v0, Lcom/miui/support/drawable/CardDrawable$CardState;->isSupportOutline:Z

    .line 77
    invoke-direct {p0}, Lcom/miui/support/drawable/CardDrawable;->updateParentState()V

    return-void
.end method

.method private initCardDrawable(Lcom/miui/support/drawable/CardDrawable$CardState;)V
    .registers 7

    .line 128
    iget-object v0, p0, Lcom/miui/support/drawable/CardDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget v0, p1, Lcom/miui/support/drawable/CardDrawable$CardState;->color:I

    iput v0, p0, Lcom/miui/support/drawable/CardDrawable;->mCardColor:I

    .line 130
    iget v0, p1, Lcom/miui/support/drawable/CardDrawable$CardState;->paddingLeft:I

    iput v0, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingLeft:I

    .line 131
    iget v1, p1, Lcom/miui/support/drawable/CardDrawable$CardState;->paddingRight:I

    iput v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingRight:I

    .line 132
    iget v2, p1, Lcom/miui/support/drawable/CardDrawable$CardState;->paddingTop:I

    iput v2, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingTop:I

    .line 133
    iget v3, p1, Lcom/miui/support/drawable/CardDrawable$CardState;->paddingBottom:I

    iput v3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingBottom:I

    .line 134
    iget v4, p1, Lcom/miui/support/drawable/CardDrawable$CardState;->radius:I

    iput v4, p0, Lcom/miui/support/drawable/CardDrawable;->mCardRadius:I

    .line 135
    iget v4, p1, Lcom/miui/support/drawable/CardDrawable$CardState;->radiusMode:I

    iput v4, p0, Lcom/miui/support/drawable/CardStateDrawable;->mCardRadiusMode:I

    .line 136
    iget-boolean p1, p1, Lcom/miui/support/drawable/CardDrawable$CardState;->isSupportOutline:Z

    iput-boolean p1, p0, Lcom/miui/support/drawable/CardDrawable;->mIsSupportOutline:Z

    .line 137
    iget-object p1, p0, Lcom/miui/support/drawable/CardDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 138
    iget-object p1, p0, Lcom/miui/support/drawable/CardDrawable;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/support/drawable/CardDrawable;->mCardColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget p1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardRadius:I

    iget v0, p0, Lcom/miui/support/drawable/CardStateDrawable;->mCardRadiusMode:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/support/drawable/CardStateDrawable;->setRadiusMode(II)V

    return-void
.end method

.method private updateParentState()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/miui/support/drawable/CardDrawable;->mCardState:Lcom/miui/support/drawable/CardDrawable$CardState;

    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mTintColor:I

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mTintColor:I

    .line 55
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mRadius:I

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mRadius:I

    .line 56
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mNormalAlpha:F

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mNormalAlpha:F

    .line 57
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mPressedAlpha:F

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mPressedAlpha:F

    .line 58
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mHoveredAlpha:F

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mHoveredAlpha:F

    .line 59
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mFocusedAlpha:F

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mFocusedAlpha:F

    .line 60
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mActivatedAlpha:F

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mActivatedAlpha:F

    .line 61
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mCheckedAlpha:F

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mCheckedAlpha:F

    .line 62
    iget v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mHoveredCheckedAlpha:F

    iput v1, v0, Lcom/miui/support/drawable/CardStateDrawable$AlphaBlendingState;->mHoveredCheckedAlpha:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 82
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 83
    iget-object v0, p0, Lcom/miui/support/drawable/CardStateDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 84
    iget-object v0, p0, Lcom/miui/support/drawable/CardStateDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/support/drawable/CardStateDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/support/drawable/CardStateDrawable;->mAllRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 85
    iget-object v0, p0, Lcom/miui/support/drawable/CardStateDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/support/drawable/CardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    :cond_1d
    invoke-super {p0, p1}, Lcom/miui/support/drawable/CardStateDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/miui/support/drawable/CardDrawable;->mCardState:Lcom/miui/support/drawable/CardDrawable$CardState;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    .line 188
    iget-boolean v0, p0, Lcom/miui/support/drawable/CardDrawable;->mIsSupportOutline:Z

    if-nez v0, :cond_8

    .line 189
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 192
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_14

    .line 193
    iget-object v0, p0, Lcom/miui/support/drawable/CardStateDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    goto :goto_1e

    .line 195
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardRadius:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :goto_1e
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/miui/support/drawable/CardDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/support/drawable/CardStateDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_d

    .line 107
    sget-object p1, Lcom/miui/support/cardview/R$styleable;->CardDrawable:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_13

    .line 109
    :cond_d
    sget-object p4, Lcom/miui/support/cardview/R$styleable;->CardDrawable:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 111
    :goto_13
    iget-object p3, p0, Lcom/miui/support/drawable/CardDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    sget p3, Lcom/miui/support/cardview/R$styleable;->CardDrawable_backgroundColor:I

    const/high16 p4, -0x1000000

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardColor:I

    .line 113
    sget p3, Lcom/miui/support/cardview/R$styleable;->CardDrawable_paddingLeft:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingLeft:I

    .line 114
    sget p3, Lcom/miui/support/cardview/R$styleable;->CardDrawable_paddingRight:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingRight:I

    .line 115
    sget p3, Lcom/miui/support/cardview/R$styleable;->CardDrawable_paddingTop:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingTop:I

    .line 116
    sget p3, Lcom/miui/support/cardview/R$styleable;->CardDrawable_paddingBottom:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingBottom:I

    .line 117
    sget p3, Lcom/miui/support/cardview/R$styleable;->CardDrawable_cardRadius:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardRadius:I

    .line 118
    sget p3, Lcom/miui/support/cardview/R$styleable;->CardDrawable_radiusMode:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/miui/support/drawable/CardStateDrawable;->mCardRadiusMode:I

    .line 119
    sget p2, Lcom/miui/support/cardview/R$styleable;->CardDrawable_supportOutline:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/support/drawable/CardDrawable;->mIsSupportOutline:Z

    .line 120
    iget-object p2, p0, Lcom/miui/support/drawable/CardDrawable;->mPadding:Landroid/graphics/Rect;

    iget p3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingLeft:I

    iget p4, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingTop:I

    iget v0, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingRight:I

    iget v1, p0, Lcom/miui/support/drawable/CardDrawable;->mCardPaddingBottom:I

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 121
    iget-object p2, p0, Lcom/miui/support/drawable/CardDrawable;->mPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/miui/support/drawable/CardDrawable;->mCardColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget p2, p0, Lcom/miui/support/drawable/CardDrawable;->mCardRadius:I

    iget p3, p0, Lcom/miui/support/drawable/CardStateDrawable;->mCardRadiusMode:I

    invoke-virtual {p0, p2, p3}, Lcom/miui/support/drawable/CardStateDrawable;->setRadiusMode(II)V

    .line 123
    invoke-direct {p0}, Lcom/miui/support/drawable/CardDrawable;->cacheCardDrawable()V

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
