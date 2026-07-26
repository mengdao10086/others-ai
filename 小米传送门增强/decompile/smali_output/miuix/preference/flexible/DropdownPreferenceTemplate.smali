.class public Lmiuix/preference/flexible/DropdownPreferenceTemplate;
.super Lmiuix/preference/flexible/AbstractBaseTemplate;
.source "DropdownPreferenceTemplate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lmiuix/preference/flexible/AbstractBaseTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public checkView(Landroid/view/ViewGroup;)V
    .registers 3

    .line 28
    sget v0, Lmiuix/preference/R$id;->area_end2:I

    invoke-virtual {p0, p1, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->findViewByAreaId(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 30
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c

    .line 31
    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    iput-boolean v0, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasWidget:Z

    :cond_1c
    return-void
.end method

.method public onLargeLayoutSelected()I
    .registers 4

    .line 13
    iget-boolean v0, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasTitle:Z

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasSummary:Z

    if-eqz v1, :cond_b

    const/16 v0, 0x55f2

    return v0

    :cond_b
    const/16 v1, 0x520c

    if-eqz v0, :cond_14

    .line 17
    iget-boolean v2, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasSummary:Z

    if-nez v2, :cond_14

    return v1

    :cond_14
    if-nez v0, :cond_1d

    .line 19
    iget-boolean v0, p0, Lmiuix/preference/flexible/AbstractBaseTemplate;->mHasSummary:Z

    if-eqz v0, :cond_1d

    const/16 v0, 0x520d

    return v0

    :cond_1d
    return v1
.end method
