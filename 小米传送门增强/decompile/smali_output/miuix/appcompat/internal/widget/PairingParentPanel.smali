.class public Lmiuix/appcompat/internal/widget/PairingParentPanel;
.super Landroid/widget/FrameLayout;
.source "PairingParentPanel.java"


# instance fields
.field private mClosableIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field private mClosableIconPositionHorizontal:I

.field private mClosableIconPositionTop:I

.field private mContext:Landroid/content/Context;

.field private mCustomViewVerticalCenterEnabled:Z

.field private mIsButtonPanelVisible:Z

.field private mIsDebugEnabled:Z

.field private mIsFeedbackVisible:Z

.field private mPairingScrollView:Lmiuix/core/widget/NestedScrollView;

.field private mScrollExpectedHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/PairingParentPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsDebugEnabled:Z

    const/4 p3, 0x1

    .line 30
    iput-boolean p3, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mCustomViewVerticalCenterEnabled:Z

    .line 31
    iput-boolean p3, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsButtonPanelVisible:Z

    .line 32
    iput-boolean p2, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsFeedbackVisible:Z

    .line 33
    iput p2, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mScrollExpectedHeight:I

    .line 45
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/widget/PairingParentPanel;->init(Landroid/content/Context;)V

    return-void
.end method

.method private applyCustomViewLayoutVerticalCenterIfNeeded()V
    .registers 6

    .line 146
    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mCustomViewVerticalCenterEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 149
    :cond_5
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/PairingParentPanel;->getScrollableAvailableHeight()I

    move-result v0

    .line 150
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mPairingScrollView:Lmiuix/core/widget/NestedScrollView;

    if-eqz v1, :cond_13

    .line 151
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mScrollExpectedHeight:I

    .line 153
    :cond_13
    iget-boolean v1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsDebugEnabled:Z

    const-string v2, "PairingParentPanel"

    if-eqz v1, :cond_39

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure: ==> height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scrollableAvailableHeight = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    if-lez v0, :cond_93

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v0, :cond_93

    .line 161
    iget-boolean v1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsButtonPanelVisible:Z

    if-nez v1, :cond_4c

    iget-boolean v1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsFeedbackVisible:Z

    if-eqz v1, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v1, 0x0

    goto :goto_50

    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    :goto_50
    sub-int v1, v0, v1

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 163
    iput v1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mScrollExpectedHeight:I

    .line 164
    iget-boolean v3, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsDebugEnabled:Z

    if-eqz v3, :cond_93

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure: reMeasure pairingParentPanel height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollViewExpectedHeight = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paddingBottom = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paddingTop = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    return-void
.end method

.method private getScrollableAvailableHeight()I
    .registers 9

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 94
    :goto_11
    instance-of v2, v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v2, :cond_1c

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    .line 100
    :goto_1d
    instance-of v2, v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpandContainer;

    if-eqz v2, :cond_28

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_28
    if-eqz v1, :cond_b8

    .line 104
    sget v0, Lmiuix/appcompat/R$id;->pairingCheckboxContainer:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 106
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_40

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    goto :goto_41

    :cond_40
    move v0, v2

    .line 109
    :goto_41
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 110
    sget v4, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    const/4 v5, 0x1

    if-eqz v4, :cond_5d

    .line 112
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5d

    .line 113
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    .line 114
    iput-boolean v5, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsButtonPanelVisible:Z

    goto :goto_60

    .line 116
    :cond_5d
    iput-boolean v2, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsButtonPanelVisible:Z

    move v4, v2

    .line 118
    :goto_60
    sget v6, Lmiuix/appcompat/R$id;->pairingDialogFeedback:I

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_77

    .line 120
    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_77

    .line 121
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 122
    iput-boolean v5, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsFeedbackVisible:Z

    goto :goto_79

    .line 124
    :cond_77
    iput-boolean v2, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsFeedbackVisible:Z

    .line 126
    :goto_79
    iget-boolean v5, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsDebugEnabled:Z

    if-eqz v5, :cond_af

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScrollableAvailableHeight: dialogParentPanel.height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", dialogParentPanelPaddingBottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", buttonPanelHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", feedbackViewHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    const-string v6, "PairingParentPanel"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_af
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    return v1

    :cond_b8
    const/4 v0, -0x1

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_pairing_dialog_icon_position_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIconPositionTop:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_pairing_dialog_icon_position_margin_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIconPositionHorizontal:I

    .line 56
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/PairingParentPanel;->isDebugEnabled()Z

    return-void
.end method

.method private isDebugEnabled()Z
    .registers 5

    .line 64
    const-string v0, "PairingParentPanel"

    const-string v1, ""

    .line 66
    :try_start_4
    const-string v2, "log.tag.alertdialog.ime.debug.enable"

    invoke-static {v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_f

    if-nez v2, :cond_d

    goto :goto_15

    :cond_d
    move-object v1, v2

    goto :goto_15

    :catch_f
    move-exception v2

    .line 69
    const-string v3, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dialog ime debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mIsDebugEnabled:Z

    return v0
.end method

.method private layoutClosableIcon()V
    .registers 6

    .line 180
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIcon:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_5

    return-void

    .line 183
    :cond_5
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 184
    iget v1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIconPositionTop:I

    if-eqz v0, :cond_10

    .line 187
    iget v0, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIconPositionHorizontal:I

    goto :goto_1e

    .line 189
    :cond_10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIconPositionHorizontal:I

    sub-int/2addr v0, v2

    .line 191
    :goto_1e
    iget-object v2, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public getScrollExpectedHeight()I
    .registers 2

    .line 60
    iget v0, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mScrollExpectedHeight:I

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 80
    sget v0, Lmiuix/appcompat/R$id;->pairingClosable:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mClosableIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 81
    sget v0, Lmiuix/appcompat/R$id;->pairingScrollView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/core/widget/NestedScrollView;

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mPairingScrollView:Lmiuix/core/widget/NestedScrollView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 175
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 176
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/PairingParentPanel;->layoutClosableIcon()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 142
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/PairingParentPanel;->applyCustomViewLayoutVerticalCenterIfNeeded()V

    return-void
.end method

.method public setCustomViewVerticalCenterEnabled(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/PairingParentPanel;->mCustomViewVerticalCenterEnabled:Z

    return-void
.end method
