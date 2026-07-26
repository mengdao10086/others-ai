.class public Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TaplusRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mElevation:I

.field private mExposingItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveSend:Z

.field private mRecommendationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmRecommendationInfos(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtrackRecommendCardClick(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->trackRecommendCardClick(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mElevation:I

    return-void
.end method

.method private trackRecommendCardClick(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-static {p1, v0, v1, v1}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;ZZZ)Ljava/util/Map;

    move-result-object p1

    .line 192
    const-string v0, "module_type"

    const-string v1, "recommend"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "page_type"

    const-string v1, "detail_floating"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-boolean v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mMoveSend:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "removesend"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "tip"

    const-string v1, "66.3.1.1.1053"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "G_CLICK"

    invoke-static {v0, p1}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackRecommendCardExpose(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 144
    invoke-static {p1, v0, p2, v0}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;ZZZ)Ljava/util/Map;

    move-result-object p1

    .line 145
    const-string p2, "module_type"

    const-string v0, "recommend"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string p2, "page_type"

    const-string v0, "detail_floating"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string p2, "tip"

    const-string v0, "66.3.1.1.1048"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string p2, "G_EXPOSE"

    invoke-static {p2, p1}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public clearExposingItems()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearRecommendInfos()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 61
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 38
    check-cast p1, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->onBindViewHolder(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;I)V
    .registers 5

    .line 161
    iget-object v0, p1, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;->mRecommendCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->bindRecommendInfo(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    .line 162
    iget-object v0, p1, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;->mRecommendCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;

    invoke-virtual {p0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;->updateLayoutWidth(II)V

    .line 163
    iget-object v0, p1, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;->mRecommendCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;

    new-instance v1, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;-><init>(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p1, p1, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;->mRecommendCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;
    .registers 3

    .line 154
    new-instance p2, Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance p1, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;

    invoke-direct {p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;)V

    return-object p1
.end method

.method public trackRecommendView(Z)V
    .registers 8

    .line 74
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 80
    :cond_9
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    if-nez v3, :cond_20

    goto :goto_11

    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 84
    invoke-virtual {v3, v2}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setPosition(I)V

    .line 86
    invoke-static {v3, v1, p1, v1}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;ZZZ)Ljava/util/Map;

    move-result-object v3

    .line 87
    const-string v4, "module_type"

    const-string v5, "recommend"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v4, "page_type"

    const-string v5, "detail_floating"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v4, "tip"

    const-string v5, "66.3.1.1.1050"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v4, "G_VIEW"

    invoke-static {v4, v3}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_11

    :cond_44
    return-void
.end method

.method public tryToAddExposingItems(I)V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    .line 101
    invoke-virtual {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 105
    :cond_f
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 106
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-void
.end method

.method public tryToRemoveExposingItems(I)V
    .registers 7

    .line 111
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2d

    sub-long/2addr v0, v2

    .line 114
    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->getCardExposeStayTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_36

    .line 115
    :cond_2d
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method public updateRecommendInfos(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public uploadExposingItems(Z)V
    .registers 5

    .line 124
    iput-boolean p1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mMoveSend:Z

    .line 125
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_b

    return-void

    .line 129
    :cond_b
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mExposingItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_42

    .line 133
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->mRecommendationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    .line 134
    invoke-direct {p0, v1, p1}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->trackRecommendCardExpose(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;Z)V

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setExposed(Z)V

    .line 137
    :cond_42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :cond_46
    return-void
.end method
