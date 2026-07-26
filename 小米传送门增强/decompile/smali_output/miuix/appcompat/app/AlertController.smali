.class Lmiuix/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertController$LayoutChangeListener;,
        Lmiuix/appcompat/app/AlertController$ButtonHandler;,
        Lmiuix/appcompat/app/AlertController$ButtonInfo;,
        Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;,
        Lmiuix/appcompat/app/AlertController$AlertParams;
    }
.end annotation


# instance fields
.field private buildJustNow:Z

.field private configurationAfterInstalled:Landroid/content/res/Configuration;

.field mAdapter:Landroid/widget/ListAdapter;

.field private final mAlertDialogLayout:I

.field private mAsyncInflatePanelEnabled:Z

.field private mButtonForceVertical:Z

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private mComment:Ljava/lang/CharSequence;

.field private mCommentTextSize:F

.field private mCommentView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCreateThread:Ljava/lang/Thread;

.field private mCurrentDensityDpi:I

.field private mCustomTitleTextSize:F

.field private mCustomTitleTextView:Landroid/widget/TextView;

.field private mCustomTitleView:Landroid/view/View;

.field private mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private final mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

.field private mDialogContentLayout:I

.field private mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

.field private mDimBg:Landroid/view/View;

.field private final mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

.field private mDiscardImeAnimEnabled:Z

.field private mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

.field private final mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

.field mEnableEnterAnim:Z

.field private mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraImeMargin:I

.field private mFlipCutout:Landroid/view/DisplayCutout;

.field mHandler:Landroid/os/Handler;

.field mHapticFeedbackEnabled:Z

.field private mHasPendingDismiss:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconId:I

.field private mIconWidth:I

.field private mInflatedView:Landroid/view/View;

.field private mInsetsAnimationPlayed:Z

.field private mIsAssociatedActivityHideNavigationBar:Z

.field private mIsCarWithScreen:Z

.field private mIsChecked:Z

.field private mIsDebugEnabled:Z

.field private mIsDialogAnimating:Z

.field private mIsEnableImmersive:Z

.field private mIsFlipTinyScreen:Z

.field private mIsFromRebuild:Z

.field private mIsInFreeForm:Z

.field private mIsSynergy:Z

.field private mIsWindowLandScape:Z

.field private mLandscapePanel:Z

.field private final mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mLiteVersion:I

.field private mMarkLandscape:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageTextSize:F

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field private mNavigationBarHiddenEnabled:Z

.field private mNonImmersiveDialogHeight:I

.field mNonImmersiveDialogShowAnimDuration:J

.field private mPanelAndImeMargin:I

.field private mPanelFixedHeight:I

.field private mPanelFixedSizeEnabled:Z

.field private mPanelFixedWidth:I

.field private mPanelParamsHorizontalMargin:I

.field private mPanelParamsWidth:I

.field private mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

.field private mPreferLandscape:Z

.field private mPrimaryButtonFirstEnabled:Z

.field private mRootViewSize:Landroid/graphics/Point;

.field private mRootViewSizeDp:Landroid/graphics/Point;

.field private mScreenMinorSize:I

.field private mScreenOrientation:I

.field private mScreenRealSize:Landroid/graphics/Point;

.field private mSetupWindowInsetsAnimation:Z

.field private mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private final mShowTitle:Z

.field mShowUpTimeMillis:J

.field mSingleChoiceItemLayout:I

.field private mSmallIcon:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleTextSize:F

.field private mTitleView:Landroid/widget/TextView;

.field private mUseForceFlipCutout:Z

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private final mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$Pw0qBqi6r3HY-5z-RHrBLgL5e20(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jE6pvLNj4CZboVf3EARLR8dMFUM(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pRwptev8px0nmKWPnQSW7TMtyQo(Lmiuix/appcompat/app/AlertController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 10

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const/4 v1, -0x1

    .line 155
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 157
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    const/4 v2, -0x2

    .line 158
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    const-wide/16 v2, 0x0

    .line 162
    iput-wide v2, p0, Lmiuix/appcompat/app/AlertController;->mShowUpTimeMillis:J

    .line 163
    new-instance v2, Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-direct {v2}, Lmiuix/appcompat/app/DialogContract$DimensConfig;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    .line 164
    new-instance v2, Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-direct {v2}, Lmiuix/appcompat/app/DialogDisplayStrategy;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    .line 165
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelFixedWidth:I

    .line 166
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelFixedHeight:I

    .line 167
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelFixedSizeEnabled:Z

    .line 171
    new-instance v3, Lmiuix/appcompat/app/AlertController$1;

    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 204
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    const/4 v3, 0x0

    .line 214
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 218
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    .line 230
    new-instance v1, Lmiuix/appcompat/widget/DialogAnimHelper;

    invoke-direct {v1}, Lmiuix/appcompat/widget/DialogAnimHelper;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    const/4 v1, 0x1

    .line 240
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 241
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 245
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    const/high16 v4, 0x41900000    # 18.0f

    .line 255
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    const/high16 v5, 0x41800000    # 16.0f

    .line 257
    iput v5, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    const/high16 v5, 0x41500000    # 13.0f

    .line 259
    iput v5, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    .line 261
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 263
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 264
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 265
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 266
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 275
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    .line 276
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mUseForceFlipCutout:Z

    .line 277
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mNavigationBarHiddenEnabled:Z

    .line 278
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsAssociatedActivityHideNavigationBar:Z

    .line 284
    new-instance v4, Lmiuix/appcompat/app/AlertController$2;

    invoke-direct {v4, p0}, Lmiuix/appcompat/app/AlertController$2;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 317
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mPrimaryButtonFirstEnabled:Z

    .line 318
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mDiscardImeAnimEnabled:Z

    .line 320
    new-instance v4, Lmiuix/appcompat/app/AlertController$3;

    invoke-direct {v4, p0}, Lmiuix/appcompat/app/AlertController$3;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 1659
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 415
    new-instance v4, Lmiuix/appcompat/app/strategy/DialogPanelBehaviorImpl;

    invoke-direct {v4}, Lmiuix/appcompat/app/strategy/DialogPanelBehaviorImpl;-><init>()V

    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/DialogDisplayStrategy;->setPanelBehavior(Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;)Lmiuix/appcompat/app/DialogDisplayStrategy;

    move-result-object v2

    new-instance v4, Lmiuix/appcompat/app/strategy/DialogButtonBehaviorImpl;

    invoke-direct {v4}, Lmiuix/appcompat/app/strategy/DialogButtonBehaviorImpl;-><init>()V

    .line 416
    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/DialogDisplayStrategy;->setButtonBehavior(Lmiuix/appcompat/app/strategy/IDialogButtonBehavior;)Lmiuix/appcompat/app/DialogDisplayStrategy;

    .line 417
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 419
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 420
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 421
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 422
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/appcompat/R$integer;->dialog_enter_duration:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-long v4, p3

    iput-wide v4, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogShowAnimDuration:J

    .line 424
    new-instance p3, Lmiuix/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lmiuix/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 425
    new-instance p3, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 426
    sget-boolean p3, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz p3, :cond_d4

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_d4

    move p3, v1

    goto :goto_d5

    :cond_d4
    move p3, v0

    :goto_d5
    iput-boolean p3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    .line 427
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result p3

    if-nez p3, :cond_e3

    iget-boolean p3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez p3, :cond_e3

    move p3, v1

    goto :goto_e4

    :cond_e3
    move p3, v0

    :goto_e4
    iput-boolean p3, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 428
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDisplayInfo(Landroid/content/Context;)V

    .line 429
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->initScreenMinorSize(Landroid/content/Context;)V

    .line 431
    sget-object p3, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    invoke-virtual {p1, v3, p3, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 434
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_layout:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 435
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    .line 436
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 437
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 438
    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 439
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    .line 440
    sget v0, Lmiuix/appcompat/R$styleable;->AlertDialog_showTitle:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    .line 442
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->updateDimensConfig(Landroid/content/res/Resources;)V

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    .line 454
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 455
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImeDebugEnabled()Z

    .line 456
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_163

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create Dialog mCurrentDensityDpi "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlertController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_163
    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 126
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/app/AlertController;Z)Z
    .registers 2

    .line 126
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 3

    .line 126
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateContent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1500(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    return p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/app/AlertController;F)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateViewOnDensityChanged(F)V

    return-void
.end method

.method static synthetic access$1900(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/widget/DialogAnimHelper;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-object p0
.end method

.method static synthetic access$2002(Lmiuix/appcompat/app/AlertController;Z)Z
    .registers 2

    .line 126
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    return p1
.end method

.method static synthetic access$2100(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 126
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lmiuix/appcompat/app/AlertController;)I
    .registers 1

    .line 126
    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    return p0
.end method

.method static synthetic access$2202(Lmiuix/appcompat/app/AlertController;I)I
    .registers 2

    .line 126
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    return p1
.end method

.method static synthetic access$2300(Lmiuix/appcompat/app/AlertController;)I
    .registers 1

    .line 126
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    return p0
.end method

.method static synthetic access$2500(Lmiuix/appcompat/app/AlertController;I)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    return-void
.end method

.method static synthetic access$2600(Lmiuix/appcompat/app/AlertController;I)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    return-void
.end method

.method static synthetic access$2700(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$2800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    return-object p0
.end method

.method static synthetic access$2900(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return p0
.end method

.method static synthetic access$3000(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 126
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isFreeFormMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lmiuix/appcompat/app/AlertController;)I
    .registers 1

    .line 126
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lmiuix/appcompat/app/AlertController;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 126
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;
    .registers 1

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/view/View;)V

    return-void
.end method

.method private adjustHeight2WrapContent()V
    .registers 3

    .line 1218
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 1219
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1220
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;I)Z
    .registers 19

    move-object/from16 v0, p0

    .line 1570
    invoke-virtual/range {p1 .. p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getButtonFullyVisibleHeight()I

    move-result v2

    .line 1571
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v3, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    const/4 v13, 0x0

    if-eqz v12, :cond_1a

    .line 1572
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    move v5, v1

    goto :goto_1b

    :cond_1a
    move v5, v13

    .line 1573
    :goto_1b
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 1574
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x2

    const/4 v14, 0x1

    if-ne v1, v3, :cond_2f

    move v10, v14

    goto :goto_30

    :cond_2f
    move v10, v13

    .line 1575
    :goto_30
    new-instance v15, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;

    invoke-direct {v15}, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;-><init>()V

    .line 1576
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-boolean v6, v0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    .line 1577
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v7

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v9, v1, Landroid/graphics/Point;->y:I

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_49

    move v11, v14

    goto :goto_4a

    :cond_49
    move v11, v13

    :goto_4a
    move-object v1, v15

    move/from16 v8, p2

    .line 1576
    invoke-virtual/range {v1 .. v11}, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->updateData(IIIIZIIIZZ)V

    .line 1579
    iget-boolean v1, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v1, :cond_6a

    .line 1580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonNeedScrollable: buttonScrollSpec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    move-object/from16 v1, p1

    .line 1582
    invoke-direct {v0, v1, v12}, Lmiuix/appcompat/app/AlertController;->ifNeedMoveButtonToContentPanel(Lmiuix/appcompat/internal/widget/DialogButtonPanel;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_7a

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-virtual {v1, v15}, Lmiuix/appcompat/app/DialogDisplayStrategy;->isButtonScrollable(Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;)Z

    move-result v1

    if-eqz v1, :cond_7b

    :cond_7a
    move v13, v14

    :cond_7b
    return v13
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 5

    .line 517
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 521
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 525
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 526
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_14
    if-lez v0, :cond_23

    add-int/lit8 v0, v0, -0x1

    .line 529
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 530
    invoke-static {v3}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1

    :cond_23
    return v2
.end method

.method private changeTitlePadding(Landroid/widget/TextView;)V
    .registers 6

    .line 3037
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 3038
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    .line 3037
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private checkAndClearFocus()V
    .registers 2

    .line 2971
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2973
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_b
    return-void
.end method

.method private checkThread()Z
    .registers 3

    .line 2978
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private cleanWindowInsetsAnimation()V
    .registers 3

    .line 1788
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_1a

    .line 1789
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1790
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v0, 0x0

    .line 1791
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    :cond_1a
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .registers 5

    .line 2686
    instance-of v0, p1, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x0

    .line 2687
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 2688
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_21

    .line 2689
    :goto_e
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 2690
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_21
    return-void
.end method

.method private computeParentPanelMaxHeight()I
    .registers 6

    .line 1160
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 1161
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    .line 1162
    :goto_12
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 1163
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lmiuix/core/util/MiuixUIUtils;->px2dp(Landroid/content/Context;F)I

    move-result v3

    if-eqz v1, :cond_26

    .line 1166
    iget v0, v2, Landroid/graphics/Point;->y:I

    return v0

    :cond_26
    const v1, 0x3f333333    # 0.7f

    if-eqz v0, :cond_31

    .line 1170
    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_31
    const/16 v0, 0x1f4

    if-lt v3, v0, :cond_3b

    .line 1173
    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    :goto_38
    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_42

    :cond_3b
    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    goto :goto_38

    :goto_42
    return v0
.end method

.method private disableForceDark(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 1383
    invoke-static {p1, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method private getAssociatedActivityInsets(I)Landroid/graphics/Insets;
    .registers 6

    .line 2491
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 2493
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_23

    .line 2495
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2496
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2498
    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    :cond_23
    return-object v1
.end method

.method private getAssociatedActivitySystemBarVisibility(Landroid/app/Activity;I)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_27

    .line 2581
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_27

    .line 2584
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_27

    .line 2586
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 2588
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-eqz p1, :cond_27

    .line 2591
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p1

    return p1

    :cond_27
    :goto_27
    return v0
.end method

.method private getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;
    .registers 11

    .line 1900
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1901
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 1902
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 1903
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1904
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/16 v6, 0x1e

    if-lt v4, v6, :cond_1b

    .line 1905
    invoke-direct {p0, p1, v5}, Lmiuix/appcompat/app/AlertController;->getNaviBarInsets(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 1907
    :cond_1b
    iget-boolean v7, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v7, :cond_30

    .line 1909
    invoke-direct {p0, p1, v5}, Lmiuix/appcompat/app/AlertController;->getGuaranteedCutout(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 1910
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 1912
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_79

    :cond_30
    if-lt v4, v6, :cond_79

    .line 1914
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result p1

    if-nez p1, :cond_79

    .line 1916
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 1918
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Insets;->left:I

    iget v6, p1, Landroid/graphics/Insets;->top:I

    iget v7, p1, Landroid/graphics/Insets;->right:I

    iget v8, p1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1919
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    .line 1920
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    sub-int/2addr v1, v5

    .line 1922
    :cond_5f
    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v4, :cond_79

    .line 1923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableWindowSizeDp: cutoutInsets = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "AlertController"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_79
    :goto_79
    iget p1, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v4

    sub-int/2addr v2, p1

    .line 1928
    iget p1, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v3

    sub-int/2addr v1, p1

    .line 1929
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1930
    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private getCutoutMode(II)I
    .registers 3

    .line 0
    if-nez p2, :cond_7

    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    goto :goto_7

    :cond_6
    const/4 p2, 0x1

    :cond_7
    :goto_7
    return p2
.end method

.method private getCutoutSafely()Landroid/view/DisplayCutout;
    .registers 6

    .line 2446
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->showSystemAlertInFlip()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "getCutoutSafely"

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_26

    .line 2447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show system alert in flip, use displayCutout by reflect, displayCutout = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2448
    invoke-direct {p0, v2, v0, v1}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2449
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    return-object v0

    .line 2452
    :cond_26
    :try_start_26
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get displayCutout from context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2454
    invoke-direct {p0, v2, v3, v1}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_44} :catch_45

    return-object v0

    :catch_45
    move-exception v0

    .line 2456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is not associated display info, please check the type of context, the exception info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2456
    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_6b

    :cond_6a
    move-object v0, v1

    :goto_6b
    if-eqz v0, :cond_72

    .line 2460
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    :cond_72
    return-object v1
.end method

.method private getDialogPanelExtraBottomPadding()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method private getDialogPanelMargin()I
    .registers 5

    const/4 v0, 0x2

    .line 1796
    new-array v0, v0, [I

    .line 1797
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1798
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 1799
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 1801
    :cond_13
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1802
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    .line 1803
    aget v0, v0, v3

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 1804
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private getDisplayCutout(Z)Landroid/graphics/Rect;
    .registers 8

    .line 2332
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2334
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 2336
    iget v3, v1, Landroid/graphics/Insets;->left:I

    iget v4, v1, Landroid/graphics/Insets;->top:I

    iget v5, v1, Landroid/graphics/Insets;->right:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cutout from host, cutout = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2338
    const-string v3, "getDisplayCutout"

    invoke-direct {p0, v3, v1, v2}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_60

    .line 2341
    :cond_36
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getCutoutSafely()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 2342
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    goto :goto_42

    :cond_41
    move v3, v2

    :goto_42
    iput v3, v0, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_4b

    .line 2343
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    goto :goto_4c

    :cond_4b
    move v3, v2

    :goto_4c
    iput v3, v0, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_55

    .line 2344
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    goto :goto_56

    :cond_55
    move v3, v2

    :goto_56
    iput v3, v0, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_5e

    .line 2345
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    :cond_5e
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_60
    if-eqz p1, :cond_66

    .line 2348
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_66
    return-object v0
.end method

.method private getFlipCutout()V
    .registers 7

    .line 2412
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2417
    :try_start_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_14

    .line 2418
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    goto :goto_1e

    .line 2420
    :cond_14
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_1d

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    move-object v2, v1

    :goto_1e
    if-eqz v2, :cond_33

    .line 2423
    const-class v3, Landroid/view/Display;

    const-string v4, "getFlipFoldedCutout"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lmiuix/reflect/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2424
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayCutout;

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    goto :goto_3f

    .line 2426
    :cond_33
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_36

    goto :goto_3f

    .line 2429
    :catch_36
    const-string v2, "can\'t reflect from display to query cutout"

    .line 2430
    const-string v3, "getFlipCutout"

    invoke-direct {p0, v3, v2, v0}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2431
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    :goto_3f
    return-void
.end method

.method private getFreeFormAvoidSpace(Landroid/graphics/Rect;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 2147
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 2148
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_a

    :cond_8
    move p1, v0

    move v1, p1

    :goto_a
    if-eqz v1, :cond_11

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    move v2, v0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v2, 0x1

    .line 2151
    :goto_12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_2d

    if-eqz v2, :cond_2d

    .line 2152
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 2154
    iget v1, p1, Landroid/graphics/Insets;->top:I

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    if-eqz p1, :cond_2c

    .line 2155
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    :cond_2c
    move p1, v0

    :cond_2d
    if-nez v1, :cond_42

    .line 2159
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v0, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freeTabletCompactHeight:I

    move v1, v0

    goto :goto_42

    .line 2160
    :cond_3b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    iget v0, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    add-int/2addr v1, v0

    :cond_42
    :goto_42
    if-nez p1, :cond_57

    .line 2163
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget p1, p1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freeTabletCompactHeight:I

    goto :goto_57

    .line 2164
    :cond_4f
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v0, p1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    iget p1, p1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    add-int/2addr v0, p1

    move p1, v0

    :cond_57
    :goto_57
    add-int/2addr v1, p1

    return v1
.end method

.method private getGravity()I
    .registers 2

    .line 1981
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x11

    goto :goto_b

    :cond_9
    const/16 v0, 0x51

    :goto_b
    return v0
.end method

.method private getGuaranteedCutout(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;
    .registers 7

    .line 2309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2310
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2a

    if-eqz p1, :cond_26

    .line 2312
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 2313
    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_2a

    .line 2315
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_2a

    .line 2318
    :cond_26
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->getDisplayCutout(Z)Landroid/graphics/Rect;

    move-result-object v0

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private getImeBottomByWindowInsets(Landroid/view/WindowInsets;)I
    .registers 4

    if-nez p1, :cond_c

    .line 2479
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    :cond_c
    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 2482
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 2483
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    :cond_1b
    return v0

    .line 2485
    :cond_1c
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 2486
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    :cond_28
    return v0
.end method

.method private getNaviBarInsets(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;
    .registers 7

    .line 2354
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_d

    .line 2356
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    :cond_d
    if-eqz p1, :cond_29

    .line 2359
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 2360
    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_28

    .line 2362
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_28
    return-object v0

    .line 2364
    :cond_29
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 2366
    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_44

    .line 2368
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_44
    return-object v0

    .line 2371
    :cond_45
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lmiuix/core/util/EnvStateManager;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p1

    .line 2372
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getRotationSafely()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_61

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5e

    const/4 v1, 0x3

    if-eq p2, v1, :cond_5b

    .line 2384
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_63

    .line 2381
    :cond_5b
    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_63

    .line 2375
    :cond_5e
    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_63

    .line 2378
    :cond_61
    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_63
    return-object v0
.end method

.method private getPanelMaxLimitHeight(Landroid/graphics/Rect;)I
    .registers 11

    .line 2107
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 2109
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    goto :goto_15

    :cond_11
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    :goto_15
    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    .line 2114
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 2115
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3d

    .line 2116
    :cond_1d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_3b

    .line 2117
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-direct {p0, v3}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2118
    iget v4, v3, Landroid/graphics/Insets;->top:I

    goto :goto_31

    :cond_30
    move v4, v2

    :goto_31
    if-eqz v3, :cond_36

    .line 2119
    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_37

    :cond_36
    move v3, v2

    :goto_37
    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_3d

    :cond_3b
    move v3, v2

    move v4, v3

    .line 2121
    :goto_3d
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v5, v0, v5

    add-int v6, v4, v1

    sub-int/2addr v5, v6

    .line 2122
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v6, :cond_88

    .line 2123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPanelMaxLimitHeight: boundInset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", topInset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bottomInset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", windowHeight = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", verticalMargin = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", panelMaxLimitHeight = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AlertController"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_88
    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-eqz v4, :cond_92

    .line 2130
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getFreeFormAvoidSpace(Landroid/graphics/Rect;)I

    move-result p1

    sub-int v5, v0, p1

    .line 2133
    :cond_92
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz p1, :cond_a3

    .line 2134
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result p1

    .line 2135
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v1

    sub-int v5, v0, p1

    :cond_a3
    return v5
.end method

.method private getRotationSafely()I
    .registers 4

    .line 2396
    :try_start_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    .line 2398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is not associated display info, please check the type of context, the exception info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2398
    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_37

    .line 2402
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0

    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method private getScreenOrientation()I
    .registers 4

    .line 2911
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2914
    :cond_6
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    goto :goto_16

    :cond_15
    return v1

    :cond_16
    :goto_16
    const/4 v0, 0x2

    return v0
.end method

.method private getVisibleButtonCount()I
    .registers 4

    .line 1536
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1537
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_15

    :cond_c
    const/4 v1, 0x0

    goto :goto_15

    .line 1539
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 1542
    :goto_15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_22

    .line 1543
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1545
    :cond_22
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_1f

    .line 1548
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_38

    .line 1549
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1551
    :cond_38
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_35

    .line 1554
    :cond_41
    :goto_41
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_6c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 1555
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 1556
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 1558
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_51

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_6c
    return v1
.end method

.method private hideSoftIME()V
    .registers 4

    .line 849
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_16

    .line 851
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_16
    return-void
.end method

.method private ifNeedMoveButtonToContentPanel(Lmiuix/appcompat/internal/widget/DialogButtonPanel;Landroid/view/ViewGroup;)Z
    .registers 10

    .line 1586
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v1, 0x0

    if-eqz v0, :cond_80

    if-eqz p1, :cond_80

    if-eqz p2, :cond_80

    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-eqz v2, :cond_e

    goto :goto_80

    .line 1591
    :cond_e
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 1596
    :cond_15
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 1597
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 1598
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 1599
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    .line 1601
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1602
    instance-of v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_36

    .line 1603
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_37

    :cond_36
    move p1, v1

    .line 1605
    :goto_37
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v5, :cond_79

    .line 1606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ifNeedMoveButtonToContentPanel: topPanelHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", buttonPanelHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", buttonPanelMarginTop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", parentPanelPaddingTop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", parentPanelPaddingBottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", parentPanelHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlertController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    add-int/2addr p2, v4

    add-int/2addr p2, p1

    add-int/2addr p2, v2

    add-int/2addr p2, v3

    if-le p2, v0, :cond_80

    const/4 v1, 0x1

    :cond_80
    :goto_80
    return v1
.end method

.method private inflateDialogLayout()V
    .registers 6

    const/4 v0, 0x0

    .line 2043
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 2044
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content:I

    .line 2045
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2046
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content_land:I

    const/4 v2, 0x1

    .line 2047
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 2049
    :cond_14
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    if-eq v2, v1, :cond_d7

    .line 2050
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 2052
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v1, :cond_23

    .line 2053
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2055
    :cond_23
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mAsyncInflatePanelEnabled:Z

    if-eqz v1, :cond_94

    .line 2056
    invoke-static {}, Lmiuix/internal/util/AsyncInflateLayoutManager;->getInstance()Lmiuix/internal/util/AsyncInflateLayoutManager;

    move-result-object v1

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 2057
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v1, v2, v3, v4, v0}, Lmiuix/internal/util/AsyncInflateLayoutManager;->inflateViewById(Ljava/lang/Integer;Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 2058
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v1, :cond_77

    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateDialogLayout: parentPanel.getParent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflateDialogLayout: mParentPanel.getTag = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_77
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v1, :cond_a6

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 2068
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 2069
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    goto :goto_a6

    .line 2072
    :cond_94
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 2073
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 2075
    :cond_a6
    :goto_a6
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelFixedSizeEnabled:Z

    if-eqz v0, :cond_b8

    .line 2076
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelFixedWidth:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setPanelFixedWidth(I)V

    .line 2077
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelFixedHeight:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setPanelFixedHeight(I)V

    .line 2079
    :cond_b8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsInTinyScreen(Z)V

    .line 2080
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsDebugEnabled(Z)V

    .line 2082
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->getPanelMaxLimitHeight(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setPanelMaxLimitHeight(I)V

    .line 2083
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_d7
    return-void
.end method

.method private initScreenMinorSize(Landroid/content/Context;)V
    .registers 3

    .line 1822
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 1823
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    return-void
.end method

.method private isCancelable()Z
    .registers 2

    .line 841
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    return v0
.end method

.method private isCanceledOnTouchOutside()Z
    .registers 2

    .line 845
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method private isConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 13

    .line 2739
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_c

    move v1, v4

    goto :goto_d

    :cond_c
    move v1, v3

    .line 2741
    :goto_d
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v5, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq v2, v5, :cond_15

    move v2, v4

    goto :goto_16

    :cond_15
    move v2, v3

    .line 2743
    :goto_16
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_1e

    move v5, v4

    goto :goto_1f

    :cond_1e
    move v5, v3

    .line 2745
    :goto_1f
    iget v6, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v6, v7, :cond_27

    move v6, v4

    goto :goto_28

    :cond_27
    move v6, v3

    .line 2747
    :goto_28
    iget v7, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v7, v8, :cond_30

    move v7, v4

    goto :goto_31

    :cond_30
    move v7, v3

    .line 2749
    :goto_31
    iget v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v9, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v8, v9, :cond_39

    move v8, v4

    goto :goto_3a

    :cond_39
    move v8, v3

    .line 2752
    :goto_3a
    iget v9, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v10, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_44

    move v9, v4

    goto :goto_45

    :cond_44
    move v9, v3

    .line 2754
    :goto_45
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, p1, :cond_4d

    move p1, v4

    goto :goto_4e

    :cond_4d
    move p1, v3

    :goto_4e
    if-nez v1, :cond_5e

    if-nez v2, :cond_5e

    if-nez v5, :cond_5e

    if-nez v6, :cond_5e

    if-nez v7, :cond_5e

    if-nez v9, :cond_5e

    if-nez v8, :cond_5e

    if-eqz p1, :cond_5f

    :cond_5e
    move v3, v4

    :cond_5f
    return v3
.end method

.method private isDialogImeDebugEnabled()Z
    .registers 5

    .line 3051
    const-string v0, "AlertController"

    const-string v1, ""

    .line 3053
    :try_start_4
    const-string v2, "log.tag.alertdialog.ime.debug.enable"

    invoke-static {v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_f

    if-nez v2, :cond_d

    goto :goto_15

    :cond_d
    move-object v1, v2

    goto :goto_15

    :catch_f
    move-exception v2

    .line 3056
    const-string v3, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3058
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dialog ime debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    const-string v0, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    return v0
.end method

.method private isFreeFormMode()Z
    .registers 2

    .line 3507
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isNeedUpdateDialogPanelTranslationY()Z
    .registers 8

    .line 3543
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    .line 3545
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    move v1, v4

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v1, v3

    .line 3550
    :goto_1e
    sget-boolean v2, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_34

    .line 3551
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isFreeFormMode()Z

    move-result v5

    if-nez v5, :cond_34

    .line 3552
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_32

    move v5, v4

    goto :goto_35

    :cond_32
    move v5, v3

    goto :goto_35

    :cond_34
    const/4 v5, -0x1

    .line 3560
    :goto_35
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-eqz v6, :cond_42

    if-eqz v2, :cond_3d

    if-nez v1, :cond_40

    :cond_3d
    if-nez v5, :cond_40

    goto :goto_50

    :cond_40
    move v3, v4

    goto :goto_50

    :cond_42
    if-eqz v2, :cond_46

    if-nez v1, :cond_40

    .line 3566
    :cond_46
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v1, :cond_40

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    if-nez v1, :cond_50

    if-eqz v0, :cond_40

    :cond_50
    :goto_50
    return v3
.end method

.method private isSpecifiedDialogHeight()Z
    .registers 3

    .line 3580
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private isTablet()Z
    .registers 2

    .line 1985
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private synthetic lambda$setupView$0(Landroid/view/View;)V
    .registers 2

    .line 890
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 894
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_11
    return-void
.end method

.method private synthetic lambda$setupView$1(Landroid/view/View;)V
    .registers 2

    .line 901
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 902
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    .line 903
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_14
    return-void
.end method

.method private synthetic lambda$setupView$2()V
    .registers 1

    .line 0
    return-void
.end method

.method private listViewIsNeedFullScroll()Z
    .registers 10

    .line 1179
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v0

    .line 1180
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    mul-int/2addr v1, v0

    .line 1181
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_18

    move v2, v5

    goto :goto_19

    :cond_18
    move v2, v4

    .line 1186
    :goto_19
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->computeParentPanelMaxHeight()I

    move-result v3

    .line 1187
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const-string v7, "AlertController"

    if-eqz v6, :cond_47

    .line 1188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "listViewIsNeedFullScroll: itemsMinHeight = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", singleItemMinHeight = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", panelMaxHeight = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-eqz v2, :cond_72

    if-lez v3, :cond_72

    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 1194
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v1, :cond_69

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listViewIsNeedFullScroll: radioInMaxHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_71

    move v4, v5

    :cond_71
    return v4

    .line 1200
    :cond_72
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-le v1, v0, :cond_7f

    move v4, v5

    :cond_7f
    return v4
.end method

.method private onLayoutReload()V
    .registers 2

    .line 2844
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->onLayoutReload()V

    return-void
.end method

.method private printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 2325
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-nez v0, :cond_6

    if-eqz p3, :cond_1f

    .line 2326
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlertController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method private px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 2468
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 2469
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2470
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2471
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 2472
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method private reInitLandConfig()V
    .registers 3

    .line 2699
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    .line 2700
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    return-void
.end method

.method private recordButtonTypeForOS3Display(Landroid/view/ViewGroup;)V
    .registers 8

    .line 1498
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_c

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mPrimaryButtonFirstEnabled:Z

    if-nez v0, :cond_c

    return-void

    .line 1501
    :cond_c
    instance-of v0, p1, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    instance-of v1, v1, Lmiuix/internal/widget/GroupButton;

    if-eqz v1, :cond_23

    .line 1502
    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->clearPrimaryStyleButtonList()V

    .line 1503
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    check-cast v2, Lmiuix/internal/widget/GroupButton;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addPrimaryStyleButtons(Lmiuix/internal/widget/GroupButton;)V

    :cond_23
    if-eqz v0, :cond_38

    .line 1505
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    instance-of v1, v1, Lmiuix/internal/widget/GroupButton;

    if-eqz v1, :cond_38

    .line 1506
    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->clearNegativeStyleButtonList()V

    .line 1507
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    check-cast v2, Lmiuix/internal/widget/GroupButton;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addNegativeStyleButtons(Lmiuix/internal/widget/GroupButton;)V

    :cond_38
    if-eqz v0, :cond_4d

    .line 1509
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    instance-of v1, v1, Lmiuix/internal/widget/GroupButton;

    if-eqz v1, :cond_4d

    .line 1510
    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->clearNeutralStyleButtonList()V

    .line 1511
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    check-cast v2, Lmiuix/internal/widget/GroupButton;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addNeutralStyleButtons(Lmiuix/internal/widget/GroupButton;)V

    .line 1513
    :cond_4d
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v1, :cond_d0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d0

    .line 1514
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5d
    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    if-eqz v2, :cond_5d

    .line 1516
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v3

    if-eqz v3, :cond_5d

    if-eqz v0, :cond_5d

    .line 1517
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v3

    const v4, 0x1010489

    if-eq v3, v4, :cond_c5

    .line 1518
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v3

    sget v4, Lmiuix/appcompat/R$attr;->buttonBarPrimaryButtonStyle:I

    if-ne v3, v4, :cond_85

    goto :goto_c5

    .line 1520
    :cond_85
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v3

    const v4, 0x101048b

    if-eq v3, v4, :cond_ba

    .line 1521
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v3

    sget v4, Lmiuix/appcompat/R$attr;->buttonBarButtonStyle:I

    if-eq v3, v4, :cond_ba

    .line 1522
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v3

    const v5, 0x101032f

    if-ne v3, v5, :cond_a0

    goto :goto_ba

    .line 1524
    :cond_a0
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v3

    const v5, 0x101048a

    if-eq v3, v5, :cond_af

    .line 1525
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v3

    if-ne v3, v4, :cond_5d

    .line 1526
    :cond_af
    move-object v3, p1

    check-cast v3, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addNeutralStyleButtons(Lmiuix/internal/widget/GroupButton;)V

    goto :goto_5d

    .line 1523
    :cond_ba
    :goto_ba
    move-object v3, p1

    check-cast v3, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addNegativeStyleButtons(Lmiuix/internal/widget/GroupButton;)V

    goto :goto_5d

    .line 1519
    :cond_c5
    :goto_c5
    move-object v3, p1

    check-cast v3, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addPrimaryStyleButtons(Lmiuix/internal/widget/GroupButton;)V

    goto :goto_5d

    :cond_d0
    return-void
.end method

.method private resetListMaxHeight()V
    .registers 3

    .line 1206
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1207
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v1

    .line 1208
    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    .line 1210
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 1211
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1212
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1213
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setAnimIfEditExistForNonImmersive(Landroid/view/View;)V
    .registers 3

    .line 1070
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_20

    .line 1073
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1074
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1076
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lmiuix/appcompat/R$style;->Animation_Dialog_ExistIme:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_20
    return-void
.end method

.method private setWindowNavigationBarHidden()V
    .registers 3

    .line 2573
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x1002

    .line 2575
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    .line 2576
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsAssociatedActivityHideNavigationBar:Z

    :cond_10
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 13

    const v0, 0x1020019

    .line 1389
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1390
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1391
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1392
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1394
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    .line 1395
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_43

    .line 1397
    :cond_31
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1400
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    move v0, v2

    :goto_43
    const v4, 0x102001a

    .line 1403
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1404
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1405
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1406
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1408
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1409
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_82

    .line 1411
    :cond_6f
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    .line 1414
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    :goto_82
    const v4, 0x102001b

    .line 1417
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1418
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1419
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1420
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1422
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 1423
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_c1

    .line 1425
    :cond_ae
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    .line 1428
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 1431
    :goto_c1
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_178

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_178

    .line 1432
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d2
    :goto_d2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ec

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 1433
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    if-eqz v7, :cond_d2

    .line 1434
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    goto :goto_d2

    .line 1437
    :cond_ec
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_178

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 1438
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    if-nez v7, :cond_145

    .line 1439
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1440
    new-instance v8, Lmiuix/internal/widget/GroupButton;

    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v10

    invoke-direct {v8, v9, v5, v10}, Lmiuix/internal/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    # setter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6, v8}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$602(Lmiuix/appcompat/app/AlertController$ButtonInfo;Lmiuix/internal/widget/GroupButton;)Lmiuix/internal/widget/GroupButton;

    .line 1441
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mText:Ljava/lang/CharSequence;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1200(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1443
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1445
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 1447
    :cond_145
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v7

    if-nez v7, :cond_15c

    .line 1448
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mWhich:I
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1300(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v8

    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1800(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    # setter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;
    invoke-static {v6, v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$702(Lmiuix/appcompat/app/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;

    .line 1450
    :cond_15c
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_16f

    add-int/lit8 v0, v0, 0x1

    .line 1452
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 1454
    :cond_16f
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_f2

    .line 1458
    :cond_178
    instance-of v4, p1, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    if-eqz v4, :cond_185

    .line 1463
    move-object v4, p1

    check-cast v4, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-virtual {v4, v3}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setHorizontalPositionConfirmed(Z)V

    .line 1464
    invoke-virtual {v4, v3}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setVerticalPositionConfirmed(Z)V

    .line 1467
    :cond_185
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->recordButtonTypeForOS3Display(Landroid/view/ViewGroup;)V

    if-nez v0, :cond_18e

    .line 1469
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1bf

    .line 1471
    :cond_18e
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/WindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    .line 1473
    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v4, :cond_19c

    if-eqz v1, :cond_19c

    move v1, v2

    goto :goto_19d

    :cond_19c
    move v1, v3

    .line 1475
    :goto_19d
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1a8

    move v4, v2

    goto :goto_1a9

    :cond_1a8
    move v4, v3

    .line 1476
    :goto_1a9
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    if-nez v6, :cond_1b8

    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v6, :cond_1b8

    if-nez v1, :cond_1b8

    if-eqz v4, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    move v1, v3

    goto :goto_1b9

    :cond_1b8
    :goto_1b8
    move v1, v2

    .line 1477
    :goto_1b9
    move-object v4, p1

    check-cast v4, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-virtual {v4, v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setForceVertical(Z)V

    .line 1480
    :goto_1bf
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1481
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1482
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1483
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v6, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1485
    move-object v6, p1

    check-cast v6, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0, v6, v0}, Lmiuix/appcompat/app/AlertController;->buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;I)Z

    move-result v0

    .line 1486
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    int-to-float v1, v1

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v7

    cmpg-float v1, v6, v1

    if-lez v1, :cond_1f4

    if-eqz v0, :cond_1f3

    goto :goto_1f4

    :cond_1f3
    move v2, v3

    .line 1487
    :cond_1f4
    :goto_1f4
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v0, :cond_208

    if-nez v2, :cond_200

    .line 1489
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_208

    .line 1491
    :cond_200
    invoke-virtual {p0, p1, v4}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1492
    check-cast v4, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :cond_208
    :goto_208
    return-void
.end method

.method private setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V
    .registers 5

    .line 1840
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1841
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p2, 0x1020001

    .line 1842
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 1843
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1844
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1845
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1847
    :cond_1e
    sget p2, Lmiuix/appcompat/R$id;->textAlign:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/TextAlignLayout;

    if-eqz p1, :cond_30

    .line 1849
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/TextAlignLayout;->setDialogPanelHasCheckbox(Z)V

    :cond_30
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;Z)V
    .registers 12

    const v0, 0x102002b

    .line 1224
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    if-eqz p2, :cond_25

    .line 1227
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v3, 0xc8

    .line 1228
    invoke-virtual {p2, v2, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1229
    new-instance v3, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {p2, v2, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 1230
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_28

    .line 1232
    :cond_25
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1236
    :cond_28
    :goto_28
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    if-eqz p2, :cond_e7

    if-eqz v0, :cond_34

    .line 1239
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result p2

    goto :goto_35

    :cond_34
    move p2, v2

    :goto_35
    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz p2, :cond_a2

    .line 1244
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1245
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1246
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1247
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1248
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1250
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v7, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1251
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->listViewIsNeedFullScroll()Z

    move-result v3

    if-nez v3, :cond_79

    .line 1258
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adjustHeight2WrapContent()V

    .line 1259
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_85

    .line 1263
    :cond_79
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    .line 1264
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    :goto_85
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, v6, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_98

    .line 1270
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    .line 1273
    :cond_98
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-nez v3, :cond_9d

    move-object v1, v6

    :cond_9d
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto/16 :goto_10f

    .line 1275
    :cond_a2
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_b0

    .line 1277
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1279
    :cond_b0
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1281
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 1282
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1283
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p2, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1284
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    if-lez v0, :cond_da

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v0

    if-nez v0, :cond_da

    .line 1285
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v0, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->listViewMarginBottom:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1287
    :cond_da
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_10f

    .line 1292
    :cond_e7
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_f4

    .line 1294
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_f4
    if-eqz v0, :cond_106

    .line 1298
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_105

    .line 1300
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_105

    .line 1302
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    :cond_105
    move v2, p2

    .line 1307
    :cond_106
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v2, :cond_10b

    goto :goto_10c

    :cond_10b
    move-object v0, v1

    :goto_10c
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_10f
    return-void
.end method

.method private setupContentView(Landroid/view/ViewGroup;)V
    .registers 4

    .line 1363
    sget v0, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 1364
    sget v0, Lmiuix/appcompat/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 1365
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_31

    .line 1366
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p1, :cond_34

    .line 1369
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    .line 1370
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    :cond_2b
    const/16 v0, 0x8

    .line 1372
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34

    .line 1378
    :cond_31
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)Z
    .registers 6

    .line 1036
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1037
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1038
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 1040
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move-object v1, v0

    goto :goto_2b

    .line 1042
    :cond_19
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_2b

    .line 1043
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1044
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    :cond_2b
    :goto_2b
    if-eqz v1, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    const/high16 v0, 0x20000

    if-eqz v2, :cond_3f

    .line 1050
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_3f

    .line 1055
    :cond_39
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_44

    .line 1051
    :cond_3f
    :goto_3f
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 1058
    :goto_44
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->setAnimIfEditExistForNonImmersive(Landroid/view/View;)V

    if-eqz v2, :cond_4d

    .line 1061
    invoke-virtual {p0, v1, p1}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_50

    .line 1063
    :cond_4d
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :goto_50
    return v2
.end method

.method private setupImmersiveWindow()V
    .registers 7

    .line 2521
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 2522
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2523
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 2524
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$style;->Animation_Dialog_NoAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 2525
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, -0x7ffff700

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-le v0, v1, :cond_5f

    .line 2530
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 2532
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2533
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v4

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v4, v1}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_5f

    .line 2536
    :cond_4e
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_56

    goto :goto_57

    :cond_56
    move v3, v2

    .line 2541
    :goto_57
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2544
    :cond_5f
    :goto_5f
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_e1

    .line 2546
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 2547
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2548
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivitySystemBarVisibility(Landroid/app/Activity;I)Z

    move-result v3

    const/16 v4, 0x400

    if-eqz v0, :cond_98

    .line 2550
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v4

    if-eq v5, v4, :cond_98

    goto :goto_99

    :cond_98
    move v2, v1

    :goto_99
    if-eqz v2, :cond_a6

    if-nez v3, :cond_a1

    .line 2555
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-eqz v1, :cond_a6

    .line 2556
    :cond_a1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 2558
    :cond_a6
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivitySystemBarVisibility(Landroid/app/Activity;I)Z

    move-result v0

    .line 2559
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v1, :cond_d8

    .line 2560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupImmersiveWindow: statusBarIsVisible = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", windowExcludeFullScreenFlag = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", navigationBarIsVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    if-nez v0, :cond_e1

    .line 2565
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v0, :cond_e1

    .line 2567
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setWindowNavigationBarHidden()V

    :cond_e1
    return-void
.end method

.method private setupNonImmersiveWindow()V
    .registers 11

    const/4 v0, 0x0

    .line 2598
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v1

    .line 2599
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelLayoutParams(Landroid/graphics/Point;)V

    .line 2600
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1c

    .line 2602
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    .line 2603
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    mul-int/2addr v2, v3

    sub-int v2, v5, v2

    .line 2606
    :cond_1c
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v5, :cond_60

    .line 2607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupNonImmersiveWindow: windowWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlertController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupNonImmersiveWindow: availableWindowSizeDp = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupNonImmersiveWindow: horizontalMargin = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_60
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    if-lez v1, :cond_6b

    .line 2612
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-lt v1, v5, :cond_6b

    goto :goto_6c

    :cond_6b
    move v4, v1

    .line 2615
    :goto_6c
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v1

    .line 2616
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v1}, Landroid/view/Window;->setGravity(I)V

    .line 2617
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/16 v6, 0x50

    and-int/2addr v1, v6

    const/4 v7, 0x0

    if-ne v1, v6, :cond_f3

    .line 2621
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    goto :goto_8e

    :cond_8a
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    .line 2623
    :goto_8e
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiuix/core/util/MiuixUIUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result v6

    .line 2625
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_aa

    iget-boolean v8, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v8, :cond_aa

    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 2626
    invoke-static {v8}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_aa

    const/4 v8, 0x1

    goto :goto_ab

    :cond_aa
    move v8, v7

    .line 2627
    :goto_ab
    iget-boolean v9, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v9, :cond_b3

    if-eqz v8, :cond_d0

    if-eqz v6, :cond_d0

    :cond_b3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v6, v8, :cond_d0

    .line 2629
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v6

    invoke-direct {p0, v6}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v6

    .line 2631
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v8, v8, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    if-eqz v6, :cond_ca

    .line 2632
    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    goto :goto_cb

    :cond_ca
    move v6, v7

    :goto_cb
    if-nez v6, :cond_cf

    add-int/2addr v1, v8

    goto :goto_d0

    :cond_cf
    add-int/2addr v1, v6

    .line 2636
    :cond_d0
    :goto_d0
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x8000000

    and-int v9, v6, v8

    if-eqz v9, :cond_dd

    .line 2641
    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v8}, Landroid/view/Window;->clearFlags(I)V

    :cond_dd
    const/high16 v8, 0x4000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_e7

    .line 2646
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v8}, Landroid/view/Window;->clearFlags(I)V

    :cond_e7
    int-to-float v1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v1, v6

    .line 2649
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 2656
    :cond_f3
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2658
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2659
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2661
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2662
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_113

    sget v3, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_115

    :cond_113
    sget v3, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    :goto_115
    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 2663
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 2664
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2665
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v1, :cond_149

    .line 2667
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2668
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 2669
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2670
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isSpecifiedDialogHeight()Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 2671
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2673
    :cond_13f
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2674
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2676
    :cond_149
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_15b

    .line 2677
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 2678
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$style;->Animation_Dialog_Center:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_160

    .line 2681
    :cond_15b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_160
    :goto_160
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 9

    .line 1092
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1093
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_31

    .line 1094
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1096
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1098
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1102
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_bd

    .line 1105
    :cond_31
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 1106
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v1, :cond_ac

    .line 1108
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 1109
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    if-eqz v1, :cond_56

    .line 1115
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_76

    .line 1116
    :cond_56
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5e

    .line 1117
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_76

    .line 1121
    :cond_5e
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    .line 1122
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    .line 1123
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    .line 1124
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 1121
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1125
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1127
    :goto_76
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    if-eqz v1, :cond_88

    .line 1128
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1129
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v4, v3, Lmiuix/appcompat/app/DialogContract$DimensConfig;->smallIconWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1130
    iget v3, v3, Lmiuix/appcompat/app/DialogContract$DimensConfig;->smallIconHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1132
    :cond_88
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    if-eqz v1, :cond_9c

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    if-eqz v1, :cond_9c

    .line 1133
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1134
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1135
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1139
    :cond_9c
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_bd

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_bd

    .line 1140
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->changeTitlePadding(Landroid/widget/TextView;)V

    goto :goto_bd

    .line 1144
    :cond_ac
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1145
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1147
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_bd
    :goto_bd
    return-void
.end method

.method private setupView()V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 856
    invoke-direct {p0, v2, v0, v0, v1}, Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V

    .line 857
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->storeCustomViewInitialTextSize()V

    return-void
.end method

.method private setupView(ZZZF)V
    .registers 8

    .line 888
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_16

    .line 889
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    new-instance v2, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateImmersiveDialogPanel()V

    goto :goto_2b

    .line 899
    :cond_16
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isSpecifiedDialogHeight()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 900
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v2, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    :cond_26
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2b
    if-nez p1, :cond_40

    if-nez p2, :cond_40

    .line 913
    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz p2, :cond_34

    goto :goto_40

    .line 966
    :cond_34
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance p2, Lmiuix/appcompat/app/AlertController$6;

    invoke-direct {p2, p0, p4}, Lmiuix/appcompat/app/AlertController$6;-><init>(Lmiuix/appcompat/app/AlertController;F)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ca

    .line 914
    :cond_40
    :goto_40
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget p4, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 915
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v0, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 916
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v2, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p4, :cond_63

    .line 919
    invoke-direct {p0, p4, p3}, Lmiuix/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;Z)V

    .line 922
    :cond_63
    instance-of p3, v0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    if-eqz p3, :cond_79

    .line 923
    move-object p3, v0

    check-cast p3, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result p4

    invoke-virtual {p3, p4}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isContentLandscape(Z)V

    .line 924
    iget-boolean p4, p0, Lmiuix/appcompat/app/AlertController;->mPrimaryButtonFirstEnabled:Z

    invoke-virtual {p3, p4}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setPrimaryButtonFirstEnabled(Z)V

    .line 925
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_79
    if-eqz p2, :cond_7e

    .line 929
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_7e
    if-eqz p2, :cond_9d

    .line 932
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p3

    if-eq p3, v1, :cond_9d

    .line 937
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez p3, :cond_91

    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p3, :cond_8f

    goto :goto_91

    :cond_8f
    const/4 p2, 0x0

    goto :goto_97

    .line 938
    :cond_91
    :goto_91
    sget p3, Lmiuix/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_97
    if-eqz p2, :cond_9d

    const/4 p3, 0x0

    .line 942
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 946
    :cond_9d
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_b4

    .line 947
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p3, :cond_b4

    .line 948
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 949
    iget p3, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    const/4 p4, -0x1

    if-le p3, p4, :cond_b4

    const/4 p4, 0x1

    .line 951
    invoke-virtual {p2, p3, p4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 952
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 957
    :cond_b4
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget p3, Lmiuix/appcompat/R$id;->checkbox_stub:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_c5

    .line 959
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p3, p2}, Lmiuix/appcompat/app/AlertController;->setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V

    :cond_c5
    if-nez p1, :cond_ca

    .line 963
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->onLayoutReload()V

    .line 985
    :cond_ca
    :goto_ca
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance p2, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda2;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupWindow()V
    .registers 2

    .line 2513
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2514
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupImmersiveWindow()V

    goto :goto_d

    .line 2516
    :cond_a
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    :goto_d
    return-void
.end method

.method private setupWindowInsetsAnimation()V
    .registers 4

    .line 1664
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1667
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    .line 1670
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1671
    new-instance v0, Lmiuix/appcompat/app/AlertController$7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertController$7;-><init>(Lmiuix/appcompat/app/AlertController;I)V

    .line 1751
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1756
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmiuix/appcompat/app/AlertController$8;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$8;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1783
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    return-void
.end method

.method private shouldUseLandscapePanel()Z
    .registers 5

    .line 1935
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1940
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1941
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v3, v3, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidthLand:I

    if-ge v2, v3, :cond_15

    return v1

    :cond_15
    mul-int/lit8 v2, v2, 0x2

    if-gt v2, v0, :cond_1a

    return v1

    .line 1949
    :cond_1a
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    return v1
.end method

.method private showSystemAlertInFlip()Z
    .registers 5

    .line 2437
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_15

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    move v0, v3

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v2

    .line 2440
    :goto_16
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v1, :cond_21

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mUseForceFlipCutout:Z

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :cond_22
    :goto_22
    return v2
.end method

.method private storeCustomViewInitialTextSize()V
    .registers 6

    .line 863
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 864
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 865
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 867
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_1d

    const v3, 0x1020016

    .line 868
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 870
    :cond_1d
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_46

    .line 871
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 873
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x2

    if-lt v2, v3, :cond_35

    .line 874
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSizeUnit()I

    move-result v2

    goto :goto_36

    :cond_35
    move v2, v4

    :goto_36
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    .line 879
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    div-float/2addr v1, v0

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    goto :goto_46

    :cond_3f
    if-ne v2, v4, :cond_46

    .line 881
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    div-float/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    :cond_46
    :goto_46
    return-void
.end method

.method private translateDialogPanel(I)V
    .registers 4

    .line 3043
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_1a

    .line 3044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The DialogPanel transitionY for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3047
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 10

    .line 1618
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    .line 1619
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1620
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1621
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1623
    move-object v2, p1

    check-cast v2, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0, v2, v0}, Lmiuix/appcompat/app/AlertController;->buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;I)Z

    move-result v0

    .line 1624
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v1, v1

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v4

    cmpg-float v1, v3, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_32

    if-eqz v0, :cond_30

    goto :goto_32

    :cond_30
    move v0, v3

    goto :goto_33

    :cond_32
    :goto_32
    move v0, v4

    .line 1625
    :goto_33
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_43

    move v1, v4

    goto :goto_44

    :cond_43
    move v1, v3

    .line 1627
    :goto_44
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v5, :cond_4c

    if-eqz v1, :cond_4c

    move v1, v4

    goto :goto_4d

    :cond_4c
    move v1, v3

    .line 1629
    :goto_4d
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_58

    move v5, v4

    goto :goto_59

    :cond_58
    move v5, v3

    .line 1630
    :goto_59
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    if-nez v6, :cond_65

    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v6, :cond_65

    if-nez v1, :cond_65

    if-eqz v5, :cond_66

    :cond_65
    move v3, v4

    .line 1631
    :cond_66
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setForceVertical(Z)V

    if-nez v0, :cond_71

    .line 1633
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_7a

    .line 1635
    :cond_71
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1636
    check-cast p2, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_7a
    return-void
.end method

.method private updateContent(Landroid/view/ViewGroup;)V
    .registers 8

    const v0, 0x102002b

    .line 1317
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1319
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_15

    move v3, v1

    goto :goto_16

    :cond_15
    move v3, v2

    .line 1322
    :goto_16
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    if-eqz v4, :cond_67

    if-eqz v3, :cond_61

    .line 1326
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->listViewIsNeedFullScroll()Z

    move-result v1

    if-nez v1, :cond_45

    .line 1329
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adjustHeight2WrapContent()V

    .line 1330
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1331
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1332
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1333
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1334
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1335
    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 1336
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_79

    .line 1340
    :cond_45
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    .line 1341
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    .line 1342
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 1343
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1344
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {v0, v5}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 1346
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_79

    .line 1350
    :cond_61
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_79

    :cond_67
    if-eqz v3, :cond_70

    .line 1355
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1356
    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1358
    :cond_70
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v3, :cond_75

    goto :goto_76

    :cond_75
    move-object v0, v5

    :goto_76
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_79
    return-void
.end method

.method private updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    .registers 8

    .line 3513
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    .line 3514
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isNeedUpdateDialogPanelTranslationY()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 3515
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    .line 3516
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 3517
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 3518
    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const-string v4, "AlertController"

    if-eqz v3, :cond_84

    .line 3519
    const-string v3, "======================Debug for checkTranslateDialogPanel======================"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The mPanelAndImeMargin: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The imeInsets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The navigationBarInsets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The insets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    :cond_84
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p1

    if-nez p1, :cond_8f

    .line 3527
    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {p0, v3}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 3529
    :cond_8f
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_98

    if-nez p1, :cond_98

    .line 3531
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    .line 3533
    :cond_98
    invoke-direct {p0, v1, v0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelTranslationYByIme(IZZ)V

    .line 3534
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_a4

    .line 3535
    const-string p1, "===================End of Debug for checkTranslateDialogPanel==================="

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    return-void
.end method

.method private updateDialogPanelLayoutParams(Landroid/graphics/Point;)V
    .registers 19

    move-object/from16 v0, p0

    if-nez p1, :cond_a

    const/4 v1, 0x0

    .line 2012
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_c

    :cond_a
    move-object/from16 v1, p1

    .line 2014
    :goto_c
    new-instance v8, Lmiuix/appcompat/app/DialogContract$OrientationSpec;

    invoke-direct {v8}, Lmiuix/appcompat/app/DialogContract$OrientationSpec;-><init>()V

    .line 2015
    iget-object v2, v8, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mUsableWindowSizeDp:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 2016
    iget-object v2, v8, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mWindowSize:Landroid/graphics/Point;

    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Point;->set(II)V

    .line 2017
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mRealScreenSize:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 2018
    iget-boolean v3, v0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v5

    iget-boolean v6, v0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    iget-boolean v7, v0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->updateData(ZZIZZ)V

    .line 2019
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-virtual {v2, v8}, Lmiuix/appcompat/app/DialogDisplayStrategy;->isLandscapeWindow(Lmiuix/appcompat/app/DialogContract$OrientationSpec;)Z

    move-result v11

    .line 2020
    iget v14, v1, Landroid/graphics/Point;->x:I

    .line 2021
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-virtual {v1, v14}, Lmiuix/appcompat/app/DialogDisplayStrategy;->shouldLimitPanelWidth(I)Z

    move-result v1

    .line 2022
    iget-boolean v2, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v2, :cond_78

    .line 2023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogPanelLayoutParams isLandScape "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlertController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDialogPanelLayoutParams shouldLimitWidth "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    const/4 v2, 0x0

    if-eqz v1, :cond_7d

    move v1, v2

    goto :goto_85

    .line 2030
    :cond_7d
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-virtual {v1, v3, v14}, Lmiuix/appcompat/app/DialogDisplayStrategy;->getWidthMargin(Lmiuix/appcompat/app/DialogContract$DimensConfig;I)I

    move-result v1

    .line 2032
    :goto_85
    iput-boolean v11, v0, Lmiuix/appcompat/app/AlertController;->mIsWindowLandScape:Z

    .line 2033
    new-instance v3, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;

    invoke-direct {v3}, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;-><init>()V

    .line 2034
    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz v4, :cond_97

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v4

    if-eqz v4, :cond_97

    const/4 v2, 0x1

    :cond_97
    move v10, v2

    iget-boolean v12, v0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    iget-boolean v13, v0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    iget v15, v0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    iget-boolean v2, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    move-object v9, v3

    move/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->updateData(ZZZZIIZ)V

    .line 2037
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/DialogDisplayStrategy;->getPanelWidth(Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;)I

    move-result v2

    iput v2, v0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    .line 2038
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->inflateDialogLayout()V

    .line 2039
    iput v1, v0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    return-void
.end method

.method private updateDialogPanelTranslationYByIme(IZZ)V
    .registers 8

    const/4 v0, 0x0

    .line 3584
    const-string v1, "AlertController"

    if-lez p1, :cond_aa

    .line 3585
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    move-result v2

    .line 3586
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 3587
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    if-gtz v2, :cond_18

    .line 3589
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 3591
    :cond_18
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v2, :cond_42

    .line 3592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogPanelTranslationYByIme mPanelAndImeMargin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMultiWindowMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " imeBottom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    if-eqz p2, :cond_48

    if-nez p3, :cond_48

    neg-int p2, p1

    goto :goto_4c

    :cond_48
    neg-int p2, p1

    .line 3597
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    add-int/2addr p2, v2

    :goto_4c
    if-eqz p3, :cond_53

    .line 3599
    iget p3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    if-ge p1, p3, :cond_53

    goto :goto_54

    :cond_53
    move v0, p2

    .line 3602
    :goto_54
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-eqz p1, :cond_8e

    .line 3605
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_70

    .line 3606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDialogPanelTranslationYByIme anim translateDialogPanel Y="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    :cond_70
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3609
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_c1

    .line 3611
    :cond_8e
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_a6

    .line 3612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDialogPanelTranslationYByIme translateDialogPanel Y="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :cond_a6
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    goto :goto_c1

    .line 3618
    :cond_aa
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_b3

    .line 3619
    const-string p1, "updateDialogPanelTranslationYByIme imeBottom <= 0"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    :cond_b3
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_c1

    .line 3623
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method private updateDimBgBottomMargin(I)V
    .registers 4

    .line 2504
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 2505
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2506
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_13

    .line 2507
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2508
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_13
    return-void
.end method

.method private updateDimensConfig(Landroid/content/res/Resources;)V
    .registers 4

    .line 463
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidth:I

    .line 464
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidthLand:I

    .line 465
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_list_view_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->listViewMarginBottom:I

    .line 466
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    .line 467
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->fakeLandScreenMinorSize:I

    .line 468
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_small_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    .line 469
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthMargin:I

    .line 470
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_tablet_t:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freeTabletCompactHeight:I

    .line 471
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    .line 472
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_icon_drawable_width_small:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->smallIconWidth:I

    .line 473
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_icon_drawable_height_small:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->smallIconHeight:I

    return-void
.end method

.method private updateDisplayInfo(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 477
    invoke-static {p1, v0}, Lmiuix/os/DeviceHelper;->isCarWithScreen(Landroid/content/Context;Landroid/view/Display;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    if-nez v0, :cond_10

    .line 479
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isXiaomiSynergy(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    goto :goto_13

    :cond_10
    const/4 p1, 0x1

    .line 481
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    :goto_13
    return-void
.end method

.method private updateImmersiveDialogPanel()V
    .registers 5

    const/4 v0, 0x0

    .line 1989
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v0

    .line 1990
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelLayoutParams(Landroid/graphics/Point;)V

    .line 1991
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 1994
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 1995
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 1997
    :cond_1c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1998
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1999
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    if-ne v1, v2, :cond_32

    .line 2000
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2001
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2003
    :cond_32
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMinorScreenSize()V
    .registers 4

    .line 1827
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1828
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-lez v0, :cond_20

    .line 1831
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    goto :goto_38

    .line 1833
    :cond_20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1834
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1835
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    :goto_38
    return-void
.end method

.method private updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2171
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v2

    if-nez v2, :cond_264

    if-nez v1, :cond_e

    goto/16 :goto_264

    .line 2177
    :cond_e
    iget-boolean v2, v0, Lmiuix/appcompat/app/AlertController;->mNavigationBarHiddenEnabled:Z

    if-nez v2, :cond_20

    iget-boolean v2, v0, Lmiuix/appcompat/app/AlertController;->mIsAssociatedActivityHideNavigationBar:Z

    if-eqz v2, :cond_17

    goto :goto_20

    .line 2180
    :cond_17
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    goto :goto_28

    .line 2178
    :cond_20
    :goto_20
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 2182
    :goto_28
    invoke-static {v2}, Lmiuix/appcompat/app/DialogContract;->insetsToRect(Landroid/graphics/Insets;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2184
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    .line 2185
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 2186
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    .line 2187
    iget-object v6, v0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    .line 2188
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    if-eqz v8, :cond_52

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-nez v7, :cond_50

    goto :goto_52

    :cond_50
    move v10, v5

    goto :goto_5e

    :cond_52
    :goto_52
    const/4 v5, 0x0

    .line 2193
    invoke-direct {v0, v5}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 2194
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 2195
    iget v5, v5, Landroid/graphics/Point;->y:I

    move v10, v6

    move v6, v5

    :goto_5e
    if-eqz v4, :cond_71

    .line 2198
    iget-boolean v5, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v5, :cond_71

    .line 2200
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Insets;->left:I

    iget v8, v4, Landroid/graphics/Insets;->top:I

    iget v9, v4, Landroid/graphics/Insets;->right:I

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2203
    :cond_71
    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_87

    .line 2204
    invoke-direct {v0, v1, v5}, Lmiuix/appcompat/app/AlertController;->getGuaranteedCutout(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 2205
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v11, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2208
    :cond_87
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Lmiuix/appcompat/app/DialogContract;->mergeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2209
    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v4, :cond_d1

    .line 2210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateParentPanelMargin systemBarInsets: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AlertController"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateParentPanelMargin mDisplayCutoutSafeInsets: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateParentPanelMargin boundInsets = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_d1
    new-instance v4, Landroid/graphics/Point;

    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v8, v7}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v10, :cond_e6

    .line 2217
    iget v7, v4, Landroid/graphics/Point;->x:I

    if-eq v10, v7, :cond_e6

    .line 2219
    iput v10, v4, Landroid/graphics/Point;->x:I

    .line 2220
    iput v6, v4, Landroid/graphics/Point;->y:I

    .line 2222
    :cond_e6
    iget-object v6, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2225
    new-instance v7, Lmiuix/appcompat/app/DialogContract$OrientationSpec;

    invoke-direct {v7}, Lmiuix/appcompat/app/DialogContract$OrientationSpec;-><init>()V

    .line 2226
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v8

    .line 2227
    iget-boolean v12, v0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    iget-boolean v13, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v14

    iget-boolean v15, v0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    iget-boolean v9, v0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    move-object v11, v7

    move/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->updateData(ZZIZZ)V

    .line 2228
    iget-object v9, v7, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mWindowSize:Landroid/graphics/Point;

    iget v11, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v11, v8}, Landroid/graphics/Point;->set(II)V

    .line 2229
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v9, v7, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mRealScreenSize:Landroid/graphics/Point;

    invoke-static {v8, v9}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 2231
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    .line 2232
    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v11, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v11

    iget v11, v3, Landroid/graphics/Rect;->right:I

    sub-int v13, v9, v11

    .line 2233
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v9

    int-to-float v9, v13

    .line 2234
    invoke-static {v8, v9}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v12

    int-to-float v4, v4

    .line 2235
    invoke-static {v8, v4}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v4

    .line 2236
    iget-object v8, v7, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mUsableWindowSizeDp:Landroid/graphics/Point;

    invoke-virtual {v8, v12, v4}, Landroid/graphics/Point;->set(II)V

    .line 2238
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-virtual {v4, v7}, Lmiuix/appcompat/app/DialogDisplayStrategy;->isLandscapeWindow(Lmiuix/appcompat/app/DialogContract$OrientationSpec;)Z

    move-result v16

    .line 2240
    new-instance v4, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;

    invoke-direct {v4}, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;-><init>()V

    .line 2241
    iget-boolean v7, v0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    const/16 v22, 0x1

    if-eqz v7, :cond_165

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v7

    if-eqz v7, :cond_165

    move/from16 v15, v22

    goto :goto_166

    :cond_165
    move v15, v5

    :goto_166
    iget-boolean v7, v0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    iget-boolean v8, v0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    iget v9, v0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    iget-boolean v11, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    move-object v14, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v12

    move/from16 v20, v9

    move/from16 v21, v11

    invoke-virtual/range {v14 .. v21}, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->updateData(ZZZZIIZ)V

    .line 2245
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-virtual {v7, v4, v8}, Lmiuix/appcompat/app/DialogDisplayStrategy;->getPanelWidth(Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;)I

    move-result v4

    .line 2248
    new-instance v15, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;

    invoke-direct {v15}, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;-><init>()V

    .line 2249
    iget-object v7, v15, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mBoundInsets:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v11, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2250
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v8

    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v14, v7, Landroid/graphics/Point;->x:I

    iget-boolean v11, v0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    iget-boolean v7, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    move/from16 v16, v7

    move-object v7, v15

    move/from16 v17, v11

    move v11, v4

    move-object v5, v15

    move/from16 v15, v17

    invoke-virtual/range {v7 .. v16}, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->updateData(IIIIIIIZZ)V

    .line 2253
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2255
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-virtual {v8, v5, v9, v7}, Lmiuix/appcompat/app/DialogDisplayStrategy;->updatePanelPosMargins(Lmiuix/appcompat/app/DialogContract$PanelPosSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;Landroid/graphics/Rect;)I

    move-result v5

    .line 2257
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2258
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2260
    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1de

    iget-boolean v9, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v9, :cond_1de

    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 2261
    invoke-static {v9}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1de

    move/from16 v9, v22

    goto :goto_1df

    :cond_1de
    const/4 v9, 0x0

    .line 2262
    :goto_1df
    iget-boolean v10, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v10, :cond_1e5

    if-eqz v9, :cond_20a

    :cond_1e5
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-nez v2, :cond_20a

    .line 2263
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 2265
    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v9, v9, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    if-eqz v2, :cond_1fa

    .line 2266
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_1fb

    :cond_1fa
    const/4 v2, 0x0

    :goto_1fb
    if-nez v2, :cond_1ff

    add-int/2addr v9, v8

    goto :goto_201

    :cond_1ff
    add-int v9, v8, v2

    .line 2271
    :goto_201
    invoke-direct/range {p0 .. p1}, Lmiuix/appcompat/app/AlertController;->getImeBottomByWindowInsets(Landroid/view/WindowInsets;)I

    move-result v1

    if-lez v1, :cond_208

    goto :goto_21c

    :cond_208
    move v8, v9

    goto :goto_21c

    .line 2273
    :cond_20a
    iget-boolean v1, v0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v1, :cond_215

    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_215

    goto :goto_21b

    :cond_215
    if-eqz v1, :cond_219

    const/4 v2, 0x0

    goto :goto_21b

    .line 2274
    :cond_219
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    :goto_21b
    add-int/2addr v8, v2

    .line 2277
    :goto_21c
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_227

    .line 2278
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v22

    goto :goto_229

    :cond_227
    const/16 v18, 0x0

    .line 2281
    :goto_229
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v8, :cond_231

    .line 2282
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v22

    .line 2285
    :cond_231
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_23b

    .line 2286
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v22

    .line 2289
    :cond_23b
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, v7, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_245

    .line 2290
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v22

    :cond_245
    if-eq v4, v5, :cond_249

    move/from16 v18, v22

    .line 2297
    :cond_249
    invoke-direct {v0, v3}, Lmiuix/appcompat/app/AlertController;->getPanelMaxLimitHeight(Landroid/graphics/Rect;)I

    move-result v1

    .line 2298
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->getPanelMaxLimitHeight()I

    move-result v2

    if-eq v1, v2, :cond_25b

    .line 2299
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setPanelMaxLimitHeight(I)V

    goto :goto_25d

    :cond_25b
    move/from16 v22, v18

    :goto_25d
    if-eqz v22, :cond_264

    .line 2303
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_264
    :goto_264
    return-void
.end method

.method private updateRootViewSize(Landroid/content/res/Configuration;)V
    .registers 6

    .line 2704
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v0, :cond_b

    .line 2705
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    goto :goto_11

    .line 2706
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 2707
    :goto_11
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v2, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 2708
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 2709
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2710
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 2711
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_6b

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRootViewSize mRootViewSizeDp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRootViewSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6b

    .line 2715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration.density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    return-void
.end method

.method private updateRootViewSize(Landroid/view/View;)V
    .registers 5

    .line 2721
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2722
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 2723
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 2724
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 2725
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2726
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_5c

    .line 2727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRootViewSize by view mRootViewSizeDp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRootViewSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " configuration.density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlertController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return-void
.end method

.method private updateViewOnDensityChanged(F)V
    .registers 4

    .line 993
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v0, :cond_7

    .line 994
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 996
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 997
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 999
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 1000
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 1002
    :cond_19
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 1003
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 1004
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 1006
    :cond_27
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    .line 1007
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeDefaultUnit(Landroid/widget/TextView;F)V

    .line 1010
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1012
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 1014
    :cond_41
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_50

    .line 1016
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 1019
    :cond_50
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 1021
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 1023
    :cond_5d
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_6d

    .line 1025
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 1027
    :cond_6d
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_80

    .line 1029
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewSize(Landroid/view/View;F)V

    .line 1030
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    :cond_80
    return-void
.end method

.method private updateWindowCutoutMode()V
    .registers 4

    .line 2851
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    .line 2852
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_a0

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    if-eq v1, v0, :cond_a0

    .line 2853
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 2854
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 2856
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    move-result v0

    .line 2857
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v0, :cond_a0

    .line 2858
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2859
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2860
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2861
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a0

    .line 2866
    :cond_60
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_68

    goto :goto_69

    :cond_68
    const/4 v1, 0x1

    .line 2871
    :goto_69
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v1, :cond_a0

    .line 2872
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2873
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2874
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2875
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a0
    :goto_a0
    return-void
.end method


# virtual methods
.method public dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .registers 6

    .line 3003
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    .line 3004
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->cleanWindowInsetsAnimation()V

    .line 3006
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_13

    if-eqz p1, :cond_12

    .line 3009
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    :cond_12
    return-void

    .line 3013
    :cond_13
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3014
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkAndClearFocus()V

    .line 3015
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3017
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 3018
    iget v1, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {v1}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result v1

    if-nez v1, :cond_38

    iget v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {v0}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3019
    :cond_38
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    goto :goto_3f

    .line 3022
    :cond_3c
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    .line 3024
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;ZLandroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_62

    .line 3026
    :cond_4d
    const-string p1, "dialog is not attached to window when dismiss is invoked"

    const-string v0, "AlertController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :try_start_54
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_5b} :catch_5c

    goto :goto_62

    :catch_5c
    move-exception p1

    .line 3031
    const-string v1, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_62
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 829
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 5

    const/4 v0, -0x3

    if-eq p1, v0, :cond_38

    const/4 v0, -0x2

    if-eq p1, v0, :cond_35

    const/4 v0, -0x1

    if-eq p1, v0, :cond_32

    .line 807
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 808
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 809
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mWhich:I
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1300(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 810
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object p1

    return-object p1

    :cond_30
    const/4 p1, 0x0

    return-object p1

    .line 801
    :cond_32
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    .line 803
    :cond_35
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    .line 805
    :cond_38
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p1
.end method

.method public getIconAttributeResId(I)I
    .registers 5

    .line 789
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 790
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 791
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 795
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 651
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSingleItemMinHeight()I
    .registers 3

    .line 1154
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method hasPendingDismiss()Z
    .registers 2

    .line 3077
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return v0
.end method

.method public installContent(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 539
    :goto_6
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    .line 540
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 541
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getFlipCutout()V

    .line 542
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 544
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_root_view:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/widget/DialogRootView;

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 545
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_dim_bg:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 546
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v1, Lmiuix/appcompat/app/AlertController$4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertController$4;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/widget/DialogRootView;->setConfigurationChangedCallback(Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;)V

    .line 552
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v1, 0x0

    .line 553
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 554
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindow()V

    .line 555
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupView()V

    .line 557
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    .line 559
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    .line 560
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v0, Lmiuix/appcompat/app/AlertController$5;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertController$5;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isAsyncInflatePanelEnabled()Z
    .registers 2

    .line 2102
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mAsyncInflatePanelEnabled:Z

    return v0
.end method

.method isDialogImmersive()Z
    .registers 3

    .line 1895
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    if-eqz v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isShowingAnimation()Z
    .registers 8

    .line 3066
    iget-wide v0, p0, Lmiuix/appcompat/app/AlertController;->mShowUpTimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 3067
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1b

    iget-wide v5, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogShowAnimDuration:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_1b

    move v0, v4

    goto :goto_1c

    :cond_1b
    move v0, v3

    .line 3069
    :goto_1c
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-nez v1, :cond_26

    if-eqz v0, :cond_27

    :cond_26
    move v3, v4

    :cond_27
    return v3
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 2982
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 2983
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 2984
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V

    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V
    .registers 10

    .line 2764
    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    .line 2765
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 2766
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDimensConfig(Landroid/content/res/Resources;)V

    .line 2767
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getFlipCutout()V

    .line 2768
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDisplayInfo(Landroid/content/Context;)V

    .line 2769
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3b

    .line 2771
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 2773
    :cond_3b
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const-string v4, "AlertController"

    if-eqz v0, :cond_5f

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChangednewDensityDpi "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " densityScale "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_5f
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    if-eqz v0, :cond_70

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_70

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez p1, :cond_70

    if-nez p2, :cond_70

    return-void

    .line 2782
    :cond_70
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    const/4 p1, -0x1

    .line 2783
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    const/4 p1, 0x0

    .line 2784
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 2785
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_93

    .line 2786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged mRootViewSize "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_93
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkThread()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 2789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dialog is created in thread:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but onConfigurationChanged is called from different thread:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2790
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", so this onConfigurationChanged call should be ignore"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2789
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2795
    :cond_c1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 2796
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2799
    :cond_d2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_126

    if-eqz v3, :cond_100

    .line 2801
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidth:I

    .line 2802
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width_land:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidthLand:I

    .line 2804
    :cond_100
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 2805
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 2806
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    goto :goto_110

    .line 2808
    :cond_10d
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    .line 2810
    :goto_110
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsInTinyScreen(Z)V

    .line 2811
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsDebugEnabled(Z)V

    .line 2812
    invoke-direct {p0, v1, p2, p3, v2}, Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V

    .line 2815
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    .line 2817
    :cond_126
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result p2

    if-eqz p2, :cond_15b

    .line 2818
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateLayout(Landroid/view/View;)V

    .line 2819
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2820
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    if-eqz p2, :cond_151

    .line 2823
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    .line 2825
    :cond_151
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance p3, Lmiuix/appcompat/app/AlertController$9;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/AlertController$9;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 2837
    :cond_15b
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getPanelMaxLimitHeight(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setPanelMaxLimitHeight(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 5

    const/4 v0, 0x0

    .line 2989
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 2990
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    aput-object v1, v3, v0

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 2991
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 2996
    :cond_19
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isAsyncInflatePanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2997
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->safeRemovePanelFromParent()V

    :cond_28
    return-void
.end method

.method public onStart()V
    .registers 9

    .line 2939
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2940
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 2942
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 2944
    :cond_e
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 2945
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    .line 2946
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    if-eqz v0, :cond_39

    .line 2947
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mDiscardImeAnimEnabled:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/DialogAnimHelper;->setDiscardImeAnimEnabled(Z)V

    .line 2948
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v5

    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsWindowLandScape:Z

    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    goto :goto_53

    .line 2950
    :cond_39
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2951
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    if-eqz v0, :cond_53

    .line 2952
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4e

    sget v1, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_50

    :cond_4e
    sget v1, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    :goto_50
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2955
    :cond_53
    :goto_53
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateLayout(Landroid/view/View;)V

    .line 2956
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_69
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 2961
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2962
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_11
    return-void
.end method

.method protected safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    .line 1648
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-ne v0, p2, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_e

    .line 1653
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1655
    :cond_e
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected safeRemoveFromParent(Landroid/view/View;)V
    .registers 3

    .line 1641
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 1643
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public safeRemovePanelFromParent()V
    .registers 3

    .line 2088
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_5

    return-void

    .line 2091
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isAsyncInflatePanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2093
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2095
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 2097
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method setAsyncInflatePanelEnable(Z)V
    .registers 2

    .line 613
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mAsyncInflatePanelEnabled:Z

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 5

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 706
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    if-eqz p4, :cond_17

    .line 710
    invoke-virtual {p4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p3

    if-nez p3, :cond_17

    .line 711
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    :cond_17
    const/4 p3, -0x3

    if-eq p1, p3, :cond_32

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2d

    const/4 p3, -0x1

    if-ne p1, p3, :cond_25

    .line 716
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 717
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_36

    .line 731
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 721
    :cond_2d
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 722
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_36

    .line 726
    :cond_32
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 727
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_36
    return-void
.end method

.method setButtonForceVertical(Z)V
    .registers 2

    .line 606
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    .line 833
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 837
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .registers 3

    .line 1816
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    .line 1817
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setComment(Ljava/lang/CharSequence;)V
    .registers 3

    .line 644
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    .line 645
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 646
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setConfigurationChangedListener(Lmiuix/appcompat/app/AlertDialog$OnConfigurationChangedListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    .line 633
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method setDiscardImeAnimEnabled(Z)V
    .registers 2

    .line 617
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mDiscardImeAnimEnabled:Z

    return-void
.end method

.method setEnableEnterAnim(Z)V
    .registers 2

    .line 626
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    return-void
.end method

.method setEnableImmersive(Z)V
    .registers 2

    .line 1869
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    const/4 v0, 0x0

    .line 757
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 758
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 767
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 768
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIconSize(II)V
    .registers 3

    .line 779
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    .line 780
    iput p2, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    return-void
.end method

.method setLiteVersion(I)V
    .registers 2

    .line 1891
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mLiteVersion:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 637
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 638
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 639
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method setNonImmersiveDialogHeight(I)V
    .registers 2

    .line 3576
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    return-void
.end method

.method public setPanelSizeChangedListener(Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method setPendingDismiss(Z)V
    .registers 2

    .line 3073
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return-void
.end method

.method setPreferLandscape(Z)V
    .registers 2

    .line 590
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    return-void
.end method

.method setPrimaryButtonFirstEnabled(Z)V
    .registers 2

    .line 610
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mPrimaryButtonFirstEnabled:Z

    return-void
.end method

.method public setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 2

    .line 2923
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 578
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 579
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 580
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method setUseForceFlipCutout(Z)V
    .registers 2

    .line 598
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mUseForceFlipCutout:Z

    return-void
.end method

.method public setUseSmallIcon(Z)V
    .registers 2

    .line 775
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    return-void
.end method

.method public setView(I)V
    .registers 3

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 659
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 666
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 667
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method
