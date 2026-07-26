.class public Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;
.super Lcom/miui/contentextension/text/floatview/BaseFloatView;
.source "TaplusMainFloatView.java"

# interfaces
.implements Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;
.implements Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;
.implements Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;


# instance fields
.field private mCacheRecommends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRecommend:Z

.field private mIconDrag:Landroid/view/View;

.field private mMainBg:Landroid/view/View;

.field private mMainCardGroup:Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

.field private mMoveRefresh:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field public mPickedRect:Landroid/graphics/Rect;

.field private mRecognitionAttachments:Landroid/view/View;

.field private mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

.field private mRecommendAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

.field private mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

.field private mScreenShot:Landroid/graphics/Bitmap;

.field private mScreenshotView:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

.field private mShadow:Landroid/view/View;

.field private mShadowHeightNoRec:I

.field private mShadowHeightWithRec:I

.field private mShapeFactory:Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

.field private mSmallMode:Z

.field private final mSupportPartialScreenshot:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIconDrag(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mIconDrag:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainBg(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMainBg:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMainCardGroup:Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMoveRefresh:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecognitionAttachments(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionAttachments:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecommendList(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lmiuix/recyclerview/widget/RecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenShot(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/graphics/Bitmap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenshotView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenshotView:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShadow(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadow:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/ShapeFactory;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShapeFactory:Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmallMode(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mSmallMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportPartialScreenshot(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mSupportPartialScreenshot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMoveRefresh:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Lcom/miui/contentextension/screenshot/partial/ShapeFactory;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShapeFactory:Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitImageCard(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->initImageCard()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecommendCards(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Ljava/util/List;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->updateRecommendCards(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 3

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/text/floatview/BaseFloatView;-><init>(Landroid/content/Context;Lcom/miui/contentextension/services/TextContentExtensionService;)V

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mCacheRecommends:Ljava/util/List;

    .line 215
    new-instance p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$2;

    invoke-direct {p1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$2;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 122
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mSupportPartialScreenshot:Z

    return-void
.end method

.method private captureScreenshot()V
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->getFullScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    .line 406
    const-string v1, "Taplus.TaplusMainFloatView"

    if-nez v0, :cond_16

    .line 407
    const-string v0, "captureScreenshot: screenshot is null"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 412
    :cond_16
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 414
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 415
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 417
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/SystemBarUtil;->getNavBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureScreenshot: nav bar height = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8d

    .line 422
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0703f1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/16 v4, 0x64

    if-le v0, v4, :cond_6f

    .line 424
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    goto :goto_77

    :cond_6f
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    .line 425
    :goto_77
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    .line 426
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 425
    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    :cond_8d
    return-void
.end method

.method private focusScreenCaptureView()V
    .registers 9

    .line 436
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 437
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_16

    const/4 v0, 0x0

    .line 440
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusScreenCaptureView: rect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Taplus.TaplusMainFloatView"

    invoke-static {v3, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_eb

    .line 442
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->getFirstTouchPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->getSecondTouchPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focusScreenCaptureView: first = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", second = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_cb

    if-eqz v1, :cond_9f

    .line 446
    iget v4, v1, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-nez v6, :cond_68

    iget v6, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v6, v5

    if-nez v5, :cond_68

    goto :goto_9f

    .line 457
    :cond_68
    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 458
    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    .line 459
    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    .line 460
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0xfa

    .line 461
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 462
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 463
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v4, v6

    add-int/2addr v1, v0

    invoke-direct {v5, v6, v0, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    goto :goto_eb

    .line 448
    :cond_9f
    :goto_9f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focusScreenCaptureView: single press, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v1, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/16 v5, 0x7d

    int-to-float v5, v5

    sub-float v6, v4, v5

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v7, v0, v5

    float-to-int v7, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v1, v6, v7, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    goto :goto_eb

    .line 468
    :cond_cb
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 469
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    sub-float/2addr v4, v1

    float-to-int v1, v4

    .line 470
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit16 v5, v0, 0xfa

    add-int/lit16 v6, v1, 0xfa

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v4

    .line 474
    :cond_eb
    :goto_eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mPickedRect:Landroid/graphics/Rect;

    return-void
.end method

.method private getEventTip(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    .line 803
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 807
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_52

    goto :goto_34

    :sswitch_14
    const-string v2, "G_MOVE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_34

    :cond_1d
    const/4 v0, 0x2

    goto :goto_34

    :sswitch_1f
    const-string v2, "G_SHRINK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_34

    :cond_28
    const/4 v0, 0x1

    goto :goto_34

    :sswitch_2a
    const-string v2, "G_EXPAND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    packed-switch v0, :pswitch_data_60

    goto :goto_51

    :pswitch_38
    if-eqz p2, :cond_3e

    .line 809
    const-string p1, "66.3.2.1.3251"

    :goto_3c
    move-object v1, p1

    goto :goto_51

    :cond_3e
    const-string p1, "66.3.4.1.3250"

    goto :goto_3c

    :pswitch_41
    if-eqz p2, :cond_46

    .line 815
    const-string p1, "66.3.2.1.3248"

    goto :goto_3c

    :cond_46
    const-string p1, "66.3.4.1.3249"

    goto :goto_3c

    :pswitch_49
    if-eqz p2, :cond_4e

    .line 812
    const-string p1, "66.3.2.1.3246"

    goto :goto_3c

    :cond_4e
    const-string p1, "66.3.4.1.3247"

    goto :goto_3c

    :goto_51
    return-object v1

    :sswitch_data_52
    .sparse-switch
        -0x1460be6e -> :sswitch_2a
        0x2a2a901 -> :sswitch_1f
        0x7e8700c9 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_49
        :pswitch_41
        :pswitch_38
    .end packed-switch
.end method

.method private getScreenType()Ljava/lang/String;
    .registers 2

    .line 756
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mSmallMode:Z

    if-eqz v0, :cond_7

    .line 757
    const-string v0, "mini_screen"

    goto :goto_9

    .line 758
    :cond_7
    const-string v0, "half_screen"

    :goto_9
    return-object v0
.end method

.method private initImageCard()V
    .registers 4

    .line 479
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 480
    invoke-static {}, Lcom/miui/contentextension/screenshot/partial/RectFactory;->getInstance()Lcom/miui/contentextension/screenshot/partial/RectFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/screenshot/partial/RectFactory;->getPartialBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    invoke-static {v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->isOtherMode()Z

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doRefreshImage(ZZ)V

    :cond_1d
    return-void
.end method

.method private initScreenshotView()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenshotView:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenshotView:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initView()V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    .line 266
    check-cast v0, Lcom/miui/contentextension/view/SessionRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/miui/contentextension/view/SessionRelativeLayout;->setListener(Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;)V

    .line 267
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMainBg:Landroid/view/View;

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 271
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMainCardGroup:Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    .line 272
    invoke-virtual {v0, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->setMainFloatView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    .line 273
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenshotView:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    .line 274
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionAttachments:Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mIconDrag:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a01ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadow:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadowHeightNoRec:I

    .line 278
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadowHeightWithRec:I

    .line 280
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a01f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->setRecommendListVisibility(Z)V

    .line 282
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 284
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 285
    new-instance v0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    invoke-direct {v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    .line 286
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 287
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 289
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a01e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    .line 290
    invoke-virtual {v0, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->setMainFloatView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    .line 291
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->prepareScreen()V

    return-void
.end method

.method private initWindow()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    .line 139
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1050320

    .line 140
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    .line 146
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const v1, 0x800053

    .line 147
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 148
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 149
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 150
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 151
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 152
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 153
    const-string v1, "TaplusMainFloatView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isEventOutTrueFloatView(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x2

    .line 645
    new-array v0, v0, [I

    .line 647
    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mHasRecommend:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2f

    .line 648
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 649
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070055

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 650
    aget v0, v0, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2e

    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2e

    move v2, v3

    :cond_2e
    return v2

    .line 654
    :cond_2f
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 655
    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_46

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_46

    move v2, v3

    :cond_46
    return v2
.end method

.method private prepareScreen()V
    .registers 3

    .line 295
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mSupportPartialScreenshot:Z

    if-eqz v0, :cond_2a

    .line 296
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenshotView:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionAttachments:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const v1, 0x7f0a0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$3;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$3;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->captureScreenshot()V

    .line 306
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->focusScreenCaptureView()V

    .line 307
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->initScreenshotView()V

    goto :goto_36

    .line 309
    :cond_2a
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mScreenshotView:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionAttachments:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_36
    return-void
.end method

.method private refreshQueryRecommends(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 675
    new-instance v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$7;

    invoke-direct {v0, p0, p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$7;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/miui/contentextension/data/recognition/QueryRecommend;->doQueryRecommend(Ljava/lang/String;Lio/reactivex/Observer;)V

    return-void
.end method

.method private talkBackForTextIfNeed(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;)V"
        }
    .end annotation

    .line 589
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 590
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const v3, 0x7f100288

    .line 591
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->getAllWords(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_34
    return-void
.end method

.method private updateRecommendCards(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const v1, 0x7f01003d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    .line 708
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->setRecommendListVisibility(Z)V

    .line 709
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 710
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->clearExposingItems()V

    .line 711
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->updateRecommendInfos(Ljava/util/List;)V

    .line 712
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    .line 713
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;

    invoke-direct {v1, p0, p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 723
    iget-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->setHasRecommend(Z)V

    .line 724
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mHasRecommend:Z

    return-void
.end method


# virtual methods
.method public createFloatView()V
    .registers 2

    .line 127
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->initWindow()V

    .line 128
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->initView()V

    .line 129
    invoke-virtual {p0}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->addToWindow()V

    .line 130
    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->addSegmentReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;)V

    .line 131
    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->addDetailReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;)V

    .line 132
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 612
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 613
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez p1, :cond_1b

    .line 615
    const-string p1, "back"

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->trackQuitByDefault(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->hideMainFloatView()V

    return v0

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 625
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->isEventOutTrueFloatView(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez p1, :cond_1c

    .line 626
    const-string p1, "touch"

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->trackQuitByDefault(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->hideMainFloatView()V

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public expandFloatView(Z)V
    .registers 12

    .line 191
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMainCardGroup:Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 192
    invoke-virtual {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->needShowRecommendList()Z

    move-result v0

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_89

    .line 193
    invoke-virtual {p0, v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->setRecommendListVisibility(Z)V

    .line 194
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    new-array v5, v1, [Landroid/view/View;

    aput-object v0, v5, v3

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 195
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 196
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/high16 v7, 0x43160000    # 150.0f

    new-array v8, v1, [F

    aput v7, v8, v3

    const/4 v9, -0x1

    invoke-virtual {v6, v9, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    filled-new-array {v5, v2, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 197
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionAttachments:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 198
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 199
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v4, v1, [F

    aput v7, v4, v3

    .line 200
    invoke-virtual {v2, v9, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v4, v3, [Lmiuix/animation/property/FloatProperty;

    invoke-interface {v0, v2, v4}, Lmiuix/animation/IStateStyle;->setConfig(Lmiuix/animation/base/AnimConfig;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;

    .line 202
    :cond_89
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mIconDrag:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iput-boolean v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mSmallMode:Z

    .line 204
    const-string v0, "G_EXPAND"

    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->trackViewChangedEvent(Ljava/lang/String;)V

    if-nez p1, :cond_9e

    .line 206
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {p1, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->setOperatorEnable(Z)V

    :cond_9e
    return-void
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

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/data/recognition/WordBean;

    .line 598
    invoke-virtual {v1}, Lcom/miui/contentextension/data/recognition/WordBean;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 600
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hideMainFloatView()V
    .registers 3

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "main floatview, hideMainFloatView: finishing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.TaplusMainFloatView"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    .line 538
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMainCardGroup:Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public needShowRecommendList()Z
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    .line 212
    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isCurrentInTextMode()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public onDestroy()V
    .registers 2

    .line 575
    invoke-super {p0}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->onDestroy()V

    .line 576
    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->removeSegmentReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;)V

    .line 577
    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->removeDetailReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;)V

    .line 578
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDetailReady(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mCacheRecommends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 606
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mCacheRecommends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    .line 607
    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->updateRecommendCards(Ljava/util/List;Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/contentextension/text/TaplusSegmentEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_34

    .line 662
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusSegmentEvent;->getHashCode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_13

    goto :goto_34

    .line 666
    :cond_13
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->getSelectedWordsWithBlank()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusSegmentEvent;->isUpdateCache()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_2e

    .line 671
    :cond_26
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusSegmentEvent;->getReSelectedWay()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->refreshQueryRecommends(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 668
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mCacheRecommends:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->updateRecommendCards(Ljava/util/List;Z)V

    :cond_34
    :goto_34
    return-void
.end method

.method public onEventMainThread(Lcom/miui/contentextension/text/TaplusServiceCancelEvent;)V
    .registers 15
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_6a

    .line 730
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->getHashcode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_6a

    .line 731
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->isCancel()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_6a

    .line 734
    :cond_19
    invoke-virtual {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->hideMainFloatView()V

    .line 737
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isCurrentInTextMode()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 738
    const-string v0, "66.3.2.1.1059"

    goto :goto_29

    .line 740
    :cond_27
    const-string v0, "66.3.4.1.2638"

    .line 742
    :goto_29
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->getQuitType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_recommend"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 743
    const-string v0, "66.3.1.1.1057"

    :cond_37
    move-object v6, v0

    .line 745
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 746
    const-string v0, "loading"

    :goto_42
    move-object v8, v0

    goto :goto_47

    .line 747
    :cond_44
    const-string v0, "finish"

    goto :goto_42

    .line 749
    :goto_47
    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->getQuitType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->getModuleType()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    .line 751
    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->getSelectedNumber()I

    move-result v4

    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->getSelectedWords()Ljava/lang/String;

    move-result-object v5

    iget-boolean v11, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMoveRefresh:Z

    .line 752
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->getScreenType()Ljava/lang/String;

    move-result-object v12

    .line 749
    const-string v3, "detail_floating"

    const-string v7, ""

    const-wide/16 v9, -0x1

    invoke-static/range {v1 .. v12}, Lcom/miui/contentextension/analy/Analy;->trackQuitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public onSegmentReady(Ljava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;Z)V"
        }
    .end annotation

    .line 583
    const-string v0, "Taplus.TaplusMainFloatView"

    const-string v1, "onSegmentReady: track g_expose"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0, p1, p2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->updateSegments(Ljava/util/List;Z)V

    .line 585
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->talkBackForTextIfNeed(Ljava/util/List;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public setRecommendListVisibility(Z)V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    .line 318
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecommendListVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.TaplusMainFloatView"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_35

    .line 320
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadow:Landroid/view/View;

    if-eqz p1, :cond_4d

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 323
    iget v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadowHeightWithRec:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_4d

    .line 327
    :cond_35
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 328
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadow:Landroid/view/View;

    if-eqz p1, :cond_4d

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 330
    iget v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadowHeightNoRec:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mShadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public showMainFloat(Z)V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doSwitchRecognition(Z)V

    .line 489
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMainCardGroup:Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    new-instance v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shrinkFloatView()V
    .registers 9

    .line 157
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMainCardGroup:Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v4, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07042b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 158
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_74

    .line 159
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    new-array v2, v1, [Landroid/view/View;

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v1, [F

    const/high16 v7, 0x43160000    # 150.0f

    aput v7, v6, v3

    const/4 v7, -0x1

    .line 160
    invoke-virtual {v5, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-instance v6, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;

    invoke-direct {v6, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    new-array v7, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v6, v7, v3

    .line 161
    invoke-virtual {v5, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 159
    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_7c

    .line 182
    :cond_74
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mIconDrag:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {p0, v3}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->setRecommendListVisibility(Z)V

    .line 185
    :goto_7c
    iput-boolean v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mSmallMode:Z

    .line 186
    const-string v0, "G_SHRINK"

    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->trackViewChangedEvent(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0, v3}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->setOperatorEnable(Z)V

    return-void
.end method

.method public trackQuitByDefault(Ljava/lang/String;)V
    .registers 15

    .line 762
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    if-nez v0, :cond_5

    return-void

    .line 765
    :cond_5
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->getSelectedNumber()I

    move-result v4

    .line 766
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->getSelectedWords()Ljava/lang/String;

    move-result-object v5

    .line 770
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isCurrentInTextMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 772
    const-string v0, "nerwords"

    const-string v1, "66.3.2.1.2654"

    :goto_1b
    move-object v2, v0

    move-object v6, v1

    goto :goto_23

    .line 775
    :cond_1e
    const-string v0, "newimage"

    const-string v1, "66.3.4.1.2655"

    goto :goto_1b

    .line 777
    :goto_23
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 778
    const-string v0, "loading"

    :goto_2d
    move-object v8, v0

    goto :goto_32

    .line 779
    :cond_2f
    const-string v0, "finish"

    goto :goto_2d

    .line 781
    :goto_32
    iget-boolean v11, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mMoveRefresh:Z

    .line 783
    invoke-direct {p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->getScreenType()Ljava/lang/String;

    move-result-object v12

    .line 781
    const-string v1, "default"

    const-string v3, "detail_floating"

    const-wide/16 v9, -0x1

    move-object v7, p1

    invoke-static/range {v1 .. v12}, Lcom/miui/contentextension/analy/Analy;->trackQuitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method

.method public trackViewChangedEvent(Ljava/lang/String;)V
    .registers 10

    .line 787
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    if-nez v0, :cond_5

    return-void

    .line 790
    :cond_5
    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->getSelectedNumber()I

    move-result v4

    .line 791
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->getSelectedWords()Ljava/lang/String;

    move-result-object v5

    .line 792
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecommendAdapter:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->getItemCount()I

    move-result v0

    :goto_17
    move v6, v0

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_17

    .line 793
    :goto_1b
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->isCurrentInTextMode()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 794
    const-string v1, "nerwords"

    :goto_25
    move-object v2, v1

    goto :goto_2a

    .line 795
    :cond_27
    const-string v1, "newimage"

    goto :goto_25

    .line 796
    :goto_2a
    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->getEventTip(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 798
    const-string v3, "detail_floating"

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/miui/contentextension/analy/Analy;->trackViewChangeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
