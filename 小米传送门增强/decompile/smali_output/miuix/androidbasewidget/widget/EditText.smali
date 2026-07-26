.class public Lmiuix/androidbasewidget/widget/EditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;
    }
.end annotation


# instance fields
.field private isAddListener:Z

.field private mCanVerticalScroll:Z

.field private mCurrentHandleAndCursorColor:I

.field private mErrorWatcher:Landroid/text/TextWatcher;

.field private mOffsetHeight:I

.field private mReachEdgeFlag:Z

.field private mTextHandleAndCursorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101006e

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    const/4 v1, -0x1

    .line 40
    iput v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCurrentHandleAndCursorColor:I

    .line 52
    new-instance v1, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;-><init>(Lmiuix/androidbasewidget/widget/EditText;Lmiuix/androidbasewidget/widget/EditText$1;)V

    iput-object v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    .line 53
    sget-object v1, Lmiuix/androidbasewidget/R$styleable;->EditText:[I

    sget v2, Lmiuix/androidbasewidget/R$style;->Widget_EditText_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lmiuix/androidbasewidget/R$styleable;->EditText_textHandleAndCursorColor:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_handle_and_cursor_color_light:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 58
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_53

    const/4 p1, 0x1

    .line 59
    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_53
    return-void
.end method

.method static synthetic access$100(Lmiuix/androidbasewidget/widget/EditText;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    return p0
.end method

.method static synthetic access$102(Lmiuix/androidbasewidget/widget/EditText;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    return p1
.end method

.method static synthetic access$200(Lmiuix/androidbasewidget/widget/EditText;)Landroid/text/TextWatcher;
    .registers 1

    .line 23
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private canVerticalScroll()Z
    .registers 5

    .line 190
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v0

    .line 192
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 194
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 196
    iput v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mOffsetHeight:I

    const/4 v2, 0x0

    if-nez v1, :cond_21

    return v2

    :cond_21
    const/4 v3, 0x1

    if-gtz v0, :cond_27

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_28

    :cond_27
    move v2, v3

    :cond_28
    return v2
.end method

.method private obtainHighlightColor()I
    .registers 5

    .line 64
    iget v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 65
    iget v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 66
    iget v2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x33

    .line 67
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    .line 83
    :cond_9
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 86
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 73
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/EditText;->canVerticalScroll()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCanVerticalScroll:Z

    return-void
.end method

.method public onPreDraw()Z
    .registers 11

    .line 123
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v0

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_5a

    .line 125
    invoke-virtual {p0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/EditText;->obtainHighlightColor()I

    move-result v2

    if-eq v1, v2, :cond_1b

    .line 126
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/EditText;->obtainHighlightColor()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 128
    :cond_1b
    iget v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCurrentHandleAndCursorColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    iget v2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    if-eq v1, v2, :cond_5a

    .line 129
    :cond_24
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 131
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 132
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 133
    filled-new-array {v1, v2, v3, v4}, [Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    :goto_39
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4e

    .line 134
    aget-object v7, v5, v6

    if-eqz v7, :cond_4b

    .line 136
    iget v8, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    iget v7, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    iput v7, p0, Lmiuix/androidbasewidget/widget/EditText;->mCurrentHandleAndCursorColor:I

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 140
    :cond_4e
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5a
    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 110
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/EditText;->canVerticalScroll()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCanVerticalScroll:Z

    .line 111
    iget p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mOffsetHeight:I

    if-eq p2, p1, :cond_f

    if-nez p2, :cond_1c

    .line 113
    :cond_f
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_19

    const/4 p2, 0x0

    .line 115
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_19
    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    :cond_1c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 91
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 92
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 93
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCanVerticalScroll:Z

    if-eqz v1, :cond_17

    .line 95
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    if-nez v1, :cond_1d

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    .line 96
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1d

    :cond_17
    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    .line 100
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1d
    :goto_1d
    return p1
.end method

.method public setMiuiStyleError(Ljava/lang/CharSequence;)V
    .registers 3

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 151
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_24

    .line 153
    :cond_f
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x194

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 154
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    if-nez p1, :cond_24

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    .line 156
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_24
    :goto_24
    return-void
.end method
