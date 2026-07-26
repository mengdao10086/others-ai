.class public Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TaplusRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendViewHolder"
.end annotation


# instance fields
.field public mRecommendCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;


# direct methods
.method public constructor <init>(Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;)V
    .registers 2

    .line 209
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 210
    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;->mRecommendCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;

    return-void
.end method
