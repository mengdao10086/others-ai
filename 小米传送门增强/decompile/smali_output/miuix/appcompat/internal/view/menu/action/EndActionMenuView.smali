.class public Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "EndActionMenuView.java"


# instance fields
.field private mActionCount:I

.field private mContext:Landroid/content/Context;

.field private mMaxActionButtonWidth:I

.field private mMenuItemGap:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mStartPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    .line 25
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 26
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 28
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    const/4 p2, 0x0

    .line 36
    invoke-super {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_end_menu_button_gap:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_view_padding_horizontal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    return-void
.end method

.method private getActionMenuItemCount()I
    .registers 2

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public filterLeftoverView(I)Z
    .registers 4

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_1f

    .line 55
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_17

    .line 56
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_1f

    .line 58
    :cond_17
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method public generateOverflowButtonLayoutParams(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p1
.end method

.method public getCollapsedHeight()I
    .registers 2

    .line 63
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    return v0
.end method

.method public bridge synthetic getCurrentMaterial()Lmiuix/core/util/MaterialConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getCurrentMaterial()Lmiuix/core/util/MaterialConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaterial()Lmiuix/core/util/MaterialDayNightConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getMaterial()Lmiuix/core/util/MaterialDayNightConfig;

    move-result-object v0

    return-object v0
.end method

.method public hasBackgroundView()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    sub-int/2addr p5, p3

    .line 131
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    .line 132
    iget p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p1, :cond_2d

    .line 135
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 136
    invoke-direct {p0, p4}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 137
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, p2, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    move v2, p2

    move v5, p5

    .line 138
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 139
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    add-int/2addr p4, v0

    add-int/2addr p2, p4

    :cond_2a
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_2d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19

    move-object/from16 v6, p0

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 84
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->getActionMenuItemCount()I

    move-result v0

    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    const/4 v8, 0x0

    if-eqz v7, :cond_6f

    if-nez v0, :cond_12

    goto :goto_6f

    .line 91
    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 92
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    div-int v0, v9, v0

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/high16 v0, -0x80000000

    .line 94
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v12, v8

    move v13, v12

    move v14, v13

    :goto_29
    if-ge v12, v7, :cond_55

    .line 97
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 98
    invoke-direct {v6, v15}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_52

    :cond_36
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v11

    move/from16 v4, p2

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 102
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v13, v0

    .line 104
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_52
    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    .line 107
    :cond_55
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    .line 108
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    add-int v2, v1, v13

    add-int/2addr v2, v0

    if-le v2, v9, :cond_65

    .line 109
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    :cond_65
    add-int/2addr v13, v0

    add-int/2addr v13, v1

    .line 114
    iput v13, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemWidth:I

    .line 115
    iput v14, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    .line 117
    invoke-virtual {v6, v13, v14}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void

    .line 86
    :cond_6f
    :goto_6f
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    .line 87
    invoke-virtual {v6, v8, v8}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 147
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnableBlur(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic setMaterial(Lmiuix/core/util/MaterialConfig;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lmiuix/view/HyperMaterialWidget;->setMaterial(Lmiuix/core/util/MaterialConfig;)V

    return-void
.end method

.method public bridge synthetic setMaterial(Lmiuix/core/util/MaterialDayNightConfig;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lmiuix/view/HyperMaterialWidget;->setMaterial(Lmiuix/core/util/MaterialDayNightConfig;)V

    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 2

    .line 0
    return-void
.end method
