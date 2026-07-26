.class public Lmiuix/internal/widget/AlertActionSheetPanel;
.super Landroid/widget/LinearLayout;
.source "AlertActionSheetPanel.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFreePhoneCompatHeight:I

.field private mFreeTabletCompatHeight:I

.field private mMaxHeight:I

.field private mNormalMargin:I

.field private final mScreenSize:Landroid/graphics/Point;

.field private mSeparateItemMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/widget/AlertActionSheetPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mScreenSize:Landroid/graphics/Point;

    .line 42
    iput-object p1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lmiuix/internal/widget/AlertActionSheetPanel;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAvailableMaxHeightInFreeForm()I
    .registers 4

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_19

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_19

    .line 65
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 66
    iget v1, v0, Landroid/graphics/Insets;->top:I

    .line 67
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    move v0, v1

    :goto_1b
    if-nez v1, :cond_29

    .line 71
    sget-boolean v1, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_24

    iget v1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mFreeTabletCompatHeight:I

    goto :goto_26

    :cond_24
    iget v1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mFreePhoneCompatHeight:I

    .line 72
    :goto_26
    iget v2, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mNormalMargin:I

    add-int/2addr v1, v2

    :cond_29
    if-nez v0, :cond_37

    .line 75
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_32

    iget v0, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mFreeTabletCompatHeight:I

    goto :goto_34

    :cond_32
    iget v0, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mFreePhoneCompatHeight:I

    .line 76
    :goto_34
    iget v2, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mNormalMargin:I

    add-int/2addr v0, v2

    .line 78
    :cond_37
    iget-object v2, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    sub-int/2addr v2, v1

    return v2
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_content_separate_item_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mSeparateItemMarginTop:I

    .line 48
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mScreenSize:Landroid/graphics/Point;

    invoke-static {p1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mFreePhoneCompatHeight:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_tablet_t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mFreeTabletCompatHeight:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mNormalMargin:I

    .line 52
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mScreenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mMaxHeight:I

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 128
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mScreenSize:Landroid/graphics/Point;

    invoke-static {p1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 130
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mScreenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mMaxHeight:I

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 83
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 84
    sget-boolean v1, Lmiuix/os/Build;->IS_FLIP:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    .line 85
    :goto_15
    iget-object v4, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mScreenSize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v5, v4, :cond_1f

    move v4, v2

    goto :goto_20

    :cond_1f
    move v4, v3

    .line 86
    :goto_20
    iget-object v6, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mContext:Landroid/content/Context;

    int-to-float v5, v5

    invoke-static {v6, v5}, Lmiuix/core/util/MiuixUIUtils;->px2dp(Landroid/content/Context;F)I

    move-result v5

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_2d

    move v5, v2

    goto :goto_2e

    :cond_2d
    move v5, v3

    .line 87
    :goto_2e
    iget-object v6, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result v6

    const/high16 v7, -0x80000000

    if-eqz v6, :cond_41

    .line 90
    invoke-direct {p0}, Lmiuix/internal/widget/AlertActionSheetPanel;->getAvailableMaxHeightInFreeForm()I

    move-result p2

    .line 91
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_4f

    :cond_41
    if-nez v1, :cond_4f

    if-nez v4, :cond_47

    if-eqz v5, :cond_4f

    .line 92
    :cond_47
    iget v1, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mMaxHeight:I

    if-le v0, v1, :cond_4f

    .line 94
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 96
    :cond_4f
    :goto_4f
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 97
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6a

    .line 101
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_6c

    :cond_6a
    const/4 v1, 0x0

    move-object v2, v1

    .line 105
    :goto_6c
    iget v4, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mSeparateItemMarginTop:I

    if-eqz v2, :cond_79

    .line 107
    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 108
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_7a

    :cond_79
    move v2, v3

    :goto_7a
    if-eqz v1, :cond_83

    .line 113
    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 114
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    :cond_83
    add-int/2addr v3, v2

    .line 116
    iget p2, p0, Lmiuix/internal/widget/AlertActionSheetPanel;->mSeparateItemMarginTop:I

    add-int/2addr v3, p2

    if-le v3, v0, :cond_a2

    if-eqz v1, :cond_a2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 119
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 120
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 121
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v4, p1

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_a2
    return-void
.end method
