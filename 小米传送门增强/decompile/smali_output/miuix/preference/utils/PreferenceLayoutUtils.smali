.class public Lmiuix/preference/utils/PreferenceLayoutUtils;
.super Ljava/lang/Object;
.source "PreferenceLayoutUtils.java"


# direct methods
.method public static isDynamicGroupItem(Landroidx/preference/Preference;)Z
    .registers 3

    .line 30
    instance-of v0, p0, Lmiuix/preference/PreferencedynamicGroupController;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 33
    :cond_6
    check-cast p0, Lmiuix/preference/PreferencedynamicGroupController;

    invoke-interface {p0}, Lmiuix/preference/PreferencedynamicGroupController;->getGroupItemType()I

    move-result p0

    if-lez p0, :cond_12

    const/4 v0, 0x5

    if-ge p0, v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method
