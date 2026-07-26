.class public Lmiuix/appcompat/internal/view/OutDropShadowView;
.super Landroid/view/View;
.source "OutDropShadowView.java"


# instance fields
.field private mClipOutPath:Landroid/graphics/Path;

.field private mDensityDpi:F

.field private mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

.field private mHostViewRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 24
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 29
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->init()V

    return-void
.end method

.method private init()V
    .registers 7

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDensityDpi:F

    .line 49
    new-instance v0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-direct {v0, v1}, Lmiuix/graphics/shadow/DropShadowConfig$Builder;-><init>(F)V

    const/4 v1, 0x6

    .line 50
    invoke-virtual {v0, v1}, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->setOffsetYDp(I)Lmiuix/graphics/shadow/DropShadowConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->create()Lmiuix/graphics/shadow/DropShadowConfig;

    move-result-object v0

    .line 51
    new-instance v1, Lmiuix/graphics/shadow/DropShadowLayerHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lmiuix/graphics/shadow/DropShadowLayerHelper;-><init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    const/4 v0, 0x0

    .line 52
    invoke-virtual {v1, v0}, Lmiuix/graphics/shadow/DropShadowHelper;->setEnableMiShadow(Z)V

    .line 53
    iget-object v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowRect(IIII)V

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x4

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    if-eqz v0, :cond_14

    .line 80
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 82
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    iget v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lmiuix/graphics/shadow/DropShadowHelper;->drawShadow(Landroid/graphics/Canvas;F)V

    .line 84
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 60
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lmiuix/graphics/shadow/DropShadowHelper;->enableViewShadow(Landroid/view/View;ZI)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 100
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    .line 101
    iget v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDensityDpi:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    .line 102
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    if-eqz v0, :cond_1b

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lmiuix/graphics/shadow/DropShadowHelper;->onConfigChanged(Landroid/view/View;Landroid/content/res/Configuration;Z)V

    :cond_1b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 90
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 91
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    if-eqz p1, :cond_20

    .line 92
    invoke-virtual {p1, p2, p3, p4, p5}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowRect(IIII)V

    .line 93
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 94
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    iget-object p2, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    invoke-virtual {p2}, Lmiuix/graphics/shadow/DropShadowHelper;->getShadowRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p3, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    int-to-float p4, p3

    int-to-float p3, p3

    sget-object p5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_20
    return-void
.end method

.method public onWillRemoved()V
    .registers 4

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lmiuix/graphics/shadow/DropShadowHelper;->enableViewShadow(Landroid/view/View;ZI)V

    return-void
.end method

.method public setShadowHostViewRadius(I)V
    .registers 6

    .line 69
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 71
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    invoke-virtual {v0}, Lmiuix/graphics/shadow/DropShadowHelper;->getShadowRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
