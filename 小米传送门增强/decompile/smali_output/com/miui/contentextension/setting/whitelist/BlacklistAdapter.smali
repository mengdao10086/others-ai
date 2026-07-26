.class public Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;
.super Lmiuix/recyclerview/card/CardGroupAdapter;
.source "BlacklistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;,
        Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$HeaderHolder;,
        Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/CardGroupAdapter<",
        "Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mAppInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;

.field private final onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;)Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mListener:Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;Lcom/miui/contentextension/utils/AppInfoCaches;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Lmiuix/recyclerview/card/CardGroupAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$1;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;)V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 125
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$2;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$2;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;)V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 35
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mListener:Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;

    .line 36
    iput-object p2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mAppInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .registers 3

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;->getViewType()I

    move-result p1

    return p1
.end method

.method public getPositionData(I)Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;
    .registers 3

    .line 98
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 29
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->onBindViewHolder(Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;I)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;->bindData(Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;
    .registers 6

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p2, v0, :cond_33

    const/16 v0, 0xb

    if-eq p2, v0, :cond_18

    .line 53
    new-instance p2, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;-><init>(Landroid/view/View;)V

    goto :goto_47

    .line 45
    :cond_18
    new-instance p2, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00ed

    .line 46
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mAppInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;-><init>(Landroid/view/View;Landroid/widget/CompoundButton$OnCheckedChangeListener;Lcom/miui/contentextension/utils/AppInfoCaches;Landroid/view/View$OnClickListener;)V

    goto :goto_47

    .line 49
    :cond_33
    new-instance p2, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$HeaderHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d003a

    .line 50
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$HeaderHolder;-><init>(Landroid/view/View;)V

    :goto_47
    return-object p2
.end method

.method public setHasStableIds()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateGroupName(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 102
    :goto_1
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 103
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;

    if-eqz v1, :cond_2d

    .line 104
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;

    .line 105
    iget-boolean v2, v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->isChecked:Z

    if-ne v2, p1, :cond_24

    .line 106
    iget v2, v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->mCount:I

    goto :goto_2a

    .line 108
    :cond_24
    iget v2, v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->mCount:I

    .line 110
    :goto_2a
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_30
    return-void
.end method
