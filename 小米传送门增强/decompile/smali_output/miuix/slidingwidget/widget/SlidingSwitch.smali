.class public Lmiuix/slidingwidget/widget/SlidingSwitch;
.super Landroid/widget/Switch;
.source "SlidingSwitch.java"


# instance fields
.field private mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 36
    sget v0, Lmiuix/slidingwidget/R$attr;->slidingButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-direct {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 42
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initAnim()V

    .line 44
    sget-object v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton:[I

    sget v1, Lmiuix/slidingwidget/R$style;->Widget_SlidingButton_DayNight:I

    .line 45
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 47
    iget-object p3, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p3, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 49
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .line 109
    invoke-super {p0}, Landroid/widget/Switch;->drawableStateChanged()V

    .line 110
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_a

    .line 111
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    :cond_a
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 95
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_9

    .line 96
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getAlpha()F

    move-result v0

    return v0

    .line 98
    :cond_9
    invoke-super {p0}, Landroid/widget/Switch;->getAlpha()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 176
    invoke-super {p0}, Landroid/widget/Switch;->jumpDrawablesToCurrentState()V

    .line 177
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_a

    .line 178
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->jumpDrawablesToCurrentState()V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 157
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-nez v0, :cond_8

    .line 158
    invoke-super {p0, p1}, Landroid/widget/Switch;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 161
    :cond_8
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 143
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_7

    .line 144
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onHoverEvent(Landroid/view/MotionEvent;)V

    .line 146
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Switch;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 184
    invoke-super {p0, p1}, Landroid/widget/Switch;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 186
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 188
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_46

    .line 190
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 191
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$string;->accessibility_sliding_button_state_description_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 192
    :cond_35
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$string;->accessibility_sliding_button_state_description_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_43
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_46
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 117
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 118
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setParentClipChildren()V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 132
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_8
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_f

    .line 136
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 123
    invoke-super {p0}, Landroid/widget/Switch;->performClick()Z

    .line 124
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    .line 86
    invoke-super {p0, p1}, Landroid/widget/Switch;->setAlpha(F)V

    .line 87
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_a

    .line 88
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setAlpha(F)V

    .line 90
    :cond_a
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 68
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_14

    .line 71
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 72
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 73
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_14

    .line 74
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setChecked(Z)V

    :cond_14
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 3

    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/Switch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 61
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p2, :cond_a

    .line 62
    invoke-virtual {p2, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setLayerType(I)V

    :cond_a
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_7
    return-void
.end method

.method public setPressed(Z)V
    .registers 2

    .line 151
    invoke-super {p0, p1}, Landroid/widget/Switch;->setPressed(Z)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 171
    invoke-super {p0, p1}, Landroid/widget/Switch;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method
