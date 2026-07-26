.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field mAdjustable:Z

.field private mMax:I

.field mMin:I

.field mSeekBar:Landroid/widget/SeekBar;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private final mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field mTrackingTouch:Z

.field mUpdatesContinuously:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 161
    sget v0, Landroidx/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance v0, Landroidx/preference/SeekBarPreference$1;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$1;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 107
    new-instance v0, Landroidx/preference/SeekBarPreference$2;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$2;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 139
    sget-object v0, Landroidx/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 145
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 146
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    .line 147
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    .line 148
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_adjustable:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->mAdjustable:Z

    .line 149
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 150
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_updatesContinuously:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->mUpdatesContinuously:Z

    .line 152
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setValueInternal(IZ)V
    .registers 4

    .line 353
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_5

    move p1, v0

    .line 356
    :cond_5
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_a

    move p1, v0

    .line 360
    :cond_a
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_1b

    .line 361
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 362
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->updateLabelValue(I)V

    .line 363
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_1b

    .line 365
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1b
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 4

    .line 170
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 171
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 172
    sget v0, Landroidx/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 173
    sget v0, Landroidx/preference/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 174
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mShowSeekBarValue:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f

    :cond_27
    const/16 v0, 0x8

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 181
    :goto_2f
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p1, :cond_3b

    .line 182
    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_3b
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 186
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 191
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eqz p1, :cond_54

    .line 192
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_5c

    .line 194
    :cond_54
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 197
    :goto_5c
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 198
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->updateLabelValue(I)V

    .line 199
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_28

    .line 436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_28

    .line 443
    :cond_f
    check-cast p1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 444
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 445
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->mSeekBarValue:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 446
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->mMin:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 447
    iget p1, p1, Landroidx/preference/SeekBarPreference$SavedState;->mMax:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 448
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void

    .line 438
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 420
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 421
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 427
    :cond_b
    new-instance v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 428
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mSeekBarValue:I

    .line 429
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mMin:I

    .line 430
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mMax:I

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 207
    :cond_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    return-void
.end method

.method public final setMax(I)V
    .registers 3

    .line 279
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_5

    move p1, v0

    .line 282
    :cond_5
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_e

    .line 283
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 284
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_e
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .registers 4

    .line 258
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_16

    .line 259
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 260
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_16
    return-void
.end method

.method public setValue(I)V
    .registers 3

    const/4 v0, 0x1

    .line 385
    invoke-direct {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    return-void
.end method

.method syncValueInternal(Landroid/widget/SeekBar;)V
    .registers 4

    .line 394
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_27

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p1, 0x0

    .line 397
    invoke-direct {p0, v0, p1}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    goto :goto_27

    .line 399
    :cond_1a
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 400
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->updateLabelValue(I)V

    :cond_27
    :goto_27
    return-void
.end method

.method updateLabelValue(I)V
    .registers 3

    .line 412
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 413
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
