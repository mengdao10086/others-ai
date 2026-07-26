.class public Lmiuix/preference/SingleChoicePreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "SingleChoicePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;,
        Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;
    }
.end annotation


# instance fields
.field private mCardGroupEnabled:Z

.field private mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

.field private mCheckedPosition:I

.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 69
    sget v0, Lmiuix/preference/R$attr;->choiceCategoryPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    .line 26
    new-instance v0, Lmiuix/preference/SingleChoicePreferenceCategory$1;

    invoke-direct {v0, p0}, Lmiuix/preference/SingleChoicePreferenceCategory$1;-><init>(Lmiuix/preference/SingleChoicePreferenceCategory;)V

    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 78
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mContext:Landroid/content/Context;

    .line 79
    sget-object v0, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory_android_entries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntries:[Ljava/lang/CharSequence;

    .line 82
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory_android_entryValues:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntryValues:[Ljava/lang/CharSequence;

    .line 83
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory_summaries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mSummaries:[Ljava/lang/CharSequence;

    .line 84
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory_cardGroupEnabled:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCardGroupEnabled:Z

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/SingleChoicePreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lmiuix/preference/SingleChoicePreferenceCategory;->checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/preference/SingleChoicePreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedPreference(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedPosition(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method static synthetic access$400(Lmiuix/preference/SingleChoicePreferenceCategory;)I
    .registers 1

    .line 15
    iget p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;I)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedValue(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;I)V

    return-void
.end method

.method private callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z
    .registers 4

    .line 60
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 61
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

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

.method private checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .registers 5

    .line 51
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_d

    .line 52
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, p1

    .line 53
    :goto_e
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_21

    .line 54
    :cond_18
    invoke-direct {p0, p2, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 55
    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    :cond_21
    return-void
.end method

.method private clearChecked()V
    .registers 3

    .line 166
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    :cond_8
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    const/4 v0, -0x1

    .line 170
    iput v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    return-void
.end method

.method private constructEntries()V
    .registers 7

    .line 184
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_32

    .line 185
    array-length v0, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_32

    .line 187
    iget-object v2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    .line 188
    iget-object v3, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    .line 189
    new-instance v4, Lmiuix/preference/SingleChoicePreference;

    iget-object v5, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v4, v3}, Lmiuix/preference/SingleChoicePreference;->setValue(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_2c

    .line 193
    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    .line 194
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    :cond_2c
    invoke-virtual {p0, v4}, Lmiuix/preference/SingleChoicePreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    return-void
.end method

.method private init()V
    .registers 1

    .line 180
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->constructEntries()V

    return-void
.end method

.method private parse(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;
    .registers 3

    .line 287
    instance-of v0, p1, Lmiuix/preference/SingleChoicePreference;

    if-eqz v0, :cond_c

    .line 288
    new-instance v0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;

    check-cast p1, Lmiuix/preference/SingleChoicePreference;

    invoke-direct {v0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;-><init>(Lmiuix/preference/SingleChoicePreference;)V

    return-object v0

    .line 290
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only SingleChoicePreference can be added to SingleChoicePreference2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setCheckedPreferenceInternal(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .registers 3

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p1, v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    return-void
.end method

.method private updateCheckedPosition(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .registers 6

    .line 268
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 269
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1d

    .line 271
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 272
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v3

    if-ne v2, v3, :cond_1a

    .line 273
    iput v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    goto :goto_1d

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateCheckedPreference(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .registers 4

    .line 259
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 260
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    .line 261
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 263
    :cond_1a
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    :cond_1c
    return-void
.end method

.method private updateCheckedValue(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;I)V
    .registers 3

    .line 281
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 282
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setValue(Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .registers 5

    .line 220
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 221
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 223
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 225
    :cond_f
    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 226
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    if-nez v1, :cond_1c

    .line 229
    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    goto :goto_24

    .line 227
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already has a checked item, please check state of new add preference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_24
    :goto_24
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    :cond_34
    return p1
.end method

.method public getCardGroupEnabled()Z
    .registers 2

    .line 242
    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCardGroupEnabled:Z

    return v0
.end method

.method public onAttached()V
    .registers 1

    .line 175
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 176
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->init()V

    return-void
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    .line 251
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .registers 2

    .line 238
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public setCheckedPreference(Landroidx/preference/Preference;)V
    .registers 3

    if-nez p1, :cond_6

    .line 152
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->clearChecked()V

    return-void

    .line 155
    :cond_6
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 159
    :cond_11
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setCheckedPreferenceInternal(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    .line 160
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedPreference(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    .line 161
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedPosition(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    .line 162
    iget v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedValue(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    .line 203
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 204
    iget-boolean v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValueSet:Z

    if-nez v1, :cond_19

    .line 205
    :cond_c
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValue:Ljava/lang/String;

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValueSet:Z

    .line 207
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-nez v0, :cond_19

    .line 209
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_19
    return-void
.end method
