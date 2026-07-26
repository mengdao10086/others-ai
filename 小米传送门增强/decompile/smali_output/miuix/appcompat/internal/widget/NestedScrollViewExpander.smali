.class public Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;
.super Landroid/view/ViewGroup;
.source "NestedScrollViewExpander.java"


# instance fields
.field private mExpandView:Landroid/view/View;

.field private mParentHeightMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 32
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    .line 110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p5, 0x0

    :goto_5
    if-ge p5, p1, :cond_38

    .line 112
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    .line 116
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 117
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, p3

    add-int/2addr v2, v4

    add-int v6, v5, v3

    .line 118
    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/view/View;->layout(IIII)V

    .line 119
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v0

    add-int/2addr p3, v3

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v0

    add-int/lit8 p5, p5, 0x1

    goto :goto_5

    :cond_38
    return-void
.end method

.method protected onMeasure(II)V
    .registers 22

    move-object/from16 v6, p0

    .line 51
    iget v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_c

    const/high16 v0, -0x80000000

    :cond_c
    move v7, v0

    .line 56
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1a
    const/16 v0, 0x8

    if-ge v11, v9, :cond_78

    .line 66
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_29

    goto :goto_75

    .line 70
    :cond_29
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    const/16 v16, 0x1

    if-eq v0, v5, :cond_69

    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p1

    move-object v10, v4

    move/from16 v4, p2

    move-object/from16 v18, v5

    move/from16 v5, v17

    .line 72
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 73
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 74
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/appcompat/R$id;->contentView:I

    if-ne v0, v1, :cond_6b

    .line 76
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v15, v0, v1

    move/from16 v13, v16

    goto :goto_6b

    :cond_69
    move-object/from16 v18, v5

    .line 80
    :cond_6b
    :goto_6b
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/appcompat/R$id;->buttonPanel:I

    if-ne v0, v1, :cond_75

    move/from16 v14, v16

    :cond_75
    :goto_75
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 84
    :cond_78
    iget v1, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int v2, v1, v12

    .line 88
    iget-object v3, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    if-eqz v3, :cond_d2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_d2

    .line 89
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    if-ge v2, v0, :cond_98

    .line 91
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    .line 93
    :cond_98
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_b5

    if-nez v14, :cond_b5

    if-lt v15, v1, :cond_b5

    .line 97
    iget-object v1, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_c4

    .line 99
    :cond_b5
    iget-object v1, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 100
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 102
    :goto_c4
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v10, v0, v1

    goto :goto_d3

    :cond_d2
    const/4 v10, 0x0

    :goto_d3
    add-int/2addr v10, v12

    .line 104
    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setExpandView(Landroid/view/View;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    return-void
.end method

.method setParentHeightMeasureSpec(I)V
    .registers 2

    .line 39
    iput p1, p0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    return-void
.end method
