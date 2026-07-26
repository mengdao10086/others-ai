.class public Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;
.super Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;
.source "TaplusRecommendShrinkCard.java"

# interfaces
.implements Lcom/miui/contentextension/text/cardview/ITaplusCardView;


# instance fields
.field private mShrinkTextGroup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mInflate:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0027

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0231

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/view/SourceIcon;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Lcom/miui/contentextension/view/SourceIcon;->onStretchEnd(Z)V

    const p1, 0x7f0a0232

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;->mShrinkTextGroup:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0233

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0230

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getShrinkTextGroup()Landroid/view/View;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;->mShrinkTextGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method
