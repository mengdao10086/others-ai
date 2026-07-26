.class public Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;
.super Lcom/miui/contentextension/text/floatview/BaseFloatView;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;
.implements Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;
.implements Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;
.implements Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnNerReadyListener;
.implements Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnDeviceReadyListener;
.implements Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnCopyRecommendReadyListener;


# instance fields
.field private height:I

.field private isMoved:Z

.field private mClipboardCard:Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

.field private final mDeviceRecommendCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRecommendCard:Z

.field private mIsClipboardView:Z

.field private mIsDeviceReady:Z

.field private mIsLoading:Z

.field private mIsNerReady:Z

.field private mIsSegmentReady:Z

.field private mIsViewStubInflated:Z

.field private mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

.field private mMiContinuityService:Lcom/miui/contentextension/clipboard/MiContinuityService;

.field private final mNerEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final mNerRecommendCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;",
            ">;"
        }
    .end annotation
.end field

.field private mNerType:I

.field private mOcrDisposable:Lio/reactivex/disposables/Disposable;

.field private mPeddingAnimator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

.field private mRecognitionCard2:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

.field private mRecommendCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDuration:J

.field private yDown:F


# direct methods
.method public static synthetic $r8$lambda$9MI1Vgpp3KRN7JLKVCDscjHUb60(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->lambda$initView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$eV4_10_U1jHkRdlTz-ozYy2Hx18(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showDevicesRecommendCards()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mClipboardCard:Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsClipboardView(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsClipboardView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiContinuityService(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/clipboard/MiContinuityService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mMiContinuityService:Lcom/miui/contentextension/clipboard/MiContinuityService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNerEntities(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNerType(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mPeddingAnimator:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard2:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecommends(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteDevices(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRemoteDevices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMiContinuityService(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/MiContinuityService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mMiContinuityService:Lcom/miui/contentextension/clipboard/MiContinuityService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearClipboardDataIfNeed(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->clearClipboardDataIfNeed(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateContinuityChannel(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->createContinuityChannel(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetModuleType(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->getModuleType(Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendBroadcastByMiuiPlus(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->sendBroadcastByMiuiPlus(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowClipboardFloatView(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showClipboardFloatView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDevicesRecommendCards(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showDevicesRecommendCards()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOtherNerRecommendCards(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showOtherNerRecommendCards()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOtherRecommends(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showOtherRecommends()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRecognizeFloatView(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showRecognizeFloatView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrackRecognitionCardClick(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->trackRecognitionCardClick(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrackRecognitionCardExpose(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->trackRecognitionCardExpose(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrackRecommendCardClick(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->trackRecommendCardClick(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrackRecommendCardExpose(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->trackRecommendCardExpose(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/contentextension/services/TextContentExtensionService;Z)V
    .registers 4

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/text/floatview/BaseFloatView;-><init>(Landroid/content/Context;Lcom/miui/contentextension/services/TextContentExtensionService;)V

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mPeddingAnimator:Ljava/util/List;

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mHasRecommendCard:Z

    const/4 p2, 0x1

    .line 136
    iput-boolean p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsLoading:Z

    .line 137
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    .line 139
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    .line 145
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->isMoved:Z

    .line 151
    iput p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerType:I

    .line 152
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    .line 153
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRemoteDevices:Ljava/util/List;

    .line 155
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    .line 156
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mDeviceRecommendCards:Ljava/util/List;

    .line 158
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsNerReady:Z

    .line 159
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsDeviceReady:Z

    .line 165
    iput-boolean p3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsClipboardView:Z

    return-void
.end method

.method private clearClipboardDataIfNeed(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 4

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearClipboardDataIfNeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercialize()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SplashFloatView"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercialize()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsClipboardView:Z

    if-eqz p1, :cond_3f

    .line 613
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_3f

    .line 615
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    :cond_3f
    return-void
.end method

.method private createContinuityChannel(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V
    .registers 5

    .line 1189
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getClipboardContent()Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1191
    const-string p1, "Taplus.SplashFloatView"

    const-string v0, "sendBroadcastByMiuiPlus: content is empty"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1195
    :cond_12
    new-instance v0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;

    invoke-direct {v0}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;-><init>()V

    const/4 v1, 0x0

    .line 1196
    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->setConnectMediumType(I)V

    const/16 v1, 0x10

    .line 1197
    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->setTrustLevel(I)V

    const/16 v1, 0x2710

    .line 1198
    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->setTimeout(I)V

    .line 1199
    new-instance v1, Lcom/xiaomi/continuity/ServiceName$Builder;

    invoke-direct {v1}, Lcom/xiaomi/continuity/ServiceName$Builder;-><init>()V

    const-string v2, "ContentExtensionService"

    .line 1200
    invoke-virtual {v1, v2}, Lcom/xiaomi/continuity/ServiceName$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    .line 1201
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/continuity/ServiceName$Builder;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName$Builder;

    move-result-object v1

    .line 1202
    invoke-virtual {v1}, Lcom/xiaomi/continuity/ServiceName$Builder;->build()Lcom/xiaomi/continuity/ServiceName;

    move-result-object v1

    .line 1204
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mMiContinuityService:Lcom/miui/contentextension/clipboard/MiContinuityService;

    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1, v0}, Lcom/miui/contentextension/clipboard/MiContinuityService;->createChannel(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;)I

    move-result p1

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.ContentExtension"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createMiContinuityService()V
    .registers 5

    .line 203
    const-string v0, "Taplus.ContentExtension"

    const-string v1, "createMiContinuityService"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/contentextension/clipboard/MiContinuityService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$1;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private generateDeviceCard(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Landroid/widget/LinearLayout;)Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;
    .registers 8

    .line 1138
    new-instance v0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;-><init>(Landroid/content/Context;)V

    .line 1139
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070426

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1141
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1142
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07041f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setElevation(F)V

    .line 1143
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1144
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080084

    .line 1145
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenDensityDpi()I

    move-result v4

    .line 1144
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1146
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->bindDeviceInfo(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V

    .line 1148
    new-instance v2, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;

    invoke-direct {v2, p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x4

    .line 1161
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p2, :cond_66

    .line 1163
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_66
    return-object v0
.end method

.method private generateNerCard(Lcom/miui/contentextension/data/recognition/Entity;Landroid/widget/LinearLayout;)Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;
    .registers 8

    .line 1088
    new-instance v0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;-><init>(Landroid/content/Context;)V

    .line 1089
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070426

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1091
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1092
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07041f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setElevation(F)V

    .line 1093
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1094
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080084

    .line 1095
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenDensityDpi()I

    move-result v4

    .line 1094
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->bindNerInfo(Lcom/miui/contentextension/data/recognition/Entity;)V

    .line 1098
    new-instance v2, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;

    invoke-direct {v2, p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/Entity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x4

    .line 1113
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateNerCard: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Taplus.SplashFloatView"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7c

    .line 1116
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7c
    return-object v0
.end method

.method private getBorder(II)I
    .registers 5

    add-int v0, p1, p2

    .line 340
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenHeight()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 341
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenHeight()I

    move-result p1

    sub-int/2addr p1, p2

    .line 342
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBorder: splash too bottom, y = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Taplus.SplashFloatView"

    invoke-static {v0, p2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return p1
.end method

.method private getModuleType(Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 900
    :cond_4
    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getType()I

    move-result p1

    if-nez p1, :cond_d

    .line 901
    const-string p1, "nerwords"

    return-object p1

    .line 903
    :cond_d
    const-string p1, "newimage"

    return-object p1
.end method

.method private getNormalYOffsetByInjectorPoint(Landroid/graphics/Point;)I
    .registers 7

    .line 259
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/SystemBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070420

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 263
    const-string v2, "Taplus.SplashFloatView"

    if-nez p1, :cond_35

    .line 264
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    sub-int/2addr p1, v1

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getYOffsetByInjectorPoint: point is null, y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 267
    :cond_35
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07044b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 268
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenHeight()I

    move-result v4

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p1

    if-le v4, v3, :cond_61

    sub-int/2addr p1, v1

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getYOffsetByInjectorPoint: normal state, y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 272
    :cond_61
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenHeight()I

    move-result p1

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getYOffsetByInjectorPoint: offset not enough, y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_7b
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCurrentInDoubleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_85

    add-int/lit16 p1, p1, -0xfa

    :cond_85
    if-ge p1, v0, :cond_88

    goto :goto_89

    :cond_88
    move v0, p1

    :goto_89
    return v0
.end method

.method private getSpecialYOffsetByInjectorPoint(Landroid/graphics/Point;)I
    .registers 14

    .line 287
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/SystemBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070420

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 289
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07044b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 291
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getInjectorActivity()Ljava/lang/String;

    move-result-object v3

    .line 292
    const-string v4, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070402

    :goto_37
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_46

    :cond_3c
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070401

    goto :goto_37

    .line 295
    :goto_46
    iget-object v4, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {v4}, Lcom/miui/contentextension/services/TextContentExtensionService;->getContentRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 297
    const-string v5, "Taplus.SplashFloatView"

    if-nez p1, :cond_6d

    .line 298
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    sub-int/2addr p1, v1

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getYOffsetByInjectorPoint: point is null, y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    .line 301
    :cond_6d
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    const/16 v7, 0x3e8

    const-wide v8, 0x3fd3333333333333L    # 0.3

    if-ltz v6, :cond_cd

    float-to-double v10, v1

    cmpg-double v6, v10, v8

    if-gtz v6, :cond_cd

    if-eqz v4, :cond_af

    .line 304
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    if-ge v6, v7, :cond_af

    add-int/2addr v1, v3

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ratio >= 0 && ratio <= 0.2: has viewRect, y = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "--viewRect:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 308
    :cond_af
    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int v1, p1, v3

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ratio >= 0 && ratio <= 0.2: no viewRect, y = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_c7
    invoke-direct {p0, v1, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->getBorder(II)I

    move-result p1

    goto/16 :goto_156

    :cond_cd
    float-to-double v10, v1

    cmpl-double v1, v10, v8

    if-lez v1, :cond_119

    const-wide v8, 0x3fe3333333333333L    # 0.6

    cmpg-double v1, v10, v8

    if-gtz v1, :cond_119

    if-eqz v4, :cond_fc

    .line 314
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    const/16 v7, 0xfa

    if-ge v6, v7, :cond_fc

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ratio > 0.2 && ratio <= 0.6: has viewRect, y = --viewRect:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    .line 318
    :cond_fc
    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int v1, p1, v3

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ratio > 0.2 && ratio <= 0.6: no viewRect, y = --viewRect:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_114
    invoke-direct {p0, v1, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->getBorder(II)I

    move-result p1

    goto :goto_156

    :cond_119
    if-eqz v4, :cond_139

    .line 323
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    if-ge v1, v7, :cond_139

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "else: has viewRect, y = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152

    .line 327
    :cond_139
    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v3

    sub-int v4, p1, v2

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "else: no viewRect, y = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_152
    invoke-direct {p0, v4, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->getBorder(II)I

    move-result p1

    :goto_156
    if-ge p1, v0, :cond_159

    goto :goto_15a

    :cond_159
    move v0, p1

    :goto_15a
    return v0
.end method

.method private getYOffset()I
    .registers 5

    .line 239
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getInjectorPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCurrentInDoubleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 241
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->getFirstTouchPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->getSecondTouchPoint()Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v1, :cond_39

    if-eqz v2, :cond_39

    .line 244
    iget v0, v1, Landroid/graphics/PointF;->y:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 245
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 246
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    .line 249
    :cond_39
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getInjectorActivity()Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->getContentRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_61

    const-string v2, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "com.tencent.mobileqq.activity.SplashActivity"

    .line 251
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 252
    :cond_55
    const-string v1, "Taplus.SplashFloatView"

    const-string v2, "getYOffsetByInjectorPoint: enter special"

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->getSpecialYOffsetByInjectorPoint(Landroid/graphics/Point;)I

    move-result v0

    return v0

    .line 255
    :cond_61
    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->getNormalYOffsetByInjectorPoint(Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method

.method private inflateViewStub()V
    .registers 3

    .line 639
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsClipboardView:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0a00b5

    goto :goto_d

    :cond_a
    const v1, 0x7f0a02ae

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_18

    .line 641
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_18
    const/4 v0, 0x1

    .line 643
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    return-void
.end method

.method private initDevicesCards()V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1122
    iget-boolean v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsDeviceReady:Z

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRemoteDevices:Ljava/util/List;

    if-eqz v2, :cond_45

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_45

    .line 1125
    :cond_11
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v3, 0x7f0a00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1127
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRemoteDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    add-int/2addr v4, v0

    const/4 v6, 0x4

    if-le v4, v6, :cond_34

    goto :goto_45

    .line 1131
    :cond_34
    invoke-direct {p0, v5, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->generateDeviceCard(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Landroid/widget/LinearLayout;)Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    move-result-object v5

    .line 1132
    new-array v6, v0, [Landroid/view/View;

    aput-object v5, v6, v1

    invoke-static {v6}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    .line 1133
    iget-object v6, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mDeviceRecommendCards:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_45
    :goto_45
    return-void
.end method

.method private initEditorCard(Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;)V
    .registers 5

    const/4 v0, 0x4

    .line 950
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080084

    .line 952
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenDensityDpi()I

    move-result v2

    .line 951
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 953
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 954
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 955
    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 956
    new-instance v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$13;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$13;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 969
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    const v0, 0x7f0800a3

    .line 970
    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;->setRecognitionIcon(I)V

    .line 971
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const v1, 0x7f1000f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 972
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private initEditorCards()V
    .registers 3

    .line 945
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mClipboardCard:Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    .line 946
    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initEditorCard(Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;)V

    return-void
.end method

.method private initNersCards()V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1068
    iget-boolean v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsNerReady:Z

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    if-eqz v2, :cond_56

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_56

    .line 1071
    :cond_11
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v3, 0x7f0a019f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2d

    .line 1073
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_28

    move v3, v1

    goto :goto_2a

    :cond_28
    const/16 v3, 0x8

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1076
    :cond_2d
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/data/recognition/Entity;

    add-int/2addr v4, v0

    const/4 v6, 0x3

    if-le v4, v6, :cond_45

    goto :goto_56

    .line 1081
    :cond_45
    invoke-direct {p0, v5, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->generateNerCard(Lcom/miui/contentextension/data/recognition/Entity;Landroid/widget/LinearLayout;)Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    move-result-object v5

    .line 1082
    new-array v6, v0, [Landroid/view/View;

    aput-object v5, v6, v1

    invoke-static {v6}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    .line 1083
    iget-object v6, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_56
    :goto_56
    return-void
.end method

.method private initRecognitionCard(Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)V
    .registers 5

    const/4 v0, 0x4

    .line 647
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080084

    .line 649
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenDensityDpi()I

    move-result v2

    .line 648
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 650
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 652
    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 653
    new-instance v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;

    invoke-direct {v0, p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 661
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    .line 662
    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getType()I

    move-result v1

    if-nez v1, :cond_6a

    const v0, 0x7f0800a3

    .line 663
    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->setRecognitionIcon(I)V

    const v0, 0x7f100285

    .line 664
    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->setRecognitionText(I)V

    .line 665
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const v1, 0x7f100286

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 666
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_8d

    .line 667
    :cond_6a
    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getType()I

    move-result v1

    if-ne v1, v0, :cond_8d

    const v0, 0x7f080093

    .line 668
    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->setRecognitionIcon(I)V

    const v0, 0x7f100156

    .line 669
    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->setRecognitionText(I)V

    .line 670
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const v1, 0x7f100157

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 671
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private initRecognitionCards()V
    .registers 4

    .line 621
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a01e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    .line 623
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->isTextMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->isOtherMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_21

    .line 626
    :cond_1b
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->setType(I)V

    goto :goto_27

    .line 624
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->setType(I)V

    .line 628
    :goto_27
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initRecognitionCard(Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)V

    .line 629
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->isOtherMode()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 630
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v2, 0x7f0a01e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard2:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    if-eqz v0, :cond_49

    .line 632
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->setType(I)V

    .line 633
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard2:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initRecognitionCard(Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)V

    :cond_49
    return-void
.end method

.method private initRecommendCards()V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 559
    iget-boolean v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mHasRecommendCard:Z

    if-nez v2, :cond_7

    return-void

    .line 562
    :cond_7
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsClipboardView:Z

    if-eqz v3, :cond_11

    const v3, 0x7f0a019f

    goto :goto_14

    :cond_11
    const v3, 0x7f0a01ef

    :goto_14
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 564
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    add-int/2addr v4, v0

    const/4 v6, 0x3

    if-le v4, v6, :cond_32

    goto :goto_a9

    .line 569
    :cond_32
    invoke-virtual {v5, v4}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setPosition(I)V

    .line 570
    new-instance v6, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    iget-object v7, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;-><init>(Landroid/content/Context;)V

    .line 571
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget-object v8, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070426

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 573
    iget-object v8, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 574
    iget-object v9, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07041f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setElevation(F)V

    .line 575
    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 576
    iget-object v8, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080084

    .line 577
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenDensityDpi()I

    move-result v10

    .line 576
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 578
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    invoke-virtual {v6, v5}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->bindRecommendInfo(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    .line 580
    new-instance v8, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;

    invoke-direct {v8, p0, v5}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x4

    .line 601
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 602
    new-array v5, v0, [Landroid/view/View;

    aput-object v6, v5, v1

    invoke-static {v5}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    .line 603
    iget-object v5, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_21

    .line 605
    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_21

    :cond_a9
    :goto_a9
    return-void
.end method

.method private initView()V
    .registers 5

    .line 348
    new-instance v0, Lcom/miui/contentextension/view/SessionRelativeLayout;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/contentextension/view/SessionRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    .line 349
    invoke-virtual {v0, p0}, Lcom/miui/contentextension/view/SessionRelativeLayout;->setListener(Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;)V

    .line 350
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsClipboardView:Z

    if-eqz v0, :cond_21

    .line 351
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d002d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_31

    .line 353
    :cond_21
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d0031

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 355
    :goto_31
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$2;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$2;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    .line 370
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080083

    .line 371
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenDensityDpi()I

    move-result v3

    .line 370
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsLoading:Z

    .line 374
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initWindow()V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    .line 221
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1050328

    .line 222
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x800035

    .line 229
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 230
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07044d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 231
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 232
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 233
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 234
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 235
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "TaplusSplashFloatView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isSupportLyra()Z
    .registers 5

    const/4 v0, 0x1

    .line 190
    :try_start_1
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 191
    const-string v2, "com.xiaomi.mi_connect_service"

    const/16 v3, 0x80

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 193
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3a

    .line 194
    const-string v2, "com.xiaomi.continuity.VERSION_CODE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1f

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v3

    :goto_1e
    return v0

    :catch_1f
    move-exception v1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUnsupportedLyra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.SplashFloatView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return v0
.end method

.method private synthetic lambda$initView$0()V
    .registers 4

    .line 375
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-eqz v0, :cond_5

    return-void

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 380
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 381
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$3;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$3;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    .line 383
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 393
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mPeddingAnimator:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mLoadingCard:Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private needGetRemoteDeviceList(I)Z
    .registers 5

    .line 1429
    sget-object v0, Lcom/miui/contentextension/utils/MiLinkUtil;->INSTANCE:Lcom/miui/contentextension/utils/MiLinkUtil;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/MiLinkUtil;->miLinkIsOpen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 1432
    :cond_c
    invoke-static {}, Lcom/miui/contentextension/App;->isMiuiLiteRom()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    if-eqz p1, :cond_1b

    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x1

    return p1

    .line 1436
    :cond_1b
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no need to get device, type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.SplashFloatView"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private sendBroadcastByMiuiPlus(Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V
    .registers 7

    .line 1169
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getClipboardContent()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Taplus.SplashFloatView"

    if-eqz v1, :cond_12

    .line 1171
    const-string p1, "sendBroadcastByMiuiPlus: content is empty"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1174
    :cond_12
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result v1

    .line 1175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcastByMiuiPlus platform:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v2, v1, :cond_5b

    const/4 v3, 0x2

    if-ne v3, v1, :cond_31

    goto :goto_5b

    :cond_31
    const/4 v3, 0x3

    if-ne v3, v1, :cond_44

    .line 1179
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;

    move-result-object p1

    invoke-static {v2, v0}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->generateWindowIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->sendBroadcast(Landroid/content/Intent;)I

    goto :goto_6c

    :cond_44
    const/4 v3, 0x4

    if-ne v3, v1, :cond_6c

    .line 1183
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;

    move-result-object v1

    .line 1184
    invoke-static {v2, v0}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->generateCarIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getIdFromMiuiPlus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->sendBroadcastAsDevice(Landroid/content/Intent;Ljava/lang/String;)I

    goto :goto_6c

    .line 1177
    :cond_5b
    :goto_5b
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;

    move-result-object p1

    iget v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerType:I

    invoke-static {v1, v0}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->generatePhonePadIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->sendBroadcast(Landroid/content/Intent;)I

    :cond_6c
    :goto_6c
    return-void
.end method

.method private shouldShowTalkBack()Z
    .registers 2

    .line 492
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->isOtherMode()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    .line 493
    invoke-static {v0}, Lcom/miui/contentextension/utils/AccessibilityUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private showClipboardFloatView()V
    .registers 2

    .line 483
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->inflateViewStub()V

    .line 484
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initEditorCards()V

    .line 485
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showEditorCards()V

    .line 486
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsNerReady:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsDeviceReady:Z

    if-eqz v0, :cond_18

    .line 487
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showNersAndDevicesFloatView()V

    :cond_18
    return-void
.end method

.method private showDevicesRecommendCards()V
    .registers 9

    .line 1336
    iget v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerType:I

    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->needGetRemoteDeviceList(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1337
    const-string v0, "Taplus.SplashFloatView"

    const-string v1, "no need show device list"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1340
    :cond_10
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mDeviceRecommendCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRemoteDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_85

    .line 1344
    :cond_21
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mDeviceRecommendCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1345
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRemoteDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1348
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mDeviceRecommendCards:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 1349
    new-instance v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;

    invoke-direct {v3, p0, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    if-le v0, v2, :cond_58

    if-le v1, v2, :cond_58

    .line 1368
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mDeviceRecommendCards:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 1369
    new-instance v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$22;

    invoke-direct {v3, p0, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$22;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59

    :cond_58
    move-wide v6, v4

    :goto_59
    const/4 v2, 0x2

    if-le v0, v2, :cond_6f

    if-le v1, v2, :cond_6f

    add-long/2addr v6, v4

    .line 1388
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mDeviceRecommendCards:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 1389
    new-instance v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$23;

    invoke-direct {v3, p0, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$23;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6f
    const/4 v2, 0x3

    if-le v0, v2, :cond_85

    if-le v1, v2, :cond_85

    add-long/2addr v6, v4

    .line 1408
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mDeviceRecommendCards:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 1409
    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$24;

    invoke-direct {v1, p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$24;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_85
    :goto_85
    return-void
.end method

.method private showEditorCards()V
    .registers 3

    .line 976
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mClipboardCard:Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showNerRecommendCards()V
    .registers 5

    const/4 v0, 0x0

    .line 1209
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsLoading:Z

    .line 1211
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1f

    .line 1216
    :cond_e
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 1217
    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    invoke-direct {v1, p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1212
    :cond_1f
    :goto_1f
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showNersAndDevicesFloatView()V
    .registers 1

    .line 1062
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initNersCards()V

    .line 1063
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initDevicesCards()V

    .line 1064
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showNerRecommendCards()V

    return-void
.end method

.method private showOtherNerRecommendCards()V
    .registers 8

    .line 1279
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_60

    .line 1283
    :cond_11
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1284
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    if-le v0, v4, :cond_36

    if-le v1, v4, :cond_36

    .line 1288
    iget-object v5, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 1289
    new-instance v5, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$18;

    invoke-direct {v5, p0, v4}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$18;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-wide v4, v2

    goto :goto_38

    :cond_36
    const-wide/16 v4, 0x0

    :goto_38
    const/4 v6, 0x2

    if-le v0, v6, :cond_4e

    if-le v1, v6, :cond_4e

    add-long/2addr v4, v2

    .line 1309
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 1310
    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$19;

    invoke-direct {v1, p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$19;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1327
    :cond_4e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$20;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$20;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_60
    :goto_60
    return-void
.end method

.method private showOtherRecommends()V
    .registers 8

    .line 747
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4e

    .line 751
    :cond_11
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 752
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    if-le v0, v4, :cond_36

    if-le v1, v4, :cond_36

    .line 756
    iget-object v5, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 757
    new-instance v5, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;

    invoke-direct {v5, p0, v4}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-wide v4, v2

    goto :goto_38

    :cond_36
    const-wide/16 v4, 0x0

    :goto_38
    const/4 v6, 0x2

    if-le v0, v6, :cond_4e

    if-le v1, v6, :cond_4e

    add-long/2addr v4, v2

    .line 777
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 778
    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$10;

    invoke-direct {v1, p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$10;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4e
    :goto_4e
    return-void
.end method

.method private showRecognitionCards()V
    .registers 3

    .line 798
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showRecognizeFloatView()V
    .registers 2

    .line 470
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->inflateViewStub()V

    .line 471
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initRecognitionCards()V

    .line 472
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showRecognitionCards()V

    .line 473
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->talkBackForImageIfNeed()V

    .line 474
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mHasRecommendCard:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsSegmentReady:Z

    if-eqz v0, :cond_1b

    .line 475
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showRecommendFloatView()V

    :cond_1b
    return-void
.end method

.method private showRecommendCards()V
    .registers 5

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/contentextension/analy/Analy;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mStartDuration:J

    const/4 v0, 0x0

    .line 677
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsLoading:Z

    .line 679
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2f

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1f

    goto :goto_2f

    .line 683
    :cond_1f
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    .line 684
    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$8;

    invoke-direct {v1, p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$8;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method private showRecommendFloatView()V
    .registers 1

    .line 554
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initRecommendCards()V

    .line 555
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showRecommendCards()V

    return-void
.end method

.method private talkBackForImageIfNeed()V
    .registers 3

    .line 498
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->shouldShowTalkBack()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 499
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 500
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBackupBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_18

    return-void

    .line 502
    :cond_18
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mOcrDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_27

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_27

    .line 503
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mOcrDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 505
    :cond_27
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$5;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$5;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/data/recognition/network/ComposeTransformer;

    invoke-direct {v1}, Lcom/miui/contentextension/data/recognition/network/ComposeTransformer;-><init>()V

    .line 523
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$4;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$4;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    .line 524
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mOcrDisposable:Lio/reactivex/disposables/Disposable;

    :cond_4a
    return-void
.end method

.method private trackRecognitionCardClick(Ljava/lang/String;)V
    .registers 5

    .line 1492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1493
    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mHasRecommendCard:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_recommend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    const-string v1, "module_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const-string v1, "page_type"

    const-string v2, "start_floating"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "removesend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    const-string v1, "nerwords"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1500
    const-string p1, "66.2.2.1.1052"

    goto :goto_30

    .line 1502
    :cond_2e
    const-string p1, "66.2.4.1.2561"

    .line 1504
    :goto_30
    const-string v1, "tip"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const-string p1, "G_CLICK"

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackRecognitionCardExpose(Ljava/lang/String;)V
    .registers 5

    .line 1474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1475
    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mHasRecommendCard:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_recommend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    iget-wide v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mStartDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "rtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    const-string v1, "module_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "removesend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    const-string v1, "page_type"

    const-string v2, "start_floating"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    const-string v1, "nerwords"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1483
    const-string p1, "66.2.2.1.1046"

    goto :goto_3b

    .line 1485
    :cond_39
    const-string p1, "66.2.4.1.2560"

    .line 1487
    :goto_3b
    const-string v1, "tip"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    const-string p1, "G_EXPOSE"

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackRecommendCardClick(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 1463
    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsClipboardView:Z

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;ZZZ)Ljava/util/Map;

    move-result-object p1

    .line 1464
    const-string v0, "module_type"

    const-string v1, "recommend"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    const-string v0, "page_type"

    const-string v1, "start_floating"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "removesend"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    const-string v0, "tip"

    const-string v1, "66.2.1.1.1051"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackRecommendCardClick params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SplashFloatView"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const-string v0, "G_CLICK"

    invoke-static {v0, p1}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackRecommendCardExpose(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 4

    const/4 v0, 0x0

    .line 1451
    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsClipboardView:Z

    invoke-static {p1, v0, v0, v1}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;ZZZ)Ljava/util/Map;

    move-result-object p1

    .line 1452
    iget-wide v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mStartDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "rtime"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    const-string v0, "module_type"

    const-string v1, "recommend"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    const-string v0, "page_type"

    const-string v1, "start_floating"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "removesend"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    const-string v0, "tip"

    const-string v1, "66.2.1.1.1044"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackRecommendCardExpose params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SplashFloatView"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const-string v0, "G_EXPOSE"

    invoke-static {v0, p1}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public createFloatView()V
    .registers 2

    .line 170
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initWindow()V

    .line 171
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initView()V

    .line 172
    invoke-virtual {p0}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->addToWindow()V

    .line 173
    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->addSegmentReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;)V

    .line 174
    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->addDetailReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;)V

    .line 175
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->setDeviceReadyListener(Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnDeviceReadyListener;)V

    .line 176
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->setNerReadyListener(Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnNerReadyListener;)V

    .line 177
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->setCopyRecommendListener(Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnCopyRecommendReadyListener;)V

    .line 178
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 179
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 182
    :cond_29
    invoke-static {}, Lcom/miui/contentextension/App;->isMiuiLiteRom()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->isSupportLyra()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 183
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->createMiContinuityService()V

    :cond_38
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1553
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    .line 1554
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez p1, :cond_22

    .line 1556
    const-string p1, "back"

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->trackQuitByDefault(Ljava/lang/String;)V

    .line 1557
    const-string p1, "Taplus.SplashFloatView"

    const-string v1, "hideSplashFloatView by dispatchKeyEvent"

    invoke-static {p1, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    return v0

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "Taplus.SplashFloatView"

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_33

    .line 1569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez v0, :cond_33

    .line 1571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->yDown:F

    .line 1572
    const-string v0, "send TaplusQuitFloatViewEvent by dispatchTouchEvent"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v4, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;

    iget-object v5, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const-string v6, "TaplusSplashFloatView"

    invoke-direct {v4, v2, v5, v6}, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;-><init>(ZILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1576
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_4b

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez v0, :cond_4b

    .line 1578
    const-string p1, "touch"

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->trackQuitByDefault(Ljava/lang/String;)V

    .line 1579
    const-string p1, "hideSplashFloatView by dispatchTouchEvent"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-virtual {p0, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    return v2

    .line 1583
    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_82

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez v0, :cond_82

    .line 1585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->yDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_82

    .line 1586
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->height:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1587
    invoke-virtual {p0}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->updateViewLayout()V

    .line 1588
    iput-boolean v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->isMoved:Z

    return v2

    :cond_82
    const/4 p1, 0x0

    return p1
.end method

.method public getAllWords(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/data/recognition/WordBean;

    .line 548
    invoke-virtual {v1}, Lcom/miui/contentextension/data/recognition/WordBean;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 550
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hideSplashFloatView(Z)V
    .registers 4

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splash floatview, hideSplashFloatView: finishing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--isCancelTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SplashFloatView"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-eqz v0, :cond_25

    return-void

    :cond_25
    const/4 v0, 0x1

    .line 913
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    .line 914
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mPeddingAnimator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_2e

    .line 916
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2e

    .line 919
    :cond_40
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    if-eqz v0, :cond_4b

    .line 920
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 923
    :cond_4b
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;

    invoke-direct {v1, p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCopyRecommendDeviceReady(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCopyRecommendDeviceReady--size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SplashFloatView"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    .line 425
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_40

    const-string v1, "PHONE"

    invoke-virtual {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_23

    .line 428
    :cond_40
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 430
    :cond_46
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mHasRecommendCard:Z

    if-nez p1, :cond_59

    .line 431
    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    if-eqz p1, :cond_59

    .line 432
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showRecommendFloatView()V

    :cond_59
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1510
    invoke-super {p0}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->onDestroy()V

    .line 1511
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mOcrDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1512
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mOcrDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1514
    :cond_12
    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->removeSegmentReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;)V

    .line 1515
    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->removeDetailReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;)V

    .line 1517
    invoke-static {}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->removeDeviceReadyListener()V

    .line 1518
    invoke-static {}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->removeNerReadyListener()V

    .line 1519
    invoke-static {}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->removeCopyRecommendListener()V

    .line 1521
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1523
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsSegmentReady:Z

    .line 1524
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    .line 1526
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsNerReady:Z

    .line 1527
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsDeviceReady:Z

    .line 1529
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mPeddingAnimator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1530
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1531
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommendCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1533
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1534
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRemoteDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1535
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mPeddingAnimator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1536
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerRecommendCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDetailReady(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 408
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    .line 409
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_26

    const-string v1, "PHONE"

    invoke-virtual {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_9

    .line 412
    :cond_26
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 414
    :cond_2c
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRecommends:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mHasRecommendCard:Z

    .line 415
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsSegmentReady:Z

    if-eqz v0, :cond_43

    if-nez p1, :cond_43

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    if-eqz p1, :cond_43

    .line 416
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showRecommendFloatView()V

    :cond_43
    return-void
.end method

.method public onDeviceReady(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "--size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SplashFloatView"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mRemoteDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerType:I

    invoke-static {v1, p1, v2}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->generateDeviceListByType(Landroid/content/Context;Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 463
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsDeviceReady:Z

    .line 464
    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsNerReady:Z

    if-eqz p1, :cond_3d

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    if-eqz p1, :cond_3d

    .line 465
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showNersAndDevicesFloatView()V

    :cond_3d
    return-void
.end method

.method public onEventMainThread(Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_30

    .line 1542
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->getHashcode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 1543
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1544
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->getFrom()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaplusSplashFloatView"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_30

    .line 1547
    :cond_25
    const-string p1, "Taplus.SplashFloatView"

    const-string v0, "hideSplashFloatView by TaplusQuitFloatViewEvent"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1548
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    :cond_30
    :goto_30
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez v0, :cond_11

    .line 1599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->height:I

    .line 1601
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_24

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez p1, :cond_24

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->isMoved:Z

    if-eqz p1, :cond_24

    .line 1603
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->isMoved:Z

    return v1

    :cond_24
    return v0
.end method

.method public onNerReady(I)V
    .registers 6

    .line 438
    iput p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerType:I

    const/4 v0, 0x1

    .line 439
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsNerReady:Z

    .line 440
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getClipboardContent()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerType:I

    invoke-static {v1, v2, v3}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->generateNerEntityListByType(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNerReady type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Taplus.SplashFloatView"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerEntities:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 443
    iget p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mNerType:I

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->needGetRemoteDeviceList(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 444
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->tryToGetRemoteDevices(Landroid/content/Context;)V

    goto :goto_45

    .line 446
    :cond_3c
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsDeviceReady:Z

    .line 447
    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    if-eqz p1, :cond_45

    .line 448
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showNersAndDevicesFloatView()V

    :cond_45
    :goto_45
    return-void
.end method

.method public onSegmentReady(Ljava/util/ArrayList;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;Z)V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 399
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsSegmentReady:Z

    .line 400
    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mHasRecommendCard:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsViewStubInflated:Z

    if-eqz p1, :cond_e

    .line 401
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showRecommendFloatView()V

    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public trackQuitByDefault(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    .line 1618
    iget-boolean v1, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->mIsLoading:Z

    const-string v2, ""

    if-eqz v1, :cond_10

    .line 1621
    const-string v1, "66.0.0.0.2634"

    const-string v3, "loading"

    move-object v9, v1

    move-object v6, v2

    move-object v11, v3

    goto :goto_17

    .line 1625
    :cond_10
    const-string v1, "66.2.0.1.1065"

    const-string v3, "start_floating"

    move-object v9, v1

    move-object v11, v2

    move-object v6, v3

    .line 1627
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/miui/contentextension/analy/Analy;->getStartTime()J

    move-result-wide v3

    sub-long v12, v1, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1628
    const-string v4, "default"

    const-string v5, ""

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v4 .. v15}, Lcom/miui/contentextension/analy/Analy;->trackQuitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method
