.class public Lmiuix/preference/flexible/MiuixPreferenceTemplate;
.super Lmiuix/preference/flexible/AbstractBaseTemplate;
.source "MiuixPreferenceTemplate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lmiuix/preference/flexible/AbstractBaseTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public checkView(Landroid/view/ViewGroup;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onLargeLayoutSelected()I
    .registers 4

    .line 9
    iget-boolean v0, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasTitle:Z

    const/16 v1, 0x55f1

    if-eqz v0, :cond_b

    iget-boolean v2, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasSummary:Z

    if-eqz v2, :cond_b

    return v1

    :cond_b
    if-eqz v0, :cond_14

    .line 12
    iget-boolean v2, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasSummary:Z

    if-nez v2, :cond_14

    const/16 v0, 0x4e21

    return v0

    :cond_14
    if-nez v0, :cond_1d

    .line 14
    iget-boolean v0, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasSummary:Z

    if-eqz v0, :cond_1d

    const/16 v0, 0x4e22

    return v0

    :cond_1d
    return v1
.end method
