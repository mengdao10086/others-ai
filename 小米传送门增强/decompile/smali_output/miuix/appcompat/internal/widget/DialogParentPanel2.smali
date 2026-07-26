.class public Lmiuix/appcompat/internal/widget/DialogParentPanel2;
.super Landroid/widget/LinearLayout;
.source "DialogParentPanel2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;,
        Lmiuix/appcompat/internal/widget/DialogParentPanel2$ConfigurationChangedCallback;
    }
.end annotation


# instance fields
.field private final mClipPath:Landroid/graphics/Path;

.field private mDensityDpi:I

.field private final mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

.field private final mLayer:Landroid/graphics/RectF;

.field private mPanelFixedHeight:I

.field private mPanelFixedWidth:I

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mLayer:Landroid/graphics/RectF;

    .line 40
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mClipPath:Landroid/graphics/Path;

    const/4 p3, -0x1

    .line 43
    iput p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mPanelFixedHeight:I

    .line 44
    iput p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mPanelFixedWidth:I

    const/4 p3, 0x1

    .line 57
    invoke-direct {p0, p3}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setSmoothCornerEnable(Z)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 59
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_bg_corner_radius:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setCornerRadius(F)V

    .line 60
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mDensityDpi:I

    .line 61
    new-instance p3, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-direct {p3, p1, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 62
    new-instance p1, Lmiuix/appcompat/app/strategy/PanelMeasureRuleImpl;

    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/PanelMeasureRuleImpl;-><init>()V

    # setter for: Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMeasureRule:Lmiuix/appcompat/app/strategy/IPanelMeasureRule;
    invoke-static {p3, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->access$002(Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;Lmiuix/appcompat/app/strategy/IPanelMeasureRule;)Lmiuix/appcompat/app/strategy/IPanelMeasureRule;

    return-void
.end method

.method private clipRoundRect(Landroid/graphics/Canvas;)V
    .registers 6

    .line 160
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mLayer:Landroid/graphics/RectF;

    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 162
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private refresh()V
    .registers 1

    .line 140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidateOutline()V

    .line 141
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private setSmoothCornerEnable(Z)V
    .registers 2

    .line 150
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 189
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 126
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->clipRoundRect(Landroid/graphics/Canvas;)V

    .line 127
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getPanelMaxLimitHeight()I
    .registers 2

    .line 82
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    # getter for: Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mPanelMaxLimitHeight:I
    invoke-static {v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->access$100(Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;)I

    move-result v0

    return v0
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .line 178
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getScreenHeightDp()I

    move-result v0

    .line 180
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->flushWindowSizeIfNeed(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 87
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 89
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mDensityDpi:I

    if-eq p1, v0, :cond_18

    .line 90
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mDensityDpi:I

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_bg_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setCornerRadius(F)V

    .line 93
    :cond_18
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 99
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    .line 103
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mPanelFixedWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_e

    .line 104
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_14

    .line 106
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getWidthMeasureSpecForDialog(I)I

    move-result p1

    .line 109
    :goto_14
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mPanelFixedHeight:I

    if-lez v0, :cond_1d

    .line 110
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_23

    .line 112
    :cond_1d
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getHeightMeasureSpecForDialog(I)I

    move-result p2

    .line 114
    :goto_23
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 120
    iget-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setConfigurationChangedCallback(Lmiuix/appcompat/internal/widget/DialogParentPanel2$ConfigurationChangedCallback;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    move p1, v0

    .line 135
    :cond_6
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mRadius:F

    .line 136
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->refresh()V

    return-void
.end method

.method public setIsDebugEnabled(Z)V
    .registers 3

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    # setter for: Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsDebugEnabled:Z
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->access$202(Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;Z)Z

    return-void
.end method

.method public setIsInTinyScreen(Z)V
    .registers 3

    .line 166
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->setIsInTinyScreen(Z)V

    :cond_7
    return-void
.end method

.method public setPanelFixedHeight(I)V
    .registers 2

    .line 74
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mPanelFixedHeight:I

    return-void
.end method

.method public setPanelFixedWidth(I)V
    .registers 2

    .line 78
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mPanelFixedWidth:I

    return-void
.end method

.method public setPanelMaxLimitHeight(I)V
    .registers 3

    .line 66
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    # setter for: Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mPanelMaxLimitHeight:I
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->access$102(Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;I)I

    return-void
.end method
