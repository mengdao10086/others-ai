.class public Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;
.super Landroid/widget/RelativeLayout;
.source "TaplusRecommendBaseCard.java"

# interfaces
.implements Lcom/miui/contentextension/text/cardview/ITaplusCardView;


# instance fields
.field protected mInflate:Landroid/view/LayoutInflater;

.field protected mRecommendAbstract:Landroid/widget/TextView;

.field protected mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

.field protected mRecommendTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mInflate:Landroid/view/LayoutInflater;

    return-void
.end method

.method private clearCardData()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

    invoke-virtual {v0}, Lcom/miui/contentextension/view/SourceIcon;->clearIcon()V

    .line 61
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getColor(Ljava/lang/String;Landroid/content/Context;)I
    .registers 3

    .line 202
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_10

    .line 204
    :catch_5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06003a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_10
    return p1
.end method

.method private getDeviceContent(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)I
    .registers 3

    .line 186
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_b

    const p1, 0x7f10022c

    return p1

    :cond_b
    const/4 v0, 0x2

    if-ne v0, p1, :cond_12

    const p1, 0x7f10022b

    return p1

    :cond_12
    const/4 v0, 0x3

    if-ne v0, p1, :cond_19

    const p1, 0x7f10022d

    return p1

    :cond_19
    const/4 v0, 0x4

    if-ne v0, p1, :cond_20

    const p1, 0x7f10022a

    return p1

    :cond_20
    const/4 p1, -0x1

    return p1
.end method

.method private getDeviceDrawable(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)I
    .registers 3

    .line 172
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_b

    const p1, 0x7f08009e

    return p1

    :cond_b
    const/4 v0, 0x2

    if-ne v0, p1, :cond_12

    const p1, 0x7f08009c

    return p1

    :cond_12
    const/4 v0, 0x3

    if-ne v0, p1, :cond_19

    const p1, 0x7f08009d

    return p1

    :cond_19
    const/4 v0, 0x4

    if-ne v0, p1, :cond_20

    const p1, 0x7f08008e

    return p1

    :cond_20
    const/4 p1, -0x1

    return p1
.end method

.method private getNerContent(Lcom/miui/contentextension/data/recognition/Entity;)I
    .registers 3

    .line 146
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/Entity;->getEntityClass()Ljava/lang/String;

    move-result-object p1

    .line 147
    const-string v0, "URL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const p1, 0x7f1001e5

    return p1

    .line 149
    :cond_10
    const-string v0, "TEL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const p1, 0x7f1001e9

    return p1

    .line 151
    :cond_1c
    const-string v0, "LOC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const p1, 0x7f1001e8

    return p1

    .line 153
    :cond_28
    const-string v0, "MAIL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const p1, 0x7f1001e7

    return p1

    :cond_34
    const/4 p1, -0x1

    return p1
.end method

.method private getNerDrawable(Lcom/miui/contentextension/data/recognition/Entity;)I
    .registers 3

    .line 131
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/Entity;->getEntityClass()Ljava/lang/String;

    move-result-object p1

    .line 132
    const-string v0, "URL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const p1, 0x7f08008d

    return p1

    .line 134
    :cond_10
    const-string v0, "TEL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const p1, 0x7f0800a2

    return p1

    .line 136
    :cond_1c
    const-string v0, "LOC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const p1, 0x7f08009b

    return p1

    .line 138
    :cond_28
    const-string v0, "MAIL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const p1, 0x7f080092

    return p1

    :cond_34
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public bindDeviceInfo(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V
    .registers 5

    .line 160
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->clearCardData()V

    if-nez p1, :cond_6

    return-void

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getDeviceContent(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getDeviceDrawable(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/contentextension/view/SourceIcon;->loadIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bindNerInfo(Lcom/miui/contentextension/data/recognition/Entity;)V
    .registers 5

    .line 119
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->clearCardData()V

    if-nez p1, :cond_6

    return-void

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getClipboardContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getNerDrawable(Lcom/miui/contentextension/data/recognition/Entity;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/contentextension/view/SourceIcon;->loadIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getNerContent(Lcom/miui/contentextension/data/recognition/Entity;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public bindRecommendInfo(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 12

    .line 70
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->clearCardData()V

    if-nez p1, :cond_6

    return-void

    .line 76
    :cond_6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getSubTitle()Ljava/util/List;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_97

    .line 81
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;

    invoke-virtual {v5}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 83
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 84
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    invoke-static {}, Lcom/miui/contentextension/utils/DarkModeUtil;->isDarkMode()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;

    invoke-virtual {v5}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;->getDarkColor()Ljava/lang/String;

    move-result-object v5

    goto :goto_49

    :cond_3f
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;

    invoke-virtual {v5}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;->getColor()Ljava/lang/String;

    move-result-object v5

    .line 86
    :goto_49
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 87
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v8, 0x21

    invoke-virtual {v0, v7, v6, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_93

    .line 90
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 91
    const-string v6, " | "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f06003a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 93
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_93

    .line 96
    :cond_88
    iget-object v5, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    .line 97
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_93
    :goto_93
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    .line 101
    :cond_97
    iget-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->getLocalCatRes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 105
    const-string v4, ""

    if-lez v2, :cond_be

    .line 106
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Lcom/miui/contentextension/view/SourceIcon;->loadIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_c7

    .line 108
    :cond_be
    iget-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getSourceIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v4}, Lcom/miui/contentextension/view/SourceIcon;->loadIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_c7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 111
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_df

    .line 113
    :cond_d5
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendAbstract:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_df
    return-void
.end method

.method public getSourceIcon()Lcom/miui/contentextension/view/SourceIcon;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->mRecommendIcon:Lcom/miui/contentextension/view/SourceIcon;

    return-object v0
.end method
