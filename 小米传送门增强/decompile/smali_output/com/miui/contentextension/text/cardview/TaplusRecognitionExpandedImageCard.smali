.class public Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;
.super Landroid/widget/LinearLayout;
.source "TaplusRecognitionExpandedImageCard.java"

# interfaces
.implements Lcom/miui/contentextension/text/cardview/ITaplusCardView;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCaptureImage:Landroid/widget/ImageView;

.field private mCaptureImageNull:Landroid/widget/TextView;

.field private mEditImage:Landroid/widget/ImageView;

.field private mHasRecommend:Z

.field private mImageGroup:Landroid/widget/RelativeLayout;

.field private mIsRemember:Z

.field private mMiniScreen:Z

.field private mMoveSend:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRecognizeObject:Landroid/widget/TextView;

.field private mScanQR:Landroid/widget/TextView;

.field private mShopping:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$AzeTcRtXhYDCY-T5e0cnl6hM7W0(Landroid/view/View;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->lambda$updateMargin$0(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapHeight(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapWidth(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRemember(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mIsRemember:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRemember(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mIsRemember:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissPopup(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->dismissPopup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0023

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p2, 0x7f0a01eb

    .line 81
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mShopping:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01e7

    .line 84
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mScanQR:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01e5

    .line 87
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mRecognizeObject:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->updateLayout()V

    .line 90
    iget-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mShopping:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mScanQR:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mRecognizeObject:Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object p3, v1, p1

    const/4 p2, 0x2

    aput-object v0, v1, p2

    invoke-static {v1}, Lcom/miui/contentextension/utils/FolmeUtil;->doAlphas([Landroid/view/View;)V

    const p2, 0x7f0a00a0

    .line 92
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mImageGroup:Landroid/widget/RelativeLayout;

    const p2, 0x7f0a009f

    .line 93
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mCaptureImage:Landroid/widget/ImageView;

    const p2, 0x7f0a00a1

    .line 94
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mCaptureImageNull:Landroid/widget/TextView;

    const p2, 0x7f0a0107

    .line 95
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mEditImage:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mEditImage:Landroid/widget/ImageView;

    new-array p1, p1, [Landroid/view/View;

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/miui/contentextension/utils/FolmeUtil;->doTintScaleOnTouch([Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->refresh()V

    return-void
.end method

.method private createPopupMenu(Landroid/view/View;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->initPopupWindowContent()Landroid/view/View;

    move-result-object p1

    .line 251
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 p1, 0x1

    .line 252
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 253
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 254
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 255
    new-instance v1, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$1;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 270
    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 272
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 276
    :try_start_21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 277
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_46

    .line 278
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception p1

    .line 281
    const-string v1, "Taplus.RecognitionImageCard"

    const-string v2, "createPopupMenu: "

    invoke-static {v1, v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :cond_46
    :goto_46
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07040f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 284
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 285
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    const/16 p1, 0x64

    invoke-virtual {v0, p0, v2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private dismissPopup()V
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_a

    .line 357
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_a
    return-void
.end method

.method private doSaveImage(Landroid/view/View;)V
    .registers 5

    .line 222
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/SuperImageUtils;->getImageSaveMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    goto :goto_34

    :pswitch_14
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_34

    :cond_1d
    const/4 v1, 0x2

    goto :goto_34

    :pswitch_1f
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_34

    :cond_28
    const/4 v1, 0x1

    goto :goto_34

    :pswitch_2a
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    packed-switch v1, :pswitch_data_5e

    goto :goto_53

    .line 231
    :pswitch_38
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->showPopupWindow(Landroid/view/View;)V

    goto :goto_53

    .line 228
    :pswitch_3c
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapWidth:I

    iget v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapHeight:I

    invoke-static {p1, v0, v1}, Lcom/miui/contentextension/utils/SaveImageUtils;->saveSuperImage(Landroid/content/Context;II)V

    goto :goto_53

    .line 225
    :pswitch_48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapWidth:I

    iget v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapHeight:I

    invoke-static {p1, v0, v1}, Lcom/miui/contentextension/utils/SaveImageUtils;->saveNormalImage(Landroid/content/Context;II)V

    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x30
        :pswitch_2a
        :pswitch_1f
        :pswitch_14
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_48
        :pswitch_3c
        :pswitch_38
    .end packed-switch
.end method

.method private doSkipToXiaoMiScanner(ILjava/lang/String;)V
    .registers 7

    .line 385
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 389
    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 390
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1001d9

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void

    .line 394
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xiaomi.scanner"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/Utilities;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 395
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "12.08.14"

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/Utilities;->isSupportVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_5b

    :cond_35
    const/4 v0, 0x1

    .line 400
    invoke-static {v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->setIsTaskFinished(Z)V

    .line 401
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/miui/contentextension/data/common/ThirdContentProvider;->doImageScan(Landroid/content/Context;ILandroid/graphics/Bitmap;)V

    .line 402
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "newimage"

    invoke-direct {v1, v0, v2, p2, v3}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 397
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100222

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method private enableTextView(Landroid/widget/TextView;Z)V
    .registers 4

    if-eqz p2, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_5
    const v0, 0x3ecccccd    # 0.4f

    .line 183
    :goto_8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private getBitmapHeight()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapHeight:I

    if-eqz v0, :cond_5

    return v0

    .line 169
    :cond_5
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return v0

    .line 172
    :cond_d
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method private getBitmapWidth()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapWidth:I

    if-eqz v0, :cond_5

    return v0

    .line 159
    :cond_5
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return v0

    .line 162
    :cond_d
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method private initPopupWindowContent()Landroid/view/View;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 292
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    const-string v1, "Taplus.RecognitionImageCard"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 294
    const-string v0, "createPopupMenu: bitmap is null"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 297
    :cond_f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00d4

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a01ce

    .line 299
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a029f

    .line 300
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f100202

    .line 301
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a0299

    .line 302
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 303
    invoke-static {v0}, Lcom/miui/contentextension/utils/SuperImageUtils;->getNormalImageDesc(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    new-instance v7, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;

    invoke-direct {v7, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a01cf

    .line 317
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 318
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f100204

    .line 319
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 320
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 321
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/miui/contentextension/utils/SuperImageUtils;->getSuperImageDesc(Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-static {v0}, Lcom/miui/contentextension/utils/SuperImageUtils;->isBitmapSupportSuperImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 323
    const-string v0, "initPopupWindowContent: not support super image"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 324
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 325
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 327
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a0

    :cond_94
    const/4 v0, 0x1

    .line 330
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    new-instance v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$3;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$3;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a0
    const v0, 0x7f0a00a3

    .line 345
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 346
    new-instance v1, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$4;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$4;-><init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v3
.end method

.method private static synthetic lambda$updateMargin$0(Landroid/view/View;I)V
    .registers 5

    .line 122
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showPopupWindow(Landroid/view/View;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_8

    .line 240
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->createPopupMenu(Landroid/view/View;)V

    goto :goto_b

    .line 242
    :cond_8
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->dismissPopup()V

    :goto_b
    return-void
.end method

.method private trackImageRecognitionCardClick(Ljava/lang/String;)V
    .registers 5

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 432
    const-string v1, "click_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-boolean v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mHasRecommend:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_recommend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v1, "module_type"

    const-string v2, "newimage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v1, "page_type"

    const-string v2, "detail_floating"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->getBitmapWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image_length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->getBitmapHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image_width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v1, "save_image"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 439
    invoke-static {}, Lcom/miui/contentextension/utils/SuperImageUtils;->isSupportSuperImage()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "can_image_SR"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_52
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mMoveSend:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "removesend"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mMiniScreen:Z

    if-eqz p1, :cond_64

    .line 443
    const-string p1, "mini_screen"

    goto :goto_66

    :cond_64
    const-string p1, "half_screen"

    .line 442
    :goto_66
    const-string v1, "screen_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string p1, "tip"

    const-string v1, "66.3.4.1.2565"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string p1, "G_CLICK"

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateMargin(Landroid/view/View;I)V
    .registers 4

    .line 121
    new-instance v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public enableOperations(Z)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mShopping:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 177
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mScanQR:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->enableTextView(Landroid/widget/TextView;Z)V

    .line 178
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mRecognizeObject:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->enableTextView(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    goto :goto_2f

    .line 203
    :sswitch_8
    const-string p1, "shopping"

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->trackImageRecognitionCardClick(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 204
    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->doSkipToXiaoMiScanner(ILjava/lang/String;)V

    goto :goto_2f

    .line 207
    :sswitch_12
    const-string p1, "qrcode"

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->trackImageRecognitionCardClick(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->doSkipToXiaoMiScanner(ILjava/lang/String;)V

    goto :goto_2f

    .line 211
    :sswitch_1c
    const-string p1, "identify_items"

    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->trackImageRecognitionCardClick(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 212
    invoke-direct {p0, v0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->doSkipToXiaoMiScanner(ILjava/lang/String;)V

    goto :goto_2f

    .line 215
    :sswitch_27
    const-string v0, "save_image"

    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->trackImageRecognitionCardClick(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->doSaveImage(Landroid/view/View;)V

    :goto_2f
    return-void

    :sswitch_data_30
    .sparse-switch
        0x7f0a0107 -> :sswitch_27
        0x7f0a01e5 -> :sswitch_1c
        0x7f0a01e7 -> :sswitch_12
        0x7f0a01eb -> :sswitch_8
    .end sparse-switch
.end method

.method public refresh()V
    .registers 6

    .line 130
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    .line 131
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mCaptureImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mEditImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mCaptureImageNull:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->enableOperations(Z)V

    goto :goto_88

    :cond_1c
    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->enableOperations(Z)V

    .line 137
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mCaptureImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mEditImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mCaptureImageNull:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mImageGroup:Landroid/widget/RelativeLayout;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 141
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 142
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 143
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapHeight:I

    .line 145
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mBitmapWidth:I

    .line 146
    invoke-static {v2, v0, v1}, Lcom/miui/contentextension/utils/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mCaptureImage:Landroid/widget/ImageView;

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x3d75c28f    # 0.06f

    const/high16 v4, 0x40000000    # 2.0f

    .line 147
    invoke-static {v0, v3, v4, v2}, Lcom/miui/contentextension/utils/BitmapUtils;->getBitmapWithBorderAndRadius(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_88

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_88
    :goto_88
    return-void
.end method

.method public setHasRecommend(Z)V
    .registers 2

    .line 188
    iput-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mHasRecommend:Z

    return-void
.end method

.method public setMiniScreen(Z)V
    .registers 2

    .line 196
    iput-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mMiniScreen:Z

    return-void
.end method

.method public setMoveSend(Z)V
    .registers 2

    .line 192
    iput-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mMoveSend:Z

    return-void
.end method

.method public trackImageRecognitionExpose(Z)V
    .registers 5

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 408
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->getBitmapWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image_length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->getBitmapHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image_width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "removesend"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mHasRecommend:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "has_recommend"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string p1, "module_type"

    const-string v1, "newimage"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string p1, "page_type"

    const-string v1, "detail_floating"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string p1, "tip"

    const-string v1, "66.3.4.1.2564"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string p1, "G_EXPOSE"

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackImageRecognitionView(Z)V
    .registers 5

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 420
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->getBitmapWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image_length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->getBitmapHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image_width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "removesend"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-boolean p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mHasRecommend:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "has_recommend"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string p1, "module_type"

    const-string v1, "newimage"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string p1, "page_type"

    const-string v1, "detail_floating"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string p1, "tip"

    const-string v1, "66.3.4.1.2563"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string p1, "G_VIEW"

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updateLayout()V
    .registers 4

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/DeviceConfig;->isLanguageInZH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 104
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mShopping:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mScanQR:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mRecognizeObject:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isFolderSmallScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070429

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mShopping:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->updateMargin(Landroid/view/View;I)V

    .line 111
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mScanQR:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->updateMargin(Landroid/view/View;I)V

    .line 113
    :cond_5d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isFolderLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 114
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mShopping:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->updateMargin(Landroid/view/View;I)V

    .line 116
    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->mScanQR:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->updateMargin(Landroid/view/View;I)V

    :cond_80
    return-void
.end method
