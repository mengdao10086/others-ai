.class public Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.super Ljava/lang/Object;
.source "CollapseTitle.java"


# instance fields
.field private mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mCollapseTitleLayout:Landroid/widget/LinearLayout;

.field private mCollapseTitlePaintTextSize:F

.field private mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mContext:Landroid/content/Context;

.field private mDefaultSubtitleSize:F

.field private mIsTitleDirty:Z

.field private mLargeFontAdaptEnable:Z

.field private mLargeFontTitleMaxLine:I

.field private mSubtitleSizeable:Z

.field private mSubtitleStyle:I

.field private mTextColorTransitEnable:Z

.field private mTitleLength:F

.field private mTitleStyle:I

.field private mVisible:Z

.field subtitleTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public static synthetic $r8$lambda$5d4MrexWiDgGl3qCXybXSu2s2G8(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$setOnClickListener$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$GZG1GLYqWhOPy0Y3nmYjW-23PbM(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$init$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 8

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    const/4 v2, 0x0

    .line 46
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 47
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    .line 48
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    .line 49
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 51
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    .line 52
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    .line 130
    new-instance v0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$1;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->subtitleTouchListener:Landroid/view/View$OnTouchListener;

    .line 56
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 57
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    .line 58
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    return-void
.end method

.method private getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private synthetic lambda$init$0()V
    .registers 4

    .line 92
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    const v2, 0x101039c

    .line 93
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$1()V
    .registers 5

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 115
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private resetTitleMaxLine(Z)V
    .registers 4

    .line 184
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_34

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    if-nez v1, :cond_9

    goto :goto_34

    :cond_9
    const/4 v1, 0x1

    if-eqz p1, :cond_1d

    .line 187
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-le v0, v1, :cond_1d

    .line 189
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 190
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_34

    :cond_1d
    if-nez p1, :cond_34

    .line 191
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    if-ne p1, v1, :cond_34

    .line 193
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 194
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public canTitleBeShown(Ljava/lang/String;)Z
    .registers 6

    .line 267
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 268
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    if-nez v2, :cond_18

    .line 269
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    .line 270
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    goto :goto_28

    .line 272
    :cond_18
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_28

    .line 273
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    .line 274
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 277
    :cond_28
    :goto_28
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 278
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    .line 279
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 281
    :cond_3b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_44

    return v3

    .line 284
    :cond_44
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_52

    goto :goto_53

    :cond_52
    move v3, v1

    :goto_53
    return v3
.end method

.method public getHitRect()Landroid/graphics/Rect;
    .registers 3

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 249
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .registers 2

    .line 244
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSubtitleAdjustSize()F
    .registers 9

    .line 288
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 289
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 290
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 291
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 292
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_26

    return v0

    .line 296
    :cond_26
    new-instance v3, Landroid/text/TextPaint;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 297
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 298
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 299
    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    .line 301
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    :goto_4d
    if-le v4, v2, :cond_67

    cmpl-float v4, v0, v5

    if-ltz v4, :cond_67

    sub-float/2addr v0, v1

    .line 304
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 305
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 306
    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    goto :goto_4d

    :cond_67
    return v0
.end method

.method public getTitleParent()Landroid/view/ViewGroup;
    .registers 2

    .line 228
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleVisibility()I
    .registers 2

    .line 224
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getVisibility()I
    .registers 2

    .line 240
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 8

    .line 66
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 69
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_subtitle_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 71
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 73
    new-instance v1, Lmiuix/appcompat/internal/view/CollapseTitleColorTransitionTextView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v4, Lmiuix/appcompat/R$attr;->collapseTitleTheme:I

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Lmiuix/appcompat/internal/view/CollapseTitleColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v3, 0x0

    .line 74
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 75
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHorizontalScrollBarEnabled(Z)V

    .line 76
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 77
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v4, Lmiuix/appcompat/R$attr;->actionBarTitleAdaptLargeFont:I

    const/4 v6, 0x1

    invoke-static {v1, v4, v6}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    .line 78
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_4e

    move v4, v6

    goto :goto_4f

    :cond_4e
    move v4, v3

    :goto_4f
    if-eqz v1, :cond_55

    if-eqz v4, :cond_55

    move v1, v6

    goto :goto_56

    :cond_55
    move v1, v3

    .line 79
    :goto_56
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    if-eqz v1, :cond_70

    .line 82
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v4, Lmiuix/appcompat/R$attr;->collapseTitleLargeFontMaxLine:I

    invoke-static {v1, v4, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    .line 83
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 84
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 86
    :cond_70
    sget v1, Lmiuix/appcompat/R$attr;->collapseSubtitleTheme:I

    .line 87
    new-instance v2, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v5, v1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 89
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHorizontalScrollBarEnabled(Z)V

    .line 91
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 95
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget v2, Lmiuix/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 96
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget v2, Lmiuix/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 99
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    sget v2, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_top_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 103
    sget v2, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setAllTitlesClickable(Z)V
    .registers 3

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_7

    .line 143
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 145
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_e

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_e
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 199
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;Z)V
    .registers 4

    .line 112
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 119
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    const/16 p1, 0x8

    goto :goto_10

    :cond_f
    move p1, v0

    .line 173
    :goto_10
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    if-nez p1, :cond_16

    const/4 v0, 0x1

    .line 174
    :cond_16
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->resetTitleMaxLine(Z)V

    return-void
.end method

.method public setSubTitleClickable(Z)V
    .registers 3

    .line 157
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_7

    .line 158
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_7
    return-void
.end method

.method public setSubTitleDrawable(Lmiuix/appcompat/app/TextViewDrawableConfig;)V
    .registers 2

    const/4 p1, 0x0

    .line 178
    throw p1
.end method

.method public setSubTitleOnClickListener(Landroid/view/View$OnClickListener;Z)V
    .registers 4

    .line 123
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_13

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 126
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->subtitleTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_13
    return-void
.end method

.method public setSubTitleTextSize(F)V
    .registers 4

    .line 214
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    if-eqz v0, :cond_a

    .line 215
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    return-void
.end method

.method public setSubTitleVisibility(I)V
    .registers 3

    .line 210
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTextColorTransitEnable(ZI)V
    .registers 5

    .line 317
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    if-eq v0, p1, :cond_18

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 319
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v0, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 321
    :cond_c
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    .line 323
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    :cond_18
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 164
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 166
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    :cond_1c
    return-void
.end method

.method public setTitleClickable(Z)V
    .registers 3

    .line 151
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_7
    return-void
.end method

.method public setTitleVisibility(I)V
    .registers 3

    .line 220
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 232
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    .line 233
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_12

    .line 235
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_12
    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 203
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    if-eq v0, p1, :cond_10

    .line 204
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    .line 205
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    const/4 p1, 0x4

    :goto_d
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public updateTitleCenter(Z)V
    .registers 6

    .line 254
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getTitleParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 255
    instance-of v1, v0, Landroid/widget/LinearLayout;

    const v2, 0x800003

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    .line 256
    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    or-int/lit8 v1, v1, 0x10

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 260
    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p1, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 262
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p1, :cond_30

    move v2, v3

    :cond_30
    or-int/lit8 p1, v2, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method
