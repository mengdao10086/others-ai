.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$OnPreferenceCopyListener;,
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$SummaryProvider;,
        Landroidx/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroidx/preference/Preference$OnPreferenceClickListener;,
        Landroidx/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mCopyingEnabled:Z

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroidx/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 314
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 128
    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    const/4 v1, 0x0

    .line 129
    iput v1, p0, Landroidx/preference/Preference;->mViewId:I

    const/4 v2, 0x1

    .line 142
    iput-boolean v2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 143
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 145
    iput-boolean v2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 148
    iput-boolean v2, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 149
    iput-boolean v2, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 150
    iput-boolean v2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 152
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 153
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 155
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 162
    iput-boolean v2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 164
    sget v3, Landroidx/preference/R$layout;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 179
    new-instance v4, Landroidx/preference/Preference$1;

    invoke-direct {v4, p0}, Landroidx/preference/Preference$1;-><init>(Landroidx/preference/Preference;)V

    iput-object v4, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 207
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 209
    sget-object v4, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 212
    sget p2, Landroidx/preference/R$styleable;->Preference_icon:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_icon:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 215
    sget p2, Landroidx/preference/R$styleable;->Preference_key:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_key:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 218
    sget p2, Landroidx/preference/R$styleable;->Preference_title:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 221
    sget p2, Landroidx/preference/R$styleable;->Preference_summary:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 224
    sget p2, Landroidx/preference/R$styleable;->Preference_order:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_order:I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mOrder:I

    .line 227
    sget p2, Landroidx/preference/R$styleable;->Preference_fragment:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 230
    sget p2, Landroidx/preference/R$styleable;->Preference_layout:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_layout:I

    invoke-static {p1, p2, p3, v3}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 233
    sget p2, Landroidx/preference/R$styleable;->Preference_widgetLayout:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 236
    sget p2, Landroidx/preference/R$styleable;->Preference_enabled:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 239
    sget p2, Landroidx/preference/R$styleable;->Preference_selectable:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 242
    sget p2, Landroidx/preference/R$styleable;->Preference_persistent:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 245
    sget p2, Landroidx/preference/R$styleable;->Preference_dependency:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 248
    sget p2, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 251
    sget p2, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 254
    sget p2, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_ce

    .line 255
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_dc

    .line 256
    :cond_ce
    sget p2, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_dc

    .line 257
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 260
    :cond_dc
    :goto_dc
    sget p2, Landroidx/preference/R$styleable;->Preference_shouldDisableView:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 261
    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 264
    sget p2, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz p3, :cond_f8

    .line 266
    sget p3, Landroidx/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 270
    :cond_f8
    sget p2, Landroidx/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 273
    sget p2, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    invoke-static {p1, p2, p2, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 276
    sget p2, Landroidx/preference/R$styleable;->Preference_enableCopying:I

    invoke-static {p1, p2, p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 279
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchSetInitialValue()V
    .registers 3

    .line 1595
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1601
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1602
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1c

    :cond_16
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1607
    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_24

    .line 1603
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    .line 1604
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private registerDependency()V
    .registers 4

    .line 1406
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1408
    :cond_9
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1410
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->registerDependent(Landroidx/preference/Preference;)V

    return-void

    .line 1412
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerDependent(Landroidx/preference/Preference;)V
    .registers 3

    .line 1455
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 1459
    :cond_b
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .registers 5

    .line 609
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 611
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 612
    check-cast p1, Landroid/view/ViewGroup;

    .line 613
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1b

    .line 614
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .line 1651
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1652
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    return-void
.end method

.method private unregisterDependency()V
    .registers 2

    .line 1418
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1419
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1421
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->unregisterDependent(Landroidx/preference/Preference;)V

    :cond_d
    return-void
.end method

.method private unregisterDependent(Landroidx/preference/Preference;)V
    .registers 3

    .line 1471
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1472
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method


# virtual methods
.method assignParent(Landroidx/preference/PreferenceGroup;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1360
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_7

    goto :goto_f

    .line 1361
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1365
    :cond_f
    :goto_f
    iput-object p1, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .registers 3

    .line 1131
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method final clearWasDetached()V
    .registers 2

    const/4 v0, 0x0

    .line 1401
    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return-void
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .registers 4

    .line 1262
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_8

    sub-int/2addr v0, v1

    return v0

    .line 1265
    :cond_8
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    if-nez v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    if-nez v1, :cond_18

    const/4 p1, -0x1

    return p1

    .line 1274
    :cond_18
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 91
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 2084
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2085
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_21

    const/4 v0, 0x0

    .line 2087
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2088
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2089
    iget-boolean p1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz p1, :cond_19

    goto :goto_21

    .line 2090
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 2032
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 2033
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2034
    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2035
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_19

    if-eqz v0, :cond_21

    .line 2040
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_21

    .line 2036
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 1443
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1229
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .registers 2

    .line 1561
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 428
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 431
    :cond_b
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .registers 5

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1996
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1997
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_17

    .line 1998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2000
    :cond_17
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2001
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 2002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2004
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_36

    .line 2006
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_36
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .line 381
    iget-object v0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method getId()J
    .registers 3

    .line 933
    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 362
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 965
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .registers 2

    .line 470
    iget v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;
    .registers 2

    .line 1153
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;
    .registers 2

    .line 1173
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .line 646
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .registers 2

    .line 1572
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .registers 4

    .line 1966
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    .line 1970
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1975
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected getPersistedInt(I)I
    .registers 4

    .line 1804
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    .line 1808
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1813
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1697
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 1701
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1706
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1750
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 1754
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1759
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;
    .registers 3

    .line 415
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 416
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    :cond_8
    return-object v1
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .registers 2

    .line 1314
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 1246
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1250
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 745
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 746
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$SummaryProvider;->provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 748
    :cond_f
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;
    .registers 2

    .line 1120
    iget-object v0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 691
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .registers 2

    .line 494
    iget v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .registers 2

    .line 988
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCopyingEnabled()Z
    .registers 2

    .line 1094
    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 807
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isPersistent()Z
    .registers 2

    .line 999
    iget-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 828
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 891
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    return v0
.end method

.method protected notifyChanged()V
    .registers 2

    .line 1293
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_7

    .line 1294
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroidx/preference/Preference;)V

    :cond_7
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .registers 6

    .line 1483
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 1489
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    .line 1491
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .registers 2

    .line 1303
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_7

    .line 1304
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    :cond_7
    return-void
.end method

.method public onAttached()V
    .registers 1

    .line 1376
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .registers 4

    .line 1324
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 1326
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_c

    .line 1327
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    .line 1330
    :cond_c
    invoke-direct {p0}, Landroidx/preference/Preference;->dispatchSetInitialValue()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;J)V
    .registers 4

    .line 1342
    iput-wide p2, p0, Landroidx/preference/Preference;->mId:J

    const/4 p2, 0x1

    .line 1343
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    const/4 p2, 0x0

    .line 1345
    :try_start_6
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    .line 1347
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    return-void

    :catchall_c
    move-exception p1

    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1348
    throw p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 10

    .line 510
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 513
    iget-object v1, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget v1, p0, Landroidx/preference/Preference;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x1020010

    .line 516
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_37

    .line 518
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 519
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 520
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_38

    .line 524
    :cond_34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_37
    move-object v1, v4

    :goto_38
    const v5, 0x1020016

    .line 528
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_75

    .line 530
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 531
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_72

    .line 532
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-boolean v6, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v6, :cond_5c

    .line 535
    iget-boolean v6, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 539
    :cond_5c
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v6

    if-nez v6, :cond_75

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_75

    if-eqz v1, :cond_75

    .line 540
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_75

    .line 543
    :cond_72
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_75
    :goto_75
    const v1, 0x1020006

    .line 547
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v5, 0x4

    if-eqz v1, :cond_ae

    .line 549
    iget v6, p0, Landroidx/preference/Preference;->mIconResId:I

    if-nez v6, :cond_89

    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9c

    .line 550
    :cond_89
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_95

    .line 551
    iget-object v7, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 553
    :cond_95
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9c

    .line 554
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    :cond_9c
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a4

    .line 558
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ae

    .line 560
    :cond_a4
    iget-boolean v6, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v6, :cond_aa

    move v6, v5

    goto :goto_ab

    :cond_aa
    move v6, v2

    :goto_ab
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    :cond_ae
    :goto_ae
    sget v1, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_bd

    const v1, 0x102003e

    .line 566
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_bd
    if-eqz v1, :cond_cf

    .line 569
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c7

    .line 570
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cf

    .line 572
    :cond_c7
    iget-boolean v3, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v3, :cond_cc

    move v2, v5

    :cond_cc
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 576
    :cond_cf
    :goto_cf
    iget-boolean v1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_db

    .line 577
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_df

    :cond_db
    const/4 v1, 0x1

    .line 579
    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 582
    :goto_df
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 584
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 586
    iget-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 587
    iget-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 589
    invoke-virtual {p0}, Landroidx/preference/Preference;->isCopyingEnabled()Z

    move-result p1

    if-eqz p1, :cond_104

    .line 591
    iget-object v2, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    if-nez v2, :cond_104

    .line 592
    new-instance v2, Landroidx/preference/Preference$OnPreferenceCopyListener;

    invoke-direct {v2, p0}, Landroidx/preference/Preference$OnPreferenceCopyListener;-><init>(Landroidx/preference/Preference;)V

    iput-object v2, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    :cond_104
    if-eqz p1, :cond_109

    .line 594
    iget-object v2, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    goto :goto_10a

    :cond_109
    move-object v2, v4

    :goto_10a
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 595
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_117

    if-nez v1, :cond_117

    .line 601
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_117
    return-void
.end method

.method protected onClick()V
    .registers 1

    .line 0
    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .registers 3

    .line 1502
    iget-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne p1, p2, :cond_12

    xor-int/lit8 p1, p2, 0x1

    .line 1503
    iput-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 1506
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1508
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_12
    return-void
.end method

.method public onDetached()V
    .registers 2

    .line 1385
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    const/4 v0, 0x1

    .line 1386
    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .registers 3

    .line 1519
    iget-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-ne p1, p2, :cond_12

    xor-int/lit8 p1, p2, 0x1

    .line 1520
    iput-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 1523
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1525
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_12
    return-void
.end method

.method protected onPrepareForRemoval()V
    .registers 1

    .line 1581
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    const/4 v0, 0x1

    .line 2108
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2109
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_12

    if-nez p1, :cond_a

    goto :goto_12

    .line 2110
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_12
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x1

    .line 2058
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2059
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    .line 0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1634
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    return-void
.end method

.method public performClick()V
    .registers 3

    .line 1194
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3b

    .line 1198
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 1200
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 1204
    :cond_1b
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1207
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1208
    invoke-interface {v0, p0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return-void

    .line 1213
    :cond_2e
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3b

    .line 1214
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1215
    iget-object v1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .registers 2

    .line 1182
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method protected persistBoolean(Z)Z
    .registers 5

    .line 1936
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    xor-int/lit8 v0, p1, 0x1

    .line 1940
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_12

    return v1

    .line 1945
    :cond_12
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1949
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1950
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1951
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method protected persistInt(I)Z
    .registers 5

    .line 1774
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    not-int v0, p1

    .line 1778
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_11

    return v1

    .line 1783
    :cond_11
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1787
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1788
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1789
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .registers 5

    .line 1667
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/4 v0, 0x0

    .line 1672
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    return v1

    .line 1677
    :cond_15
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1681
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1682
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1683
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1720
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/4 v0, 0x0

    .line 1725
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    return v1

    .line 1730
    :cond_15
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    .line 1734
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1735
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1736
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 2

    .line 2070
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 2

    .line 2019
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 791
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_10

    .line 792
    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 795
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 797
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_10
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 716
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 717
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 702
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_c

    .line 703
    iput-object p1, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 704
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 705
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_c
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    .line 352
    iput-object p1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2

    .line 461
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V
    .registers 2

    .line 1286
    iput-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .registers 2

    .line 1142
    iput-object p1, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .registers 2

    .line 1163
    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setOrder(I)V
    .registers 3

    .line 631
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_9

    .line 632
    iput p1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 635
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_9
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    .line 762
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-nez v0, :cond_14

    .line 765
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 766
    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 767
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_13
    return-void

    .line 763
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference already has a SummaryProvider set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V
    .registers 2

    .line 1106
    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    .line 1107
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 680
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 667
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 668
    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 669
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_d
    return-void
.end method

.method public final setVisible(Z)V
    .registers 3

    .line 872
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_d

    .line 873
    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 874
    iget-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz p1, :cond_d

    .line 875
    invoke-interface {p1, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    :cond_d
    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 2

    .line 1535
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldPersist()Z
    .registers 2

    .line 1011
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1981
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
