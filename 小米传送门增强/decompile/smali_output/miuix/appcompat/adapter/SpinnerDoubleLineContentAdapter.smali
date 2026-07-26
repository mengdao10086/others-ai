.class public Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerDoubleLineContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG_VIEW:I


# instance fields
.field protected mEntries:[Ljava/lang/CharSequence;

.field protected mIconOnlyEnabled:Z

.field protected mIcons:[Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget v0, Lmiuix/appcompat/R$id;->tag_spinner_dropdown_view_double_line:I

    sput v0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIconOnlyEnabled:Z

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getEntry(I)Ljava/lang/CharSequence;
    .registers 4

    .line 170
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    .line 173
    :cond_8
    aget-object p1, v0, p1

    return-object p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private getIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 184
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    .line 187
    :cond_8
    aget-object p1, v0, p1

    return-object p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSummary(I)Ljava/lang/CharSequence;
    .registers 4

    .line 177
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    .line 180
    :cond_8
    aget-object p1, v0, p1

    return-object p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 119
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 124
    sget v1, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 125
    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_spiner_dropdown_view_double_line:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 126
    new-instance p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;-><init>(Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$1;)V

    const v1, 0x1020006

    .line 127
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    .line 128
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    .line 129
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 130
    sget v1, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 133
    :cond_3f
    invoke-direct {p0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntry(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 134
    invoke-direct {p0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 135
    invoke-direct {p0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 137
    sget v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b8

    .line 139
    check-cast v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;

    .line 140
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    const/16 v5, 0x8

    if-nez v3, :cond_6e

    iget-boolean v3, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIconOnlyEnabled:Z

    if-nez v3, :cond_6e

    .line 141
    iget-object v3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_78

    .line 144
    :cond_6e
    iget-object v3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8d

    iget-boolean v3, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIconOnlyEnabled:Z

    if-nez v3, :cond_8d

    .line 148
    iget-object v3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_97

    .line 151
    :cond_8d
    iget-object v1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_97
    if-eqz p1, :cond_b3

    .line 155
    iget-object v1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object p1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b8

    iget-boolean p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIconOnlyEnabled:Z

    if-eqz p1, :cond_b8

    .line 159
    iget-object p1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_b8

    .line 162
    :cond_b3
    iget-object p1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b8
    :goto_b8
    return-object p2
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .line 81
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryIcons()[Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 73
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4

    .line 114
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    if-ltz p1, :cond_d

    array-length v1, v0

    if-lt p1, v1, :cond_a

    goto :goto_d

    :cond_a
    aget-object p1, v0, p1

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 0
    int-to-long v0, p1

    return-wide v0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isIconOnlyEnabled()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIconOnlyEnabled:Z

    return v0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryIcons([I)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 53
    invoke-virtual {p0, v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([Landroid/graphics/drawable/Drawable;)V

    goto :goto_29

    .line 55
    :cond_7
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    :goto_13
    array-length v4, p1

    if-ge v3, v4, :cond_26

    .line 58
    aget v4, p1, v3

    if-lez v4, :cond_21

    .line 59
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_23

    .line 61
    :cond_21
    aput-object v0, v1, v3

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 64
    :cond_26
    invoke-virtual {p0, v1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([Landroid/graphics/drawable/Drawable;)V

    :goto_29
    return-void
.end method

.method public setEntryIcons([Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method
