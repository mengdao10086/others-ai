.class public abstract Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;,
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;
    }
.end annotation


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mIsScrolledX:Z

.field mMaxTabWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabIndicatorBitmap:Landroid/graphics/Bitmap;

.field private mTabIndicatorPosition:F

.field protected mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTextStyleMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchInitX:F

.field private final mTouchSlop:I


# virtual methods
.method public animateToTab(I)V
    .registers 3

    .line 375
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 376
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 378
    :cond_7
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;-><init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 379
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 177
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    .line 179
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1a
    return-void
.end method

.method abstract getDefaultTabTextStyle()I
.end method

.method abstract getTabBarLayoutRes()I
.end method

.method abstract getTabContainerHeight()I
.end method

.method public getTabIndicatorPosition()F
    .registers 2

    .line 247
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    return v0
.end method

.method getTabTextStyleId(Landroid/widget/TextView;)I
    .registers 3

    if-eqz p1, :cond_19

    .line 140
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_19

    .line 141
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 145
    :cond_19
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getDefaultTabTextStyle()I

    move-result v0

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method abstract getTabViewLayoutRes()I
.end method

.method abstract getTabViewMarginHorizontal()I
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 384
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 385
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 387
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 361
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 364
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabContainerHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 365
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 393
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 394
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 395
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTouchInitX:F

    .line 427
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    goto :goto_3f

    .line 428
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_30

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTouchInitX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 430
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    goto :goto_3f

    .line 431
    :cond_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_3d

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3f

    .line 433
    :cond_3d
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    .line 435
    :cond_3f
    :goto_3f
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    if-eqz v0, :cond_51

    .line 436
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 437
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 438
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1

    :cond_51
    return v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 549
    check-cast p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 550
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->select()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 186
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 188
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 190
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    .line 191
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->scrollToTab(I)V

    :cond_17
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    .line 199
    :goto_c
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 201
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_44

    if-eq v0, v2, :cond_1d

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_44

    :cond_1d
    const/4 v0, 0x2

    if-le v4, v0, :cond_2d

    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_39

    .line 207
    :cond_2d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 209
    :goto_39
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_47

    :cond_44
    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 214
    :goto_47
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_50

    .line 215
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 233
    :cond_50
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 234
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 235
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_64

    if-eq v0, p1, :cond_64

    .line 239
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_64
    return-void
.end method

.method public scrollToTab(I)V
    .registers 4

    .line 369
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 p1, 0x0

    .line 371
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    .line 286
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 3

    .line 344
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    if-eq v0, p1, :cond_9

    .line 345
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 346
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setEmbeded(Z)V
    .registers 2

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    return-void
.end method

.method public setTabIndicatorPosition(I)V
    .registers 3

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    return-void
.end method

.method public setTabIndicatorPosition(IF)V
    .registers 6

    .line 265
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    .line 266
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_27

    .line 269
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 270
    :goto_27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    .line 272
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_41
    return-void
.end method

.method public setTabSelected(I)V
    .registers 3

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(IZ)V

    return-void
.end method

.method public setTabSelected(IZ)V
    .registers 8

    .line 327
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 328
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_28

    .line 330
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    move v4, v1

    .line 332
    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_25

    if-eqz p2, :cond_22

    .line 335
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_25

    .line 337
    :cond_22
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->scrollToTab(I)V

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_28
    return-void
.end method
