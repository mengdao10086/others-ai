.class public Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;
.super Landroid/widget/LinearLayout;
.source "TaplusRecognitionExpandedCard.java"

# interfaces
.implements Lcom/miui/contentextension/text/cardview/ITaplusCardView;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private mCurrentSelectedItem:I

.field private mHasRefreshed:Z

.field private mImageSwitcher:Landroid/widget/TextView;

.field private mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

.field private mNeedImageRecognition:Z

.field private mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

.field private mRecognitionPager:Lcom/miui/contentextension/view/HorizontalScrollViewPager;

.field private mTextSwitcher:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 36
    iput p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mHasRefreshed:Z

    .line 323
    iput-boolean p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mNeedImageRecognition:Z

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0022

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p3, 0x1

    .line 53
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f08007f

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v0, 0x7f0a01e6

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/view/HorizontalScrollViewPager;

    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionPager:Lcom/miui/contentextension/view/HorizontalScrollViewPager;

    .line 57
    invoke-virtual {v0, p2}, Lcom/miui/contentextension/view/HorizontalScrollViewPager;->setCanHScroll(Z)V

    .line 58
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionPager:Lcom/miui/contentextension/view/HorizontalScrollViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 59
    new-instance v0, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    invoke-direct {v0, p1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    .line 60
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionPager:Lcom/miui/contentextension/view/HorizontalScrollViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const p1, 0x7f0a0280

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mTextSwitcher:Landroid/widget/TextView;

    const p1, 0x7f0a0144

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mImageSwitcher:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mTextSwitcher:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    aput-object v0, v1, p2

    aput-object p1, v1, p3

    invoke-static {v1}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    .line 65
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mTextSwitcher:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mImageSwitcher:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private doSelectedSwitcher()V
    .registers 4

    .line 183
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    .line 184
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mTextSwitcher:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 185
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mImageSwitcher:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1d

    :cond_11
    if-ne v0, v2, :cond_1d

    .line 187
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mTextSwitcher:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 188
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mImageSwitcher:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private doSwitchImageRecognition()V
    .registers 4

    .line 165
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 168
    :cond_6
    iput v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    .line 169
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionPager:Lcom/miui/contentextension/view/HorizontalScrollViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 170
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doSelectedSwitcher()V

    .line 171
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->setRecommendListVisibility()V

    return-void
.end method

.method private doSwitchTextRecognition()V
    .registers 3

    .line 155
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    .line 159
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionPager:Lcom/miui/contentextension/view/HorizontalScrollViewPager;

    invoke-virtual {v1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 160
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doSelectedSwitcher()V

    .line 161
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doRefreshImageRecognition()V

    return-void
.end method

.method private setRecommendListVisibility()V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    if-eqz v0, :cond_2e

    .line 176
    invoke-virtual {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->needShowRecommendList()Z

    move-result v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecommendListVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.RecognitionExpand"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isCurrentInTextMode()Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {v1, v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->setRecommendListVisibility(Z)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public doRefreshImage(ZZ)V
    .registers 7

    .line 326
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 327
    instance-of v2, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    if-eqz v2, :cond_25

    .line 328
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    .line 329
    invoke-virtual {v0, p2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->setMoveSend(Z)V

    .line 330
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->refresh()V

    .line 331
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isCurrentInImageMode()Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz p2, :cond_25

    .line 332
    const-string v2, "Taplus.RecognitionExpand"

    const-string v3, "doRefreshImage: track g_expose"

    invoke-static {v2, v3}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->trackImageRecognitionExpose(Z)V

    :cond_25
    if-eqz p1, :cond_45

    .line 337
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object p1

    .line 338
    instance-of v0, p1, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v0, :cond_45

    .line 339
    check-cast p1, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 340
    invoke-virtual {p1, p2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->setMoveSend(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isCurrentInTextMode()Z

    move-result p2

    if-eqz p2, :cond_43

    .line 342
    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->refresh()V

    .line 343
    iput-boolean v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mHasRefreshed:Z

    goto :goto_45

    .line 346
    :cond_43
    iput-boolean v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mNeedImageRecognition:Z

    :cond_45
    :goto_45
    return-void
.end method

.method public doRefreshImageRecognition()V
    .registers 4

    .line 303
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->isTextMode()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mHasRefreshed:Z

    if-eqz v0, :cond_1d

    :cond_e
    iget-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mNeedImageRecognition:Z

    if-nez v0, :cond_1d

    .line 306
    const-string v0, "Taplus.RecognitionExpand"

    const-string v1, "not time to refresh recognition"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->setRecommendListVisibility()V

    return-void

    .line 311
    :cond_1d
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 312
    instance-of v2, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v2, :cond_32

    .line 313
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 314
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->refresh()V

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mHasRefreshed:Z

    .line 316
    iput-boolean v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mNeedImageRecognition:Z

    :cond_32
    return-void
.end method

.method public doSwitchRecognition(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 89
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doSwitchTextRecognition()V

    goto :goto_9

    .line 91
    :cond_6
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doSwitchImageRecognition()V

    :goto_9
    return-void
.end method

.method public getCurrentSelectedItem()I
    .registers 2

    .line 143
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    return v0
.end method

.method public getSegmentCount()I
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 255
    :cond_6
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 256
    instance-of v2, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v2, :cond_15

    .line 257
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 258
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSegmentCount()I

    move-result v0

    return v0

    :cond_15
    return v1
.end method

.method public getSelectedNumber()I
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 267
    :cond_6
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 268
    instance-of v2, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v2, :cond_15

    .line 269
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 270
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSelectedNumber()I

    move-result v0

    return v0

    :cond_15
    return v1
.end method

.method public getSelectedWords()Ljava/lang/String;
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    const/4 v2, 0x0

    .line 279
    invoke-virtual {v0, v2}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 280
    instance-of v2, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v2, :cond_17

    .line 281
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 282
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSelectedWords()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    return-object v1
.end method

.method public getSelectedWordsWithBlank()Ljava/lang/String;
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    const/4 v2, 0x0

    .line 291
    invoke-virtual {v0, v2}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 292
    instance-of v2, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v2, :cond_17

    .line 293
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 294
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSelectedWordsWithBlank()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    return-object v1
.end method

.method public hasRefreshed()Z
    .registers 2

    .line 365
    iget-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mHasRefreshed:Z

    return v0
.end method

.method public isCurrentInImageMode()Z
    .registers 3

    .line 151
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isCurrentInTextMode()Z
    .registers 2

    .line 147
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mCurrentSelectedItem:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLoading()Z
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 356
    :cond_6
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 357
    instance-of v2, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v2, :cond_15

    .line 358
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 359
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->isLoading()Z

    move-result v0

    return v0

    :cond_15
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0144

    const/4 v1, 0x0

    if-eq p1, v0, :cond_17

    const v0, 0x7f0a0280

    if-eq p1, v0, :cond_10

    goto :goto_1d

    .line 73
    :cond_10
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doSwitchTextRecognition()V

    .line 74
    invoke-virtual {p0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->trackCurRecognitionExpose(Z)V

    goto :goto_1d

    .line 77
    :cond_17
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doSwitchImageRecognition()V

    .line 78
    invoke-virtual {p0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->trackCurRecognitionExpose(Z)V

    :goto_1d
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setHasRecommend(Z)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 224
    instance-of v1, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v1, :cond_13

    .line 225
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 226
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->setHasRecommend(Z)V

    .line 228
    :cond_13
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 229
    instance-of v1, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    if-eqz v1, :cond_23

    .line 230
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    .line 231
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->setHasRecommend(Z)V

    :cond_23
    return-void
.end method

.method public setMainFloatView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    return-void
.end method

.method public setOperatorEnable(Z)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 240
    instance-of v1, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v1, :cond_13

    .line 241
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 242
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableOperations(Z)V

    .line 244
    :cond_13
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 245
    instance-of v1, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    if-eqz v1, :cond_23

    .line 246
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    .line 247
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->enableOperations(Z)V

    :cond_23
    return-void
.end method

.method public trackCurRecognitionExpose(Z)V
    .registers 7

    .line 112
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    if-nez v0, :cond_5

    return-void

    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isCurrentInTextMode()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "trackCurRecognitionExpose: track g_expose"

    const-string v3, "Taplus.RecognitionExpand"

    if-eqz v0, :cond_3e

    .line 117
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 118
    instance-of v4, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v4, :cond_6c

    .line 119
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 120
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_32

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_32

    return-void

    .line 123
    :cond_32
    invoke-static {v3, v2}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0, v1, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionExpose(ZZ)V

    .line 125
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_6c

    .line 128
    :cond_3e
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 129
    instance-of v1, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    if-eqz v1, :cond_6c

    .line 130
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    .line 131
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_61

    if-nez p1, :cond_61

    return-void

    .line 134
    :cond_61
    invoke-static {v3, v2}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->trackImageRecognitionExpose(Z)V

    .line 136
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public trackRecognitionView(Z)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v1, :cond_13

    .line 101
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 102
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionView(Z)V

    .line 104
    :cond_13
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 105
    instance-of v1, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    if-eqz v1, :cond_23

    .line 106
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    .line 107
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->trackImageRecognitionView(Z)V

    :cond_23
    return-void
.end method

.method public updateSegments(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;Z)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    if-nez v0, :cond_5

    return-void

    .line 211
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSegments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.RecognitionExpand"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->mRecognitionAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    move-result-object v0

    .line 213
    instance-of v1, v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    if-eqz v1, :cond_2b

    .line 214
    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    .line 215
    invoke-virtual {v0, p1, p2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->updateSegments(Ljava/util/List;Z)V

    :cond_2b
    return-void
.end method
