.class public Lmiuix/appcompat/internal/view/ColorTransitionTextView;
.super Landroid/widget/TextView;
.source "ColorTransitionTextView.java"


# instance fields
.field private hasTransitedColor:Z

.field private mAnimateColor:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mNormalColor:I

.field private mOriginColor:Landroid/content/res/ColorStateList;

.field private mTransitedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    .line 32
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->setupColors()V

    return-void
.end method

.method static synthetic access$002(Lmiuix/appcompat/internal/view/ColorTransitionTextView;I)I
    .registers 2

    .line 20
    iput p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimateColor:I

    return p1
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I
    .registers 1

    .line 20
    iget p0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I
    .registers 1

    .line 20
    iget p0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    return p0
.end method

.method private setupColors()V
    .registers 5

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 37
    sget-object v1, Landroid/widget/TextView;->ENABLED_STATE_SET:[I

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$color;->miuix_appcompat_action_bar_title_text_color_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 39
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    sget-object v2, Landroid/widget/TextView;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    .line 40
    iget v1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    if-eq v1, v0, :cond_29

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    :cond_29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 58
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 62
    :cond_f
    iget v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimateColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 59
    :cond_18
    :goto_18
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 48
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->setupColors()V

    return-void
.end method

.method public startColorTransition(ZZ)V
    .registers 5

    if-nez p2, :cond_13

    if-eqz p1, :cond_a

    .line 69
    iget p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 71
    :cond_a
    iget p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    :goto_f
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    .line 76
    :cond_13
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_1f

    .line 77
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_22

    .line 79
    :cond_1f
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_22
    if-eqz p1, :cond_34

    .line 82
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_43

    .line 84
    :cond_34
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 86
    :goto_43
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x32

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 89
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView$1;-><init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;-><init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
