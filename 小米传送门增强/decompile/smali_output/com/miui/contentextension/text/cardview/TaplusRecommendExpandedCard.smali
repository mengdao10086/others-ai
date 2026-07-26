.class public Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;
.super Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;
.source "TaplusRecommendExpandedCard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecommendExpandedCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f080082

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 26
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mInflate:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0026

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070436

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const p1, 0x7f0a0110

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/view/SourceIcon;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

    const/16 p2, 0x28

    .line 31
    invoke-virtual {p1, p2}, Lcom/miui/contentextension/view/SourceIcon;->setRadius(I)V

    const p1, 0x7f0a0112

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendTitle:Landroid/widget/TextView;

    const p1, 0x7f0a010f

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public updateLayoutWidth(II)V
    .registers 8

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    const/4 v1, -0x1

    goto :goto_24

    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_18

    .line 38
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b3

    :goto_13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_24

    :cond_18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b4

    goto :goto_13

    .line 39
    :goto_24
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070464

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 41
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-nez p1, :cond_5a

    move v4, v3

    goto :goto_5b

    :cond_5a
    move v4, v1

    .line 42
    :goto_5b
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_62

    move v1, v3

    .line 43
    :cond_62
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 44
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
