.class public Lmiuix/preference/CheckBoxPreference;
.super Lmiuix/preference/BaseCheckBoxPreference;
.source "CheckBoxPreference.java"


# instance fields
.field private mItemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lmiuix/preference/BaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    .line 33
    invoke-super {p0, p1}, Lmiuix/preference/BaseCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 34
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lmiuix/preference/CheckBoxPreference;->mItemView:Landroid/view/View;

    const v0, 0x1020001

    .line 35
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lmiuix/preference/BaseCheckBoxPreference;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1a
    return-void
.end method

.method protected onClick()V
    .registers 4

    .line 43
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 44
    iget-object v0, p0, Lmiuix/preference/CheckBoxPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 45
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    :cond_e
    return-void
.end method
