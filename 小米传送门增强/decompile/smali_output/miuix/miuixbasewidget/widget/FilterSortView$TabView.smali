.class public Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;,
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;
    }
.end annotation


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mArrowIcon:Landroid/graphics/drawable/Drawable;

.field private mDescending:Z

.field private mDescendingEnabled:Z

.field private mFiltered:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mIndicatorVisibility:I

.field private mSelectedTextAppearanceId:I

.field private mTextAppearanceId:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$shXBe2vVndEFyEYzvzz0ARNSJEs(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 549
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 551
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getTabLayoutResource()I

    move-result v1

    .line 552
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x1020014

    .line 553
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 554
    sget v2, Lmiuix/miuixbasewidget/R$id;->arrow:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 555
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 556
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 558
    sget v2, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view:I

    if-ne v1, v2, :cond_78

    .line 559
    sget-object v1, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView:[I

    sget v2, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortTabView_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 560
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 561
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_descending:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 562
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_indicatorVisibility:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    .line 563
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_arrowFilterSortTabView:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 564
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_filterSortTabViewTextColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 565
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_filterSortTabViewTabTextAppearance:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextAppearanceId:I

    .line 566
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_filterSortTabViewTabActivatedTextAppearance:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mSelectedTextAppearanceId:I

    .line 567
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 569
    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    .line 571
    :cond_78
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8d

    .line 573
    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 575
    :cond_8d
    new-instance p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;
    .registers 1

    .line 516
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .registers 1

    .line 516
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    return p0
.end method

.method static synthetic access$1100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .registers 2

    .line 516
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    return-void
.end method

.method static synthetic access$1200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/util/HapticFeedbackCompat;
    .registers 1

    .line 516
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .registers 2

    .line 516
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    return-void
.end method

.method static synthetic access$800(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .registers 1

    .line 516
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    return p0
.end method

.method static synthetic access$900(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .registers 1

    .line 516
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return p0
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 779
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_f

    .line 780
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 782
    :cond_f
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object v0
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method private parseBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 717
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_filter_sort_tab_view_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setDescending(Z)V
    .registers 3

    .line 727
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    if-eqz p1, :cond_b

    .line 729
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_12

    .line 731
    :cond_b
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationX(F)V

    :goto_12
    return-void
.end method

.method private setFiltered(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 678
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(ZZ)V

    return-void
.end method

.method private setFiltered(ZZ)V
    .registers 8

    .line 682
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lmiuix/miuixbasewidget/widget/FilterSortView;

    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 684
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_28

    .line 686
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 687
    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v4, :cond_25

    .line 688
    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eq v3, p0, :cond_25

    .line 689
    iget-boolean v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz v4, :cond_25

    .line 690
    invoke-direct {v3, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 696
    :cond_28
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 697
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->updateTextAppearance(Z)V

    .line 698
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 699
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 700
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method private updateTextAppearance(Z)V
    .registers 3

    .line 707
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_c

    .line 709
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mSelectedTextAppearanceId:I

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    goto :goto_11

    .line 711
    :cond_c
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextAppearanceId:I

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .registers 2

    .line 753
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDescendingEnabled()Z
    .registers 2

    .line 745
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .registers 2

    .line 608
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTabLayoutResource()I
    .registers 2

    .line 596
    sget v0, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 600
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected initView(Ljava/lang/CharSequence;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 624
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->updateTextAppearance(Z)V

    const/16 v0, 0x11

    .line 625
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 626
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_16

    .line 627
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->parseBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 630
    :cond_16
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 631
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_26

    .line 632
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 634
    :cond_26
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    .line 637
    new-instance p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setDescendingEnabled(Z)V
    .registers 2

    .line 749
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 801
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 802
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .registers 3

    .line 669
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 758
    new-instance v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;

    invoke-direct {v0, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 2

    .line 604
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    return-void
.end method
