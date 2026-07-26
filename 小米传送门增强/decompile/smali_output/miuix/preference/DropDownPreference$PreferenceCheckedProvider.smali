.class Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceCheckedProvider"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mPreference:Lmiuix/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V
    .registers 3

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    .line 623
    iput-object p2, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public isChecked(I)Z
    .registers 4

    .line 628
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    # getter for: Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lmiuix/preference/DropDownPreference;->access$100(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1f

    if-gez p1, :cond_c

    goto :goto_1f

    .line 632
    :cond_c
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    # getter for: Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lmiuix/preference/DropDownPreference;->access$100(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 629
    :cond_1f
    :goto_1f
    const-string p1, "DropDownPreference"

    const-string v0, "pos out of entries\' length."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
