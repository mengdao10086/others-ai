.class public Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;
.super Landroid/widget/FrameLayout;
.source "TabViewContainerView.java"


# instance fields
.field private mChildrenTotalWidth:I

.field private mDensityDpi:I

.field private mGapBetweenTabs:I

.field private mLayoutCenter:Z

.field private mLayoutMode:I

.field private final mOverSizeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmallSizeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaciousLessThanTwoItemMinWidth:I

.field private mSpaciousMoreThanFourItemMinWidth:I

.field private mSpaciousThreeItemMinWidth:I

.field private mVerticalPaddingBottom:I

.field private mVerticalPaddingTop:I


# direct methods
.method private isViewGone(Landroid/view/View;)Z
    .registers 3

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private measureByCompatMode(III)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 197
    iget-object v2, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 198
    iget-object v2, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_20

    .line 201
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setMinimumWidth(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 203
    :cond_20
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v1, v5, :cond_35

    add-int/lit8 v6, v1, -0x1

    .line 207
    iget v7, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    mul-int/2addr v6, v7

    goto :goto_36

    :cond_35
    move v6, v3

    .line 209
    :goto_36
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    sub-int v8, v7, v4

    sub-int/2addr v8, v6

    .line 212
    div-int v9, v8, v1

    .line 213
    rem-int v1, v8, v1

    move v10, v3

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_45
    const/high16 v14, 0x40000000    # 2.0f

    if-ge v10, v2, :cond_7e

    .line 217
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 218
    invoke-virtual {v15, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 219
    invoke-direct {v0, v15}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_79

    .line 220
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v11, v3

    if-le v3, v9, :cond_64

    .line 223
    iget-object v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v3

    goto :goto_6a

    .line 226
    :cond_64
    iget-object v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v3

    .line 231
    :goto_6a
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 230
    invoke-virtual {v15, v3, v5}, Landroid/view/View;->measure(II)V

    :cond_79
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_45

    .line 236
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingTop:I

    add-int/2addr v3, v5

    iget v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingBottom:I

    add-int/2addr v3, v5

    if-le v11, v8, :cond_90

    add-int/2addr v11, v6

    add-int/2addr v11, v4

    .line 238
    invoke-virtual {v0, v11, v3}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void

    .line 241
    :cond_90
    iget-object v4, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_bd

    const/4 v4, 0x0

    :goto_99
    if-ge v4, v2, :cond_f6

    .line 244
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 245
    invoke-direct {v0, v5}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_ba

    if-ge v4, v1, :cond_a9

    const/4 v6, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v6, 0x0

    :goto_aa
    add-int/2addr v6, v9

    .line 248
    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 249
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 247
    invoke-virtual {v5, v6, v8}, Landroid/view/View;->measure(II)V

    :cond_ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_99

    :cond_bd
    if-lez v12, :cond_f6

    .line 255
    iget-object v1, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v8, v13

    const/4 v2, 0x0

    :goto_c7
    if-ge v2, v1, :cond_f6

    .line 258
    iget-object v4, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 259
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v6, v12

    div-float/2addr v5, v6

    int-to-float v6, v8

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 260
    invoke-direct {v0, v4}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_f3

    .line 262
    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 263
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 261
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    :cond_f3
    add-int/lit8 v2, v2, 0x1

    goto :goto_c7

    .line 270
    :cond_f6
    invoke-virtual {v0, v7, v3}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method private measureByWideMode(III)Z
    .registers 14

    .line 153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p3, v2, :cond_13

    add-int/lit8 v3, p3, -0x1

    .line 156
    iget v4, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    mul-int/2addr v3, v4

    goto :goto_14

    :cond_13
    move v3, v1

    .line 158
    :goto_14
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int v0, v4, v0

    sub-int/2addr v0, v3

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_21
    if-ge v6, v5, :cond_47

    .line 164
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    if-gt p3, v8, :cond_32

    .line 166
    iget v8, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousLessThanTwoItemMinWidth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 167
    iget v7, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousLessThanTwoItemMinWidth:I

    goto :goto_44

    :cond_32
    const/4 v8, 0x3

    if-ne p3, v8, :cond_3d

    .line 169
    iget v8, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousThreeItemMinWidth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 170
    iget v7, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousThreeItemMinWidth:I

    goto :goto_44

    .line 172
    :cond_3d
    iget v8, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousMoreThanFourItemMinWidth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 173
    iget v7, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousMoreThanFourItemMinWidth:I

    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 176
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    move p1, v1

    move p2, p1

    :goto_4c
    if-ge p1, v5, :cond_71

    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 179
    invoke-direct {p0, p3}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 180
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr p2, v6

    const/high16 v8, 0x40000000    # 2.0f

    .line 184
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 183
    invoke-virtual {p3, v6, v8}, Landroid/view/View;->measure(II)V

    :cond_6e
    add-int/lit8 p1, p1, 0x1

    goto :goto_4c

    :cond_71
    add-int/2addr v3, p2

    .line 189
    iput v3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    .line 190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingTop:I

    add-int/2addr p1, p3

    iget p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingBottom:I

    add-int/2addr p1, p3

    .line 192
    invoke-virtual {p0, v4, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    sub-int/2addr v0, v7

    if-lt p2, v0, :cond_85

    move v1, v2

    :cond_85
    return v1
.end method

.method private measureByWrapMode(III)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p3, v1, :cond_9

    sub-int/2addr p3, v1

    .line 126
    iget v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    mul-int/2addr p3, v1

    goto :goto_a

    :cond_9
    move p3, v0

    .line 128
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move p2, v0

    :goto_12
    if-ge v0, p1, :cond_37

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 134
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr p2, v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 138
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 143
    :cond_37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingTop:I

    add-int/2addr p2, p3

    iget p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingBottom:I

    add-int/2addr p2, p3

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method private updateLayoutParams()V
    .registers 4

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view2_tab_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    .line 63
    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view2_vertical_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingTop:I

    .line 64
    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view2_vertical_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingBottom:I

    const/high16 v1, 0x435c0000    # 220.0f

    .line 65
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousLessThanTwoItemMinWidth:I

    const/high16 v1, 0x43340000    # 180.0f

    .line 66
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousThreeItemMinWidth:I

    const/high16 v1, 0x43160000    # 150.0f

    .line 67
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousMoreThanFourItemMinWidth:I

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 74
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mDensityDpi:I

    if-eq p1, v0, :cond_e

    .line 75
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mDensityDpi:I

    .line 76
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->updateLayoutParams()V

    :cond_e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    sub-int/2addr p4, p2

    .line 283
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 284
    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPaddingTop:I

    .line 285
    iget-boolean p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    if-eqz p3, :cond_16

    .line 286
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p3

    iget p5, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    goto :goto_1a

    .line 288
    :cond_16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p3

    :goto_1a
    const/4 p4, 0x0

    move v2, p3

    :goto_1c
    if-ge p4, p1, :cond_40

    .line 291
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 292
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_3d

    .line 293
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, v2

    .line 294
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int v5, p2, p5

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 295
    iget p5, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    add-int v2, p3, p5

    :cond_3d
    add-int/lit8 p4, p4, 0x1

    goto :goto_1c

    :cond_40
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    .line 83
    iput v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    .line 85
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_a
    if-ge v0, v1, :cond_1b

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    if-gtz v2, :cond_21

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 97
    :cond_21
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 98
    invoke-direct {p0, p1, p2, v2}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->measureByWrapMode(III)V

    return-void

    :cond_2a
    if-nez v0, :cond_2d

    goto :goto_36

    :cond_2d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 107
    invoke-direct {p0, p1, p2, v2}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->measureByWideMode(III)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 116
    :goto_36
    invoke-direct {p0, p1, p2, v2}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->measureByCompatMode(III)V

    goto :goto_3c

    .line 118
    :cond_3a
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    :goto_3c
    return-void

    .line 113
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected layout mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTabViewLayoutMode(I)V
    .registers 3

    .line 301
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    if-eq v0, p1, :cond_9

    .line 302
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    .line 303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_9
    return-void
.end method
