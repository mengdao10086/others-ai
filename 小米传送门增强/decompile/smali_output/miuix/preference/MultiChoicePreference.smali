.class public Lmiuix/preference/MultiChoicePreference;
.super Lmiuix/preference/BaseCheckBoxPreference;
.source "MultiChoicePreference.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChangeFromClick:Z

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mItemView:Landroid/view/View;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lmiuix/preference/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 37
    sget v0, Lmiuix/preference/R$attr;->multiChoicePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/BaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    sget-object v0, Lmiuix/preference/R$styleable;->ChoicePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreference_android_value:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/MultiChoicePreference;->mValue:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x2

    if-eqz p1, :cond_6

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_6
    if-eqz p2, :cond_b

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 98
    :cond_b
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->mItemView:Landroid/view/View;

    new-instance v1, Lmiuix/preference/MultiChoicePreference$1;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/preference/MultiChoicePreference$1;-><init>(Lmiuix/preference/MultiChoicePreference;Landroid/view/View;Landroid/view/View;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private setButtonChecked(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 126
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 127
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_30

    .line 128
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 129
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_30

    .line 130
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_24

    .line 132
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 136
    :cond_20
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_30

    .line 138
    :cond_24
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_30

    .line 139
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .registers 5

    .line 55
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 56
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 58
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-nez v1, :cond_1e

    .line 59
    iget-boolean p1, p0, Lmiuix/preference/MultiChoicePreference;->mChangeFromClick:Z

    if-eqz p1, :cond_1e

    iput-boolean v2, p0, Lmiuix/preference/MultiChoicePreference;->mChangeFromClick:Z

    :cond_1e
    return v1
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyChanged()V
    .registers 2

    .line 165
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 166
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_a

    .line 167
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    :cond_a
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 6

    .line 65
    invoke-super {p0, p1}, Lmiuix/preference/BaseCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 66
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 67
    iput-object p1, p0, Lmiuix/preference/MultiChoicePreference;->mItemView:Landroid/view/View;

    const v0, 0x1020016

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1c

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1c
    const v1, 0x1020010

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 73
    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_31

    .line 74
    move-object v2, v1

    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_31
    const v2, 0x1020001

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 78
    instance-of v2, p1, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_4f

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 79
    move-object v2, p1

    check-cast v2, Landroid/widget/CompoundButton;

    iget-boolean v3, p0, Lmiuix/preference/MultiChoicePreference;->mChangeFromClick:Z

    invoke-direct {p0, v2, v3}, Lmiuix/preference/MultiChoicePreference;->setButtonChecked(Landroid/widget/CompoundButton;Z)V

    const/4 v2, 0x0

    .line 80
    iput-boolean v2, p0, Lmiuix/preference/MultiChoicePreference;->mChangeFromClick:Z

    .line 83
    :cond_4f
    invoke-virtual {p0}, Lmiuix/preference/BaseCheckBoxPreference;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_5e

    if-eqz p1, :cond_5b

    const/4 v2, 0x2

    .line 85
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 87
    :cond_5b
    invoke-direct {p0, v0, v1}, Lmiuix/preference/MultiChoicePreference;->setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V

    :cond_5e
    return-void
.end method

.method protected onClick()V
    .registers 4

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lmiuix/preference/MultiChoicePreference;->mChangeFromClick:Z

    .line 151
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 152
    iget-boolean v0, p0, Lmiuix/preference/MultiChoicePreference;->mChangeFromClick:Z

    if-eqz v0, :cond_15

    .line 153
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 154
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    :cond_15
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 185
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lmiuix/preference/MultiChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lmiuix/preference/MultiChoicePreference;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toggle()V
    .registers 2

    .line 190
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/MultiChoicePreference;->setChecked(Z)V

    return-void
.end method
