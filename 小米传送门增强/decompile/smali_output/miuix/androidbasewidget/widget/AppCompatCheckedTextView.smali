.class public Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;
.super Landroidx/appcompat/widget/AppCompatCheckedTextView;
.source "AppCompatCheckedTextView.java"


# direct methods
.method public static synthetic $r8$lambda$bXvqIlYVAsqXBQFhoVyHIS0sXt0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->lambda$onAttachedToWindow$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object v0, Lmiuix/androidbasewidget/R$styleable;->CheckedTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget p2, Lmiuix/androidbasewidget/R$styleable;->CheckedTextView_checkMarkCompat:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_15

    .line 33
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(I)V

    .line 36
    :cond_15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static synthetic lambda$onAttachedToWindow$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_19

    .line 56
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_19

    .line 57
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    :cond_19
    :goto_19
    return v2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    const/4 v0, 0x1

    .line 41
    invoke-super {p0}, Landroid/widget/CheckedTextView;->onAttachedToWindow()V

    .line 42
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 43
    instance-of v2, v1, Landroid/widget/ListView;

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RecyclerView"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    move v1, v3

    :goto_22
    if-nez v2, :cond_3e

    if-nez v1, :cond_3e

    .line 49
    new-array v0, v0, [Landroid/view/View;

    aput-object p0, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_6a

    .line 51
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 52
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 53
    new-instance v0, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_6a

    .line 62
    :cond_53
    new-array v0, v0, [Landroid/view/View;

    aput-object p0, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_6a
    :goto_6a
    return-void
.end method
