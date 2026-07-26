.class public Lmiuix/preference/SingleChoicePreference;
.super Lmiuix/preference/BaseCheckBoxPreference;
.source "SingleChoicePreference.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lmiuix/preference/FolmeAnimationController;
.implements Lmiuix/preference/PreferenceExtraPadding;


# instance fields
.field private mCardStyle:I

.field private mChangeFromClick:Z

.field private mClicked:I

.field private mCompoundButton:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mIsCardStyleEnable:Z

.field private mIsInit:Z

.field private mIsNotifyChanged:Z

.field private mItemView:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 50
    sget v0, Lmiuix/preference/R$attr;->singleChoicePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/BaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mIsInit:Z

    .line 60
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mContext:Landroid/content/Context;

    .line 61
    sget-object v1, Lmiuix/preference/R$styleable;->ChoicePreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 63
    sget p3, Lmiuix/preference/R$styleable;->ChoicePreference_android_value:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmiuix/preference/SingleChoicePreference;->mValue:Ljava/lang/String;

    .line 64
    sget p3, Lmiuix/preference/R$attr;->preferenceCardStyleEnable:I

    invoke-static {p1, p3, v0}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lmiuix/preference/SingleChoicePreference;->mCardStyle:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2d

    .line 66
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result p1

    if-le p1, v0, :cond_2c

    iget p1, p0, Lmiuix/preference/SingleChoicePreference;->mCardStyle:I

    if-ne p1, v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :cond_2d
    :goto_2d
    iput-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mIsCardStyleEnable:Z

    .line 67
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isDisableAllCardStyle()Z
    .registers 3

    const/4 v0, -0x1

    .line 289
    iget v1, p0, Lmiuix/preference/SingleChoicePreference;->mCardStyle:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 132
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    new-instance v1, Lmiuix/preference/SingleChoicePreference$1;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/preference/SingleChoicePreference$1;-><init>(Lmiuix/preference/SingleChoicePreference;Landroid/view/View;Landroid/view/View;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private setButtonChecked(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 165
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_58

    .line 167
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_58

    .line 169
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_24

    .line 171
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 172
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 173
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 175
    :cond_20
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_58

    .line 177
    :cond_24
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_58

    .line 183
    iget p2, p0, Lmiuix/preference/SingleChoicePreference;->mClicked:I

    if-lez p2, :cond_35

    .line 184
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 185
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_51

    .line 186
    :cond_35
    iget-boolean p2, p0, Lmiuix/preference/SingleChoicePreference;->mIsNotifyChanged:Z

    if-eqz p2, :cond_4b

    iget-boolean p2, p0, Lmiuix/preference/SingleChoicePreference;->mIsInit:Z

    if-nez p2, :cond_4b

    .line 187
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 188
    new-instance p2, Lmiuix/preference/RadioButtonPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lmiuix/preference/RadioButtonPreference$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreference;->mRunnable:Ljava/lang/Runnable;

    .line 189
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_51

    .line 191
    :cond_4b
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 192
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :goto_51
    const/4 p1, 0x0

    .line 194
    iput p1, p0, Lmiuix/preference/SingleChoicePreference;->mClicked:I

    .line 195
    iput-boolean p1, p0, Lmiuix/preference/SingleChoicePreference;->mIsInit:Z

    .line 196
    iput-boolean p1, p0, Lmiuix/preference/SingleChoicePreference;->mIsNotifyChanged:Z

    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .registers 5

    .line 73
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 74
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 76
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-nez v1, :cond_1e

    .line 77
    iget-boolean p1, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    if-eqz p1, :cond_1e

    iput-boolean v2, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    :cond_1e
    return v1
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isTouchAnimationEnable()Z
    .registers 2

    .line 267
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreference;->isDisableAllCardStyle()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mIsCardStyleEnable:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected notifyChanged()V
    .registers 3

    .line 223
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 224
    iget v0, p0, Lmiuix/preference/SingleChoicePreference;->mClicked:I

    const/4 v1, 0x1

    if-lez v0, :cond_b

    sub-int/2addr v0, v1

    .line 225
    iput v0, p0, Lmiuix/preference/SingleChoicePreference;->mClicked:I

    .line 227
    :cond_b
    iput-boolean v1, p0, Lmiuix/preference/SingleChoicePreference;->mIsNotifyChanged:Z

    .line 228
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_14

    .line 229
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    :cond_14
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 8

    .line 83
    invoke-super {p0, p1}, Lmiuix/preference/BaseCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 84
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 85
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    .line 87
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreference;->isDisableAllCardStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mIsCardStyleEnable:Z

    if-nez v0, :cond_65

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 92
    sget v2, Lmiuix/preference/R$drawable;->miuix_preference_single_choice_foregorund_light:I

    goto :goto_28

    .line 94
    :cond_26
    sget v2, Lmiuix/preference/R$drawable;->miuix_preference_single_choice_foregorund_dark:I

    .line 97
    :goto_28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/preference/R$drawable;->miuix_preference_single_choice_background:I

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 99
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p1, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v2, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_65
    const v0, 0x1020016

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_7a

    .line 109
    move-object v2, v0

    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_7a
    const v2, 0x1020010

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 112
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_8f

    .line 113
    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_8f
    const v3, 0x1020001

    .line 115
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_ae

    .line 117
    instance-of v3, p1, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_ae

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 118
    move-object v3, p1

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lmiuix/preference/SingleChoicePreference;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 119
    iget-boolean v4, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    invoke-direct {p0, v3, v4}, Lmiuix/preference/SingleChoicePreference;->setButtonChecked(Landroid/widget/CompoundButton;Z)V

    .line 120
    iput-boolean v1, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    .line 123
    :cond_ae
    invoke-virtual {p0}, Lmiuix/preference/BaseCheckBoxPreference;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_bd

    if-eqz p1, :cond_ba

    const/4 v1, 0x2

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 127
    :cond_ba
    invoke-direct {p0, v0, v2}, Lmiuix/preference/SingleChoicePreference;->setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V

    :cond_bd
    return-void
.end method

.method protected onClick()V
    .registers 4

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    const/4 v0, 0x2

    .line 207
    iput v0, p0, Lmiuix/preference/SingleChoicePreference;->mClicked:I

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mIsInit:Z

    .line 209
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 210
    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    if-eqz v0, :cond_1b

    .line 211
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 212
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    :cond_1b
    return-void
.end method

.method public onDetached()V
    .registers 4

    .line 235
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 236
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mCompoundButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 237
    iget-object v2, p0, Lmiuix/preference/SingleChoicePreference;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 238
    iput-object v1, p0, Lmiuix/preference/SingleChoicePreference;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 240
    :cond_f
    iput-object v1, p0, Lmiuix/preference/SingleChoicePreference;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .registers 11

    .line 272
    iget-boolean p1, p0, Lmiuix/preference/SingleChoicePreference;->mIsCardStyleEnable:Z

    if-nez p1, :cond_38

    .line 273
    iget-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_item_margin_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 275
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    add-int/2addr p1, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v5, p1

    .line 276
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 279
    iget-object p2, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 280
    instance-of v0, p2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_38

    .line 281
    move-object v2, p2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v6, p1

    .line 282
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_38
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 257
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toggle()V
    .registers 2

    .line 262
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/SingleChoicePreference;->setChecked(Z)V

    return-void
.end method
