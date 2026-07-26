.class public Lmiuix/androidbasewidget/widget/ProgressBar;
.super Landroid/widget/ProgressBar;
.source "ProgressBar.java"


# instance fields
.field private mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 36
    sget v0, Lmiuix/androidbasewidget/R$attr;->progressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/ProgressBar;->postConstruct(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 78
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1d

    .line 86
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/androidbasewidget/R$string;->miuix_progressbar_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 88
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/androidbasewidget/R$string;->miuix_progressbar_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public postConstruct(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 46
    sget-object v0, Lmiuix/androidbasewidget/R$styleable;->ProgressBar:[I

    sget v1, Lmiuix/androidbasewidget/R$style;->Widget_ProgressBar_Horizontal_DayNight:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/ProgressBar;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5c

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 50
    sget p3, Lmiuix/androidbasewidget/R$styleable;->ProgressBar_indeterminateFramesCount:I

    const/16 v0, 0x30

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setFramesCount"

    invoke-static {v0, v3, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, v2, p3}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget p3, Lmiuix/androidbasewidget/R$styleable;->ProgressBar_indeterminateFramesDuration:I

    const/16 v2, 0x19

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 60
    const-string v2, "setFramesDuration"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_5c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ProgressBar;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 72
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ProgressBar;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    :cond_9
    return-void
.end method
