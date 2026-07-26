.class public Lmiuix/view/DensityChangedHelper;
.super Ljava/lang/Object;
.source "DensityChangedHelper.java"


# direct methods
.method public static updateTextSizeDefaultUnit(Landroid/widget/TextView;F)V
    .registers 4

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_e

    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSizeUnit()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_12

    :cond_e
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_12
    return-void
.end method

.method public static updateTextSizeSpUnit(Landroid/widget/TextView;F)V
    .registers 3

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static updateViewMargin(Landroid/view/View;F)V
    .registers 4

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_29

    .line 112
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 114
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 115
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 116
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_29
    return-void
.end method

.method public static updateViewPadding(Landroid/view/View;F)V
    .registers 6

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int p1, v3

    .line 86
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static updateViewSize(Landroid/view/View;F)V
    .registers 6

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 96
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    if-lez v1, :cond_10

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 97
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v1, v2

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 100
    :goto_11
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1b

    int-to-float v1, v3

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 101
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1c

    :cond_1b
    move v2, v1

    :goto_1c
    if-eqz v2, :cond_21

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21
    return-void
.end method
