.class public Lmiuix/preference/RadioButtonPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;,
        Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;,
        Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;
    }
.end annotation


# instance fields
.field private mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

.field private mCheckedPosition:I

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mIsNeedCardGroup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 95
    sget v0, Lmiuix/preference/R$attr;->preferenceCategoryRadioStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 23
    iput-object p3, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 p3, -0x1

    .line 24
    iput p3, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 26
    new-instance p3, Lmiuix/preference/RadioButtonPreferenceCategory$1;

    invoke-direct {p3, p0}, Lmiuix/preference/RadioButtonPreferenceCategory$1;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    iput-object p3, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 80
    sget-object p3, Lmiuix/preference/R$styleable;->RadioButtonPreferenceCategory:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    sget p2, Lmiuix/preference/R$styleable;->RadioButtonPreferenceCategory_toCardGroup:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mIsNeedCardGroup:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory;->checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method private callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z
    .registers 4

    .line 61
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 62
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

    .line 52
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_d

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, p1

    .line 54
    :goto_e
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_21

    .line 55
    :cond_18
    invoke-direct {p0, p2, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 56
    invoke-virtual {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    :cond_21
    return-void
.end method

.method private clearChecked()V
    .registers 3

    .line 165
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    :cond_8
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 v0, -0x1

    .line 169
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return-void
.end method

.method private parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    .registers 3

    .line 239
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_20

    .line 240
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_18

    .line 241
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V

    return-object v0

    .line 243
    :cond_18
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreference;)V

    return-object v0

    .line 245
    :cond_20
    instance-of v0, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_2c

    .line 246
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V

    return-object v0

    .line 248
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only RadioButtonPreference or RadioSetPreferenceCategory can be added to RadioButtonPreferenceCategory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 3

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    return-void
.end method

.method private updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 6

    .line 186
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 187
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1d

    .line 189
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v3

    if-ne v2, v3, :cond_1a

    .line 191
    iput v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    goto :goto_1d

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 4

    .line 177
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 178
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    .line 179
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 181
    :cond_1a
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    :cond_1c
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .registers 4

    .line 109
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 110
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 112
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 114
    :cond_f
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 115
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-nez v1, :cond_1c

    .line 118
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    goto :goto_24

    .line 116
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already has a checked item, please check state of new add preference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    :goto_24
    return p1
.end method

.method public isNeedCardGroup()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mIsNeedCardGroup:Z

    return v0
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .registers 5

    .line 132
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 133
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 136
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 139
    iput-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    :cond_1d
    return p1
.end method

.method public setCheckedPreference(Landroidx/preference/Preference;)V
    .registers 3

    if-nez p1, :cond_6

    .line 152
    invoke-direct {p0}, Lmiuix/preference/RadioButtonPreferenceCategory;->clearChecked()V

    return-void

    .line 155
    :cond_6
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 159
    :cond_11
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 160
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 161
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method
