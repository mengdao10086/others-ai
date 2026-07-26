.class Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mHorizontalPadding:I

.field private mIconView:Landroid/widget/ImageView;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3357
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_view_padding_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mHorizontalPadding:I

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 3390
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3391
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3392
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method public getStartOffset()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 3381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3382
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz p1, :cond_a

    .line 3384
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    :cond_a
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3399
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 3400
    sget v2, Lmiuix/appcompat/R$id;->up:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 3401
    sget v2, Lmiuix/appcompat/R$id;->home:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 3402
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz v2, :cond_51

    .line 3403
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 3404
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    new-array v3, v0, [Landroid/view/View;

    aput-object v2, v3, v1

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-interface {v2, v3}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 3405
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    new-array v0, v0, [Landroid/view/View;

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    sub-int/2addr p5, p3

    .line 3460
    div-int/lit8 p5, p5, 0x2

    .line 3461
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 3463
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3f

    .line 3464
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3465
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 3466
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 3467
    div-int/lit8 v2, v0, 0x2

    sub-int v5, p5, v2

    .line 3468
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    add-int v7, v5, v0

    move-object v2, p0

    move v6, v1

    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 3469
    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    if-eqz p1, :cond_3d

    sub-int/2addr p4, v0

    goto :goto_40

    :cond_3d
    add-int/2addr p2, v0

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    .line 3476
    :goto_40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3477
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    .line 3478
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p4, p2

    .line 3479
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mHorizontalPadding:I

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    .line 3480
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p2

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p4, v2

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int v4, v0, p2

    .line 3481
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 p2, p3, 0x2

    sub-int/2addr p5, p2

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3482
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    add-int v6, v4, v1

    add-int v7, v5, p3

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    .line 3415
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3416
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3417
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 3418
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_29

    move v1, v3

    .line 3419
    :cond_29
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    .line 3420
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v8, v1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3421
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3422
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 3423
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v5

    :goto_5d
    add-int/2addr v1, v3

    if-lez v1, :cond_63

    .line 3424
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mHorizontalPadding:I

    add-int/2addr v1, v3

    .line 3425
    :cond_63
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 3426
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    .line 3425
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 3429
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3430
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3431
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_8e

    if-eq v2, v4, :cond_8c

    goto :goto_92

    :cond_8c
    move v1, p1

    goto :goto_92

    .line 3435
    :cond_8e
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_92
    if-eq v3, v5, :cond_99

    if-eq v3, v4, :cond_97

    goto :goto_9d

    :cond_97
    move v0, p2

    goto :goto_9d

    .line 3446
    :cond_99
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3455
    :goto_9d
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 3366
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUp(Z)V
    .registers 3

    .line 3362
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setUpIndicator(I)V
    .registers 4

    .line 3375
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 3376
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 3370
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    :goto_7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 3371
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    return-void
.end method
