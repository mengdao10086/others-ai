.class public Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;
.super Ljava/lang/Object;
.source "TextRecommendationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;
    }
.end annotation


# instance fields
.field private canOpenWithApp:Z

.field private cat:Ljava/lang/String;

.field private commercialize:Z

.field private commercializePackage:Ljava/lang/String;

.field private detailUrl:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private isExposed:Z

.field private isReselected:Z

.field private mid:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private position:I

.field private reselectedWay:Ljava/lang/String;

.field private sourceIcon:Ljava/lang/String;

.field private subTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isExposed:Z

    .line 20
    iput-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->canOpenWithApp:Z

    .line 21
    iput-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isReselected:Z

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->reselectedWay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isExposed:Z

    .line 20
    iput-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->canOpenWithApp:Z

    .line 21
    iput-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isReselected:Z

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->reselectedWay:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->intent:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->detailUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCommercialize()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->commercialize:Z

    return v0
.end method

.method public getCommercializePackage()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->commercializePackage:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->position:I

    return v0
.end method

.method public getReselectedWay()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->reselectedWay:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIcon()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->sourceIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->subTitle:Ljava/util/List;

    if-nez v0, :cond_9

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    return-object v0
.end method

.method public getSubTitleDesc()Ljava/lang/String;
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->subTitle:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->subTitle:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_21

    .line 94
    :cond_14
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->subTitle:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;

    invoke-virtual {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_21
    :goto_21
    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCanOpenWithApp()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->canOpenWithApp:Z

    return v0
.end method

.method public isExposed()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isExposed:Z

    return v0
.end method

.method public isReselected()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isReselected:Z

    return v0
.end method

.method public setCanOpenWithApp(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->canOpenWithApp:Z

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->cat:Ljava/lang/String;

    return-void
.end method

.method public setCommercializePackage(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->commercializePackage:Ljava/lang/String;

    return-void
.end method

.method public setDetailUrl(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->detailUrl:Ljava/lang/String;

    return-void
.end method

.method public setExposed(Z)V
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isExposed:Z

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->position:I

    return-void
.end method

.method public setReselected(Z)V
    .registers 2

    .line 64
    iput-boolean p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isReselected:Z

    return-void
.end method

.method public setReselectedWay(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->reselectedWay:Ljava/lang/String;

    return-void
.end method
