.class public Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;
.super Landroid/widget/LinearLayout;
.source "TaplusRecognitionExpandedTextCard.java"

# interfaces
.implements Lcom/miui/contentextension/text/cardview/ITaplusCardView;
.implements Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCopy:Landroid/widget/TextView;

.field private mHasRecommend:Z

.field private mIsLoading:Z

.field private mLoadingTV:Landroid/widget/TextView;

.field private mMiniScreen:Z

.field private mMoveSend:Z

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mRefreshBar:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mRetry:Landroid/widget/TextView;

.field private mRetryGroup:Landroid/widget/LinearLayout;

.field private mSearch:Landroid/widget/TextView;

.field private mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

.field private mSelectAll:Landroid/widget/TextView;

.field private mSelectedState:I

.field private mStateCached:Z

.field private mStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslate:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSegmentAdapter(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopenLandingPage(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->openLandingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 83
    iput p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectedState:I

    .line 85
    iput-boolean p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mIsLoading:Z

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0025

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p3, 0x1

    .line 112
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f0a01e9

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->setSelectText(Ljava/lang/String;)V

    const v0, 0x7f0a01e8

    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSearch:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01e3

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mCopy:Landroid/widget/TextView;

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ed

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mTranslate:Landroid/widget/TextView;

    .line 125
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/DeviceConfig;->isLanguageInZH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 128
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSearch:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mCopy:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mTranslate:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_96
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSearch:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mCopy:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mTranslate:Landroid/widget/TextView;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/view/View;

    aput-object v0, v4, p2

    aput-object v1, v4, p3

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lcom/miui/contentextension/utils/FolmeUtil;->doAlphas([Landroid/view/View;)V

    .line 134
    invoke-virtual {p0, p2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->onSearchChanged(Z)V

    const v0, 0x7f0a01e4

    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 137
    new-instance v0, Lcom/miui/contentextension/text/adapter/TaplusFlexboxLayoutManager;

    invoke-direct {v0, p1}, Lcom/miui/contentextension/text/adapter/TaplusFlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 139
    invoke-virtual {v0, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 140
    invoke-virtual {v0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    .line 141
    invoke-virtual {v0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 142
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 143
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$1;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$1;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 151
    new-instance p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-direct {p1, p0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;-><init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;)V

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    .line 152
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 154
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->initRecyclerView()V

    const p1, 0x7f0a01f7

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRetryGroup:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01f8

    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRetry:Landroid/widget/TextView;

    .line 158
    new-array p3, p3, [Landroid/view/View;

    aput-object p1, p3, p2

    invoke-static {p3}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    .line 159
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRetry:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01f3

    .line 160
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRefreshBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const p1, 0x7f0a01ee

    .line 161
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mLoadingTV:Landroid/widget/TextView;

    return-void
.end method

.method private doCopy()V
    .registers 7

    const/4 v0, 0x0

    .line 387
    const-string v1, "copy"

    invoke-direct {p0, v1, v0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v4, "nerwords"

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3, v1, v4}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWords()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/Utilities;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private doSearch()V
    .registers 7

    .line 337
    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->isSearchWithQsbClient()Z

    move-result v0

    const-string v1, "taplus_main"

    const-string v2, "Taplus.RecognitionTextCard"

    const-string v3, "search"

    if-eqz v0, :cond_3f

    .line 338
    const-string v0, "doSearch qbs, so return"

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v0, "gsearch"

    invoke-direct {p0, v3, v0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v4, "nerwords"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWords()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getInjectorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/AppsUtils;->openGlobalSearch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 347
    :cond_3f
    const-string v0, "browser"

    invoke-direct {p0, v3, v0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 351
    const-string v0, "doSearch no network, so return"

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001d9

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void

    .line 356
    :cond_5e
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWords()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWordsWithSplit()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$3;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$3;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)V

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/data/common/ThirdContentProvider;->doTextSearch(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/Observer;)V

    return-void
.end method

.method private doSelectAll()V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->isSegmentsEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 445
    :cond_9
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectedState:I

    const/4 v1, 0x1

    if-nez v0, :cond_44

    .line 446
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSelectedNumber()I

    move-result v0

    if-lez v0, :cond_28

    .line 447
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/contentextension/text/TaplusSegmentEvent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/miui/contentextension/text/TaplusSegmentEvent;-><init>(IZ)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 449
    :cond_28
    const-string v0, "selectall"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->doSelectAll()V

    .line 451
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->setSelectText(Ljava/lang/String;)V

    .line 452
    iput v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectedState:I

    goto :goto_5c

    :cond_44
    if-ne v0, v1, :cond_5c

    .line 454
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->doCancelAll()V

    .line 455
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->setSelectText(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 456
    iput v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectedState:I

    :cond_5c
    :goto_5c
    return-void
.end method

.method private doTranslate()V
    .registers 7

    const/4 v0, 0x0

    .line 394
    const-string v1, "translate"

    invoke-direct {p0, v1, v0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "Taplus.RecognitionTextCard"

    if-nez v0, :cond_22

    .line 397
    const-string v0, "doTranslate no network, so return"

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001d9

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void

    .line 401
    :cond_22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->shouldStartAiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 402
    const-string v0, "doTranslate start ai window"

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v2}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWords()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->startAiWindow(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v4, "nerwords"

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3, v1, v4}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_64

    .line 407
    :cond_56
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWords()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$4;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$4;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)V

    invoke-static {v0, v1}, Lcom/miui/contentextension/data/common/ThirdContentProvider;->doTextTranslate(Ljava/lang/String;Lio/reactivex/Observer;)V

    :goto_64
    return-void
.end method

.method private enableTextView(Landroid/widget/TextView;Z)V
    .registers 4

    if-eqz p2, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_5
    const v0, 0x3e99999a    # 0.3f

    .line 300
    :goto_8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 301
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private initRecyclerView()V
    .registers 3

    .line 165
    new-instance v0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;

    invoke-direct {v0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;-><init>()V

    new-instance v1, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->withSelectListener(Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;)Lcom/miui/contentextension/screenshot/DragSelectTouchListener;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method private openLandingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 429
    new-instance v0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-direct {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;-><init>()V

    .line 430
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setCategory(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p2}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setDetailUrl(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/AppsUtils;->generateOpenIntent(Landroid/content/Context;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 435
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "nerwords"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, p3, v2}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 437
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/AppsUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_33
    return-void
.end method

.method private setSelectText(Ljava/lang/String;)V
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/contentextension/utils/ViewUtil;->expandTouchArea(Landroid/view/View;)V

    return-void
.end method

.method private trackTextRecognitionCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 467
    const-string v1, "click_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "selected_number"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWordsWithSplit()Ljava/lang/String;

    move-result-object p1

    const-string v1, "selected_words"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 471
    const-string p1, "skip_type"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_2f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 474
    const-string p1, "search_channel"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_3a
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSegmentCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "words_number"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mHasRecommend:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "has_recommend"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string p1, "module_type"

    const-string p2, "nerwords"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string p1, "page_type"

    const-string p2, "detail_floating"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mMoveSend:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "removesend"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mMiniScreen:Z

    if-eqz p1, :cond_72

    .line 482
    const-string p1, "mini_screen"

    goto :goto_74

    :cond_72
    const-string p1, "half_screen"

    .line 481
    :goto_74
    const-string p2, "screen_type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string p1, "tip"

    const-string p2, "66.3.2.1.1054"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string p1, "G_CLICK"

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public doRetryToRefresh()V
    .registers 3

    .line 513
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 515
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001d9

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionView(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->refresh()V

    return-void
.end method

.method public enableOperations(Z)V
    .registers 6

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.RecognitionTextCard"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_8d

    .line 262
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateCached:Z

    if-eqz p1, :cond_1f

    return-void

    .line 266
    :cond_1f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    .line 267
    iget-object v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSearch:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mCopy:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mTranslate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iput-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateCached:Z

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableOperations: disable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSearch:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 275
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mCopy:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 276
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mTranslate:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 277
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    goto :goto_fb

    .line 279
    :cond_8d
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    if-eqz p1, :cond_fb

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_fb

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableOperations: enable "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSearch:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 282
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mCopy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 283
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mTranslate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 284
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 285
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 286
    iput-boolean v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateCached:Z

    :cond_fb
    :goto_fb
    return-void
.end method

.method public getSegmentCount()I
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getSelectedNumber()I
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedCount()I

    move-result v0

    return v0
.end method

.method public getSelectedWords()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWordsWithSplit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedWordsWithBlank()Ljava/lang/String;
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWordsWithSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 533
    iget-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mIsLoading:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_1c

    goto :goto_1b

    .line 331
    :sswitch_8
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->doRetryToRefresh()V

    goto :goto_1b

    .line 325
    :sswitch_c
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->doTranslate()V

    goto :goto_1b

    .line 328
    :sswitch_10
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->doSelectAll()V

    goto :goto_1b

    .line 319
    :sswitch_14
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->doSearch()V

    goto :goto_1b

    .line 322
    :sswitch_18
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->doCopy()V

    :goto_1b
    return-void

    :sswitch_data_1c
    .sparse-switch
        0x7f0a01e3 -> :sswitch_18
        0x7f0a01e8 -> :sswitch_14
        0x7f0a01e9 -> :sswitch_10
        0x7f0a01ed -> :sswitch_c
        0x7f0a01f8 -> :sswitch_8
    .end sparse-switch
.end method

.method public onSearchChanged(Z)V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSearch:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 294
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mCopy:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 295
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mTranslate:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public onSelectedStateChanged(Z)V
    .registers 3

    if-eqz p1, :cond_14

    .line 307
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10002b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->setSelectText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 308
    iput p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectedState:I

    goto :goto_25

    .line 310
    :cond_14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100228

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->setSelectText(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 311
    iput p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectedState:I

    :goto_25
    return-void
.end method

.method public refresh()V
    .registers 4

    .line 524
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRetryGroup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRefreshBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mLoadingTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mIsLoading:Z

    .line 529
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/data/recognition/ImageRecognition;->doImageRecognize(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setHasRecommend(Z)V
    .registers 2

    .line 233
    iput-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mHasRecommend:Z

    return-void
.end method

.method public setMiniScreen(Z)V
    .registers 2

    .line 241
    iput-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mMiniScreen:Z

    return-void
.end method

.method public setMoveSend(Z)V
    .registers 2

    .line 237
    iput-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mMoveSend:Z

    return-void
.end method

.method public trackTextRecognitionExpose(ZZ)V
    .registers 5

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 489
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSegmentCount()I

    move-result v1

    if-gtz v1, :cond_16

    xor-int/lit8 p1, p1, 0x1

    .line 490
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "network_null"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_16
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSegmentCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "words_number"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mHasRecommend:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "has_recommend"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string p1, "module_type"

    const-string v1, "nerwords"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string p1, "page_type"

    const-string v1, "detail_floating"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "removesend"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string p1, "tip"

    const-string p2, "66.3.2.1.1049"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string p1, "G_EXPOSE"

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackTextRecognitionView(Z)V
    .registers 5

    .line 502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 503
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->getSegmentCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "words_number"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-boolean v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mHasRecommend:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_recommend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "module_type"

    const-string v2, "nerwords"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v1, "page_type"

    const-string v2, "detail_floating"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "removesend"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string p1, "tip"

    const-string v1, "66.3.2.1.2637"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string p1, "G_VIEW"

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updateSegments(Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;Z)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRefreshBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mLoadingTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mIsLoading:Z

    .line 196
    iput-boolean v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mStateCached:Z

    .line 197
    new-instance v2, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;-><init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;)V

    iput-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    .line 198
    iget-object v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 200
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 201
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 202
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->onSearchChanged(Z)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->onSelectedStateChanged(Z)V

    .line 205
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRetryGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->isTextMode()Z

    move-result p1

    if-nez p1, :cond_46

    if-nez p2, :cond_46

    .line 207
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b

    .line 209
    :cond_46
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :goto_4b
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6b

    .line 213
    :cond_51
    iget-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    iget-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSelectAll:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 215
    iget-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRetryGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mSegmentAdapter:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->updateSegments(Ljava/util/List;)V

    .line 222
    :goto_6b
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mMoveSend:Z

    if-eqz p1, :cond_7b

    .line 223
    const-string p1, "Taplus.RecognitionTextCard"

    const-string v0, "updateSegments: track g_expose"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->mMoveSend:Z

    invoke-virtual {p0, p2, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->trackTextRecognitionExpose(ZZ)V

    :cond_7b
    return-void
.end method
