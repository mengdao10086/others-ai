.class Lmiuix/preference/MultiChoicePreferenceCategory$PreferenceSingleChoiceHelper;
.super Lmiuix/preference/MultiChoicePreferenceCategory$MultiChoiceHelper;
.source "MultiChoicePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/MultiChoicePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceSingleChoiceHelper"
.end annotation


# instance fields
.field mPreference:Lmiuix/preference/MultiChoicePreference;


# direct methods
.method constructor <init>(Lmiuix/preference/MultiChoicePreference;)V
    .registers 2

    .line 313
    invoke-direct {p0, p1}, Lmiuix/preference/MultiChoicePreferenceCategory$MultiChoiceHelper;-><init>(Landroid/widget/Checkable;)V

    .line 314
    iput-object p1, p0, Lmiuix/preference/MultiChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/MultiChoicePreference;

    return-void
.end method


# virtual methods
.method getPreference()Landroidx/preference/Preference;
    .registers 2

    .line 324
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/MultiChoicePreference;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/MultiChoicePreference;

    invoke-virtual {v0}, Lmiuix/preference/MultiChoicePreference;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 3

    .line 319
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/MultiChoicePreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/MultiChoicePreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    return-void
.end method
