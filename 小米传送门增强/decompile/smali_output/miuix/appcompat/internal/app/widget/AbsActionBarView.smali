.class abstract Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    }
.end annotation


# instance fields
.field mActionBarTransitionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field protected mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

.field mBottomMenuMode:I

.field protected mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

.field protected mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

.field protected mCollapseTitleColorTransitEnable:Z

.field protected mEndActionMenuEnable:Z

.field mExpandState:I

.field mExpandStateBeforeResizing:I

.field mExpandStateOnLayout:I

.field protected mExpandTitleColorTransitEnable:Z

.field protected mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

.field protected mHyperActionMenuEnable:Z

.field protected mHyperSplitMenuEnabled:Z

.field mInnerExpandState:I

.field protected mIsInWideMode:Z

.field mLastProcess:F

.field protected mMaxActionMenuItemCount:I

.field protected mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field protected mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

.field protected mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

.field protected mPendingInset:Landroid/graphics/Rect;

.field private mResizable:Z

.field protected mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

.field protected mSplitActionBarEnable:Z

.field protected mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z

.field protected mSubtitlePaddingV:I

.field protected mTitleClickable:Z

.field protected mTitleMaxHeight:I

.field protected mTitleMinHeight:I

.field protected mTitlePaddingV:I

.field protected mUserExpandState:I

.field protected mUserSetExpandState:Z

.field protected mUserSubTitleClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 72
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 73
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 74
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 75
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 76
    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    const/4 v1, 0x2

    .line 81
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    const/high16 v2, -0x80000000

    .line 84
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMaxActionMenuItemCount:I

    .line 87
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    .line 89
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v2, 0x0

    .line 121
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 133
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    const/4 v2, -0x1

    .line 134
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_collapse_padding_vertical:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitlePaddingV:I

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_collapse_padding_vertical:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSubtitlePaddingV:I

    .line 138
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_f4

    const/4 v4, -0x2

    .line 139
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 140
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_fc

    .line 141
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 143
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_104

    .line 144
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 145
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_10c

    .line 146
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 148
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_114

    .line 149
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 150
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_11c

    .line 151
    invoke-virtual {v2, v4, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 153
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 155
    sget p2, Lmiuix/appcompat/R$styleable;->ActionBar_expandState:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 156
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_resizable:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 157
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_titleClickable:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 158
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isUserSetExpandState()Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 160
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 161
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_ef

    :cond_e4
    if-nez p2, :cond_eb

    .line 164
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 165
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_ef

    .line 167
    :cond_eb
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 168
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 171
    :goto_ef
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 172
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    return-void

    :array_f4
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_fc
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_104
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    :array_10c
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    :array_114
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_11c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private setTitleMaxHeight(I)V
    .registers 2

    .line 232
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 233
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private setTitleMinHeight(I)V
    .registers 2

    .line 227
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method bindActionBarTransitionListeners(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    return-void
.end method

.method getActionBarStyle()I
    .registers 2

    .line 0
    const v0, 0x10102ce

    return v0
.end method

.method public getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 248
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-object v0
.end method

.method public getAnimatedVisibility()I
    .registers 2

    .line 244
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    return v0
.end method

.method public abstract getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.end method

.method public getExpandState()I
    .registers 2

    .line 364
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    return v0
.end method

.method public abstract getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
.end method

.method public getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 346
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 3

    .line 283
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 287
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 291
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isResizable()Z
    .registers 2

    .line 399
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    return v0
.end method

.method public isUserSetExpandState()Z
    .registers 2

    .line 360
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .registers 6

    const/high16 v0, -0x80000000

    .line 302
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p4

    const/4 p1, 0x0

    .line 308
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .registers 3

    .line 0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 181
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v0, :cond_18

    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 185
    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_1f

    .line 186
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1f
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .registers 3

    .line 0
    return-void
.end method

.method protected positionChild(Landroid/view/View;III)I
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 312
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result p1

    return p1
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .registers 14

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 318
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-nez p5, :cond_13

    .line 320
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    :cond_13
    move v5, p3

    add-int v6, p2, v0

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 322
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return v0
.end method

.method protected positionChildInverse(Landroid/view/View;III)I
    .registers 12

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 340
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    sub-int/2addr v0, p4

    div-int/lit8 v4, v0, 0x2

    sub-int v3, p2, p3

    add-int v6, v4, p4

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    .line 341
    invoke-static/range {v1 .. v6}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return p3
.end method

.method protected positionChildWithOffset(Landroid/view/View;IIIZI)I
    .registers 15

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 329
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-nez p5, :cond_13

    .line 331
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    :cond_13
    move v5, p3

    add-int v4, p2, p6

    add-int/2addr p2, v0

    add-int v6, p2, p6

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    .line 333
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    add-int/2addr v0, p6

    return v0
.end method

.method public postShowOverflowMenu()V
    .registers 2

    .line 279
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract refreshBottomMenu()V
.end method

.method protected setActionMenuItemLimit(I)V
    .registers 4

    .line 587
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMaxActionMenuItemCount:I

    .line 588
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    if-nez v1, :cond_d

    .line 589
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    :cond_d
    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 2

    .line 428
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    return-void
.end method

.method public setExpandState(I)V
    .registers 3

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, p1, v0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public setExpandState(IZZ)V
    .registers 5

    .line 372
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    if-nez v0, :cond_6

    if-eqz p3, :cond_2e

    :cond_6
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eq p3, p1, :cond_2e

    if-eqz p2, :cond_10

    .line 376
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onAnimatedExpandStateChanged(II)V

    goto :goto_2e

    :cond_10
    const/4 p2, 0x2

    if-ne p1, p2, :cond_17

    .line 379
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 381
    :cond_17
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez p1, :cond_1f

    const/4 p2, 0x0

    .line 383
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_24

    :cond_1f
    const/4 p2, 0x1

    if-ne p1, p2, :cond_24

    .line 385
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 387
    :cond_24
    :goto_24
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onExpandStateChanged(II)V

    .line 388
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 389
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method protected setExpandStateByUser(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 352
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    goto :goto_e

    :cond_9
    const/4 p1, 0x0

    .line 354
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 355
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    :goto_e
    return-void
.end method

.method public setPendingInset(Landroid/graphics/Rect;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 435
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    if-eqz v0, :cond_11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 437
    :goto_14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    if-nez v1, :cond_1f

    .line 438
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 440
    :cond_1f
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_29

    .line 442
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->refreshBottomMenu()V

    :cond_29
    return-void
.end method

.method public setResizable(Z)V
    .registers 2

    .line 395
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 2

    .line 214
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    return-void
.end method

.method public setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .registers 2

    .line 223
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    return-void
.end method

.method public setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTitleClickable(Z)V
    .registers 2

    .line 201
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 269
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_9

    .line 270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 275
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
