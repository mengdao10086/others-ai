.class public Landroidx/preference/PreferenceGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/preference/PreferenceViewHolder;",
        ">;",
        "Landroidx/preference/Preference$OnPreferenceChangeInternalListener;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mPreferenceResourceDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncRunnable:Ljava/lang/Runnable;

.field private mVisiblePreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 83
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceGroupAdapter$1;-><init>(Landroidx/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 91
    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 101
    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3d

    .line 102
    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->shouldUseGeneratedIds()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    goto :goto_41

    :cond_3d
    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 108
    :goto_41
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    return-void
.end method

.method private createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/ExpandButton;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)",
            "Landroidx/preference/ExpandButton;"
        }
    .end annotation

    .line 290
    new-instance v0, Landroidx/preference/ExpandButton;

    .line 291
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 293
    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroidx/preference/ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 295
    new-instance p2, Landroidx/preference/PreferenceGroupAdapter$3;

    invoke-direct {p2, p0, p1}, Landroidx/preference/PreferenceGroupAdapter$3;-><init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method private createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v3, v2, :cond_85

    .line 223
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 225
    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1e

    goto/16 :goto_82

    .line 229
    :cond_1e
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 230
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v6

    if-ge v4, v6, :cond_2b

    goto :goto_2f

    .line 233
    :cond_2b
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 231
    :cond_2f
    :goto_2f
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :goto_32
    instance-of v6, v5, Landroidx/preference/PreferenceGroup;

    if-nez v6, :cond_39

    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 242
    :cond_39
    check-cast v5, Landroidx/preference/PreferenceGroup;

    .line 243
    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v6

    if-nez v6, :cond_42

    goto :goto_82

    .line 247
    :cond_42
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-direct {p0, v5}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_57

    .line 248
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting an expandable group inside of another expandable group is not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_57
    :goto_57
    invoke-direct {p0, v5}, Landroidx/preference/PreferenceGroupAdapter;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v5

    .line 256
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    .line 257
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 258
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v7

    if-ge v4, v7, :cond_78

    goto :goto_7c

    .line 261
    :cond_78
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 259
    :cond_7c
    :goto_7c
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 269
    :cond_85
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 270
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v2

    if-le v4, v2, :cond_98

    .line 271
    invoke-direct {p0, p1, v1}, Landroidx/preference/PreferenceGroupAdapter;->createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/ExpandButton;

    move-result-object p1

    .line 272
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_98
    return-object v0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 186
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->sortPreferences()V

    .line 187
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_39

    .line 189
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 191
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v3, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    invoke-direct {v3, v2}, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;-><init>(Landroidx/preference/Preference;)V

    .line 195
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 196
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_23
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_33

    .line 200
    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 201
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 202
    invoke-direct {p0, p1, v3}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 206
    :cond_33
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_39
    return-void
.end method

.method private isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z
    .registers 3

    .line 319
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result p1

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method


# virtual methods
.method public getItem(I)Landroidx/preference/Preference;
    .registers 3

    if-ltz p1, :cond_12

    .line 331
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    .line 332
    :cond_9
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 337
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 342
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    .line 345
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 371
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 373
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;-><init>(Landroidx/preference/Preference;)V

    .line 375
    iget-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_13

    return p1

    .line 379
    :cond_13
    iget-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 380
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .registers 3

    .line 420
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 421
    invoke-virtual {p1}, Landroidx/preference/PreferenceViewHolder;->resetState()V

    .line 422
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 49
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;
    .registers 7

    .line 388
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    .line 390
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroidx/preference/R$styleable;->BackgroundStyle:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 393
    sget v2, Landroidx/preference/R$styleable;->BackgroundStyle_android_selectableItemBackground:I

    .line 394
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2e

    .line 396
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1080062

    invoke-static {v2, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 399
    :cond_2e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 401
    iget v1, p2, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_41

    .line 403
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_41
    const v1, 0x1020018

    .line 406
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_59

    .line 408
    iget p2, p2, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    if-eqz p2, :cond_54

    .line 409
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_59

    :cond_54
    const/16 p2, 0x8

    .line 411
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 415
    :cond_59
    :goto_59
    new-instance p2, Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p2, p1}, Landroidx/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .registers 4

    .line 350
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 354
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroidx/preference/Preference;)V
    .registers 3

    .line 360
    iget-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .registers 2

    .line 366
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    return-void
.end method

.method updatePreferences()V
    .registers 4

    .line 117
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    goto :goto_6

    .line 123
    :cond_17
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 125
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v1, v0}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 131
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    .line 134
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 136
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 138
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    .line 169
    :cond_3c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 172
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 173
    invoke-virtual {v1}, Landroidx/preference/Preference;->clearWasDetached()V

    goto :goto_45

    :cond_55
    return-void
.end method
