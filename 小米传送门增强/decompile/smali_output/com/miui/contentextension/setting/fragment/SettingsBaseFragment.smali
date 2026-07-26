.class public abstract Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SettingsBaseFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getPreferencesResourceId()I
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;->getPreferencesResourceId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method

.method public setClipboardEnable(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setTaplusEnable(Z)V
    .registers 2

    .line 0
    return-void
.end method
