.class abstract Lmiuix/preference/MultiChoicePreferenceCategory$MultiChoiceHelper;
.super Ljava/lang/Object;
.source "MultiChoicePreferenceCategory.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/MultiChoicePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MultiChoiceHelper"
.end annotation


# instance fields
.field mCheckable:Landroid/widget/Checkable;


# direct methods
.method constructor <init>(Landroid/widget/Checkable;)V
    .registers 2

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lmiuix/preference/MultiChoicePreferenceCategory$MultiChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    return-void
.end method


# virtual methods
.method abstract getPreference()Landroidx/preference/Preference;
.end method

.method abstract getValue()Ljava/lang/String;
.end method

.method public isChecked()Z
    .registers 2

    .line 347
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreferenceCategory$MultiChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    .line 342
    iget-object v0, p0, Lmiuix/preference/MultiChoicePreferenceCategory$MultiChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method abstract setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
.end method

.method public toggle()V
    .registers 2

    .line 352
    invoke-virtual {p0}, Lmiuix/preference/MultiChoicePreferenceCategory$MultiChoiceHelper;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/MultiChoicePreferenceCategory$MultiChoiceHelper;->setChecked(Z)V

    return-void
.end method
