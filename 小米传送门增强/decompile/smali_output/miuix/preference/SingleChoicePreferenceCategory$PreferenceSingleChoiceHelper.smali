.class Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;
.super Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;
.source "SingleChoicePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/SingleChoicePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceSingleChoiceHelper"
.end annotation


# instance fields
.field mPreference:Lmiuix/preference/SingleChoicePreference;


# direct methods
.method constructor <init>(Lmiuix/preference/SingleChoicePreference;)V
    .registers 2

    .line 315
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;-><init>(Landroid/widget/Checkable;)V

    .line 316
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/SingleChoicePreference;

    return-void
.end method


# virtual methods
.method getPreference()Landroidx/preference/Preference;
    .registers 2

    .line 326
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/SingleChoicePreference;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .registers 2

    .line 331
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/SingleChoicePreference;

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreference;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 3

    .line 321
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/SingleChoicePreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/SingleChoicePreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    return-void
.end method
