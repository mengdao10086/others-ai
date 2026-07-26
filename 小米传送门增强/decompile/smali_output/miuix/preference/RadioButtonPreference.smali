.class public Lmiuix/preference/RadioButtonPreference;
.super Lmiuix/preference/BaseCheckBoxPreference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private mChangeFromClick:Z

.field private mClicked:I

.field private mCompoundButton:Landroid/widget/CompoundButton;

.field private mEnableFallbackLineSpacing:Z

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mIsInit:Z

.field private mIsNotifyChanged:Z

.field private mItemView:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 90
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/BaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    .line 77
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/RadioButtonPreference;)Landroid/view/View;
    .registers 1

    .line 38
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    return-object p0
.end method

.method private setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 163
    new-instance v0, Lmiuix/preference/RadioButtonPreference$1;

    invoke-direct {v0, p0, p2}, Lmiuix/preference/RadioButtonPreference$1;-><init>(Lmiuix/preference/RadioButtonPreference;Landroid/view/View;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private setButtonChecked(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 196
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_58

    .line 198
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_58

    .line 200
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_24

    .line 202
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 203
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 204
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 206
    :cond_20
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_58

    .line 208
    :cond_24
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_58

    .line 214
    iget p2, p0, Lmiuix/preference/RadioButtonPreference;->mClicked:I

    if-lez p2, :cond_35

    .line 215
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 216
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_51

    .line 217
    :cond_35
    iget-boolean p2, p0, Lmiuix/preference/RadioButtonPreference;->mIsNotifyChanged:Z

    if-eqz p2, :cond_4b

    iget-boolean p2, p0, Lmiuix/preference/RadioButtonPreference;->mIsInit:Z

    if-nez p2, :cond_4b

    .line 218
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 219
    new-instance p2, Lmiuix/preference/RadioButtonPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lmiuix/preference/RadioButtonPreference$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object p2, p0, Lmiuix/preference/RadioButtonPreference;->mRunnable:Ljava/lang/Runnable;

    .line 220
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_51

    .line 222
    :cond_4b
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 223
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :goto_51
    const/4 p1, 0x0

    .line 225
    iput p1, p0, Lmiuix/preference/RadioButtonPreference;->mClicked:I

    .line 226
    iput-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mIsInit:Z

    .line 227
    iput-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mIsNotifyChanged:Z

    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .registers 5

    .line 238
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 239
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 241
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-nez v1, :cond_1e

    .line 242
    iget-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz p1, :cond_1e

    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    :cond_1e
    return v1
.end method

.method protected notifyChanged()V
    .registers 3

    .line 265
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 266
    iget v0, p0, Lmiuix/preference/RadioButtonPreference;->mClicked:I

    const/4 v1, 0x1

    if-lez v0, :cond_b

    sub-int/2addr v0, v1

    .line 267
    iput v0, p0, Lmiuix/preference/RadioButtonPreference;->mClicked:I

    .line 269
    :cond_b
    iput-boolean v1, p0, Lmiuix/preference/RadioButtonPreference;->mIsNotifyChanged:Z

    .line 270
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_14

    .line 271
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    :cond_14
    return-void
.end method

.method public onAttached()V
    .registers 2

    .line 104
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mIsInit:Z

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_14

    .line 107
    sget v0, Lmiuix/preference/R$layout;->miuix_preference_flexible_radiobutton:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_19

    .line 109
    :cond_14
    sget v0, Lmiuix/preference/R$layout;->miuix_preference_radiobutton_two_state_background_flexible:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_19
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 6

    .line 128
    invoke-super {p0, p1}, Lmiuix/preference/BaseCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 130
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 131
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mItemView:Landroid/view/View;

    const v0, 0x1020016

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 133
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 134
    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    .line 136
    :cond_1b
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_2a

    .line 137
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2a
    const v0, 0x1020010

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_3f

    .line 142
    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_3f
    const v1, 0x1020001

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 148
    instance-of v2, v1, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_5f

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 149
    move-object v2, v1

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lmiuix/preference/RadioButtonPreference;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 150
    iget-boolean v3, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    invoke-direct {p0, v2, v3}, Lmiuix/preference/RadioButtonPreference;->setButtonChecked(Landroid/widget/CompoundButton;Z)V

    const/4 v2, 0x0

    .line 151
    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 154
    :cond_5f
    invoke-virtual {p0}, Lmiuix/preference/BaseCheckBoxPreference;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_6e

    if-eqz v1, :cond_6b

    const/4 v2, 0x2

    .line 156
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 158
    :cond_6b
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreference;->setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V

    :cond_6e
    return-void
.end method

.method protected onClick()V
    .registers 4

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    const/4 v0, 0x2

    .line 249
    iput v0, p0, Lmiuix/preference/RadioButtonPreference;->mClicked:I

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mIsInit:Z

    .line 251
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 252
    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz v0, :cond_1b

    .line 253
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 254
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    :cond_1b
    return-void
.end method

.method public onDetached()V
    .registers 4

    .line 286
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 287
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 288
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    :cond_1f
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mCompoundButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 293
    iget-object v2, p0, Lmiuix/preference/RadioButtonPreference;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 294
    iput-object v1, p0, Lmiuix/preference/RadioButtonPreference;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 296
    :cond_2b
    iput-object v1, p0, Lmiuix/preference/RadioButtonPreference;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public queueIdle()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 2

    .line 281
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public toggle()V
    .registers 2

    .line 277
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
