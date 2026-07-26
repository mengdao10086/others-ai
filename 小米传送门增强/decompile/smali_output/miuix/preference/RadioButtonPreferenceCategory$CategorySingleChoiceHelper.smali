.class Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;
.super Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategorySingleChoiceHelper"
.end annotation


# instance fields
.field private mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

.field final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V
    .registers 3

    .line 285
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 286
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V

    .line 287
    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/Preference;
    .registers 2

    .line 297
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3

    .line 302
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 304
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_14
    return-void
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 3

    .line 292
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v0, p1}, Lmiuix/preference/RadioSetPreferenceCategory;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    return-void
.end method
