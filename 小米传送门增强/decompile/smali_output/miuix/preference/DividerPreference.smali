.class public Lmiuix/preference/DividerPreference;
.super Lmiuix/preference/BasePreference;
.source "DividerPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 21
    sget v0, Lmiuix/preference/R$attr;->dividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/DividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 17
    sget v0, Lmiuix/preference/R$style;->Miuix_Preference_DividerPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/DividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/BasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    invoke-direct {p0, p2}, Lmiuix/preference/DividerPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 4

    .line 34
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/preference/R$styleable;->BasePreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget v0, Lmiuix/preference/R$styleable;->BasePreference_clickable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/preference/BasePreference;->setClickable(Z)V

    .line 37
    sget v0, Lmiuix/preference/R$styleable;->BasePreference_cardEnable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/preference/BasePreference;->setCardStyleEnable(Z)V

    .line 38
    sget v0, Lmiuix/preference/R$styleable;->BasePreference_touchAnimationEnable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/preference/BasePreference;->setTouchAnimationEnable(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 7

    .line 44
    invoke-super {p0, p1}, Lmiuix/preference/BasePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 45
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/preference/R$attr;->preferenceCardStyleEnable:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    .line 49
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v4

    if-le v4, v2, :cond_25

    if-ne v3, v2, :cond_25

    :cond_24
    move v1, v2

    .line 50
    :cond_25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_2f

    const/16 v0, 0x8

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void
.end method
