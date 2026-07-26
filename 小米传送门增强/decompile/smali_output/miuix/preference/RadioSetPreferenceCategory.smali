.class public Lmiuix/preference/RadioSetPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "RadioSetPreferenceCategory.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z

.field private mCheckedSet:Z

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mInternalListenerProxy:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mPrimaryKey:Ljava/lang/String;

.field private mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 55
    sget v0, Lmiuix/preference/R$attr;->preferenceCategoryCheckableStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioSetPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/RadioSetPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    new-instance v0, Lmiuix/preference/RadioSetPreferenceCategory$1;

    invoke-direct {v0, p0}, Lmiuix/preference/RadioSetPreferenceCategory$1;-><init>(Lmiuix/preference/RadioSetPreferenceCategory;)V

    iput-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 44
    sget-object v0, Lmiuix/preference/R$styleable;->RadioSetPreferenceCategory:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    sget p2, Lmiuix/preference/R$styleable;->RadioSetPreferenceCategory_primaryKey:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryKey:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/OnPreferenceChangeInternalListener;
    .registers 1

    .line 11
    iget-object p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-object p0
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .registers 4

    .line 64
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryKey:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 65
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_51

    .line 66
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_19

    .line 69
    move-object v0, p1

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 70
    iget-object v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/OnPreferenceChangeInternalListener;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    goto :goto_51

    .line 67
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The first preference must be RadioButtonPreference, if primary key is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_21
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 74
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_3a

    if-ne v0, p1, :cond_32

    goto :goto_3a

    .line 75
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must not have two primary preference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_3a
    :goto_3a
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_49

    .line 80
    move-object v0, p1

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 81
    iget-object v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/OnPreferenceChangeInternalListener;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    goto :goto_51

    .line 78
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Primary preference must be RadioButtonPreference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_51
    :goto_51
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;
    .registers 2

    .line 111
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    .line 89
    iget-boolean v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    if-eq v0, p1, :cond_5

    goto :goto_9

    .line 90
    :cond_5
    iget-boolean v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mCheckedSet:Z

    if-nez v0, :cond_e

    .line 91
    :goto_9
    iput-boolean p1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mCheckedSet:Z

    :cond_e
    return-void
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public toggle()V
    .registers 2

    .line 103
    invoke-virtual {p0}, Lmiuix/preference/RadioSetPreferenceCategory;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/RadioSetPreferenceCategory;->setChecked(Z)V

    return-void
.end method
