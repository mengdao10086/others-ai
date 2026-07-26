.class public abstract Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
.source "TabletFloatingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;,
        Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;
    }
.end annotation


# instance fields
.field protected mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field private mAnimationDoing:Z

.field private mBg:Landroid/view/View;

.field private mBgAlpha:F

.field private final mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

.field private mEnableSwipeToDismiss:Z

.field private mFloatingActivityFinishingFlag:I

.field private final mFloatingActivitySlidDownHandler:Landroid/os/Handler;

.field private mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private mFloatingRadius:F

.field private mFloatingRoot:Landroid/view/View;

.field private mHandle:Landroid/view/View;

.field private mIsBorderEnable:Z

.field private mIsFloatingWindow:Z

.field private mLastMoveY:F

.field private mMoveMaxY:F

.field private mOffsetY:F

.field private mOnFloatingActivityCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;

.field private mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

.field private mPanel:Landroid/view/View;

.field private mPanelParent:Landroid/view/View;

.field private mRootViewGestureDetector:Landroid/view/GestureDetector;

.field private mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

.field private mTouchDownY:F


# direct methods
.method public static synthetic $r8$lambda$9wkD6z_0IxelY0HtxmJScFU2jlU(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$executeFolme$4(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$EdvhpUJr07tg_rhuIpHbqAnBumU(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;F)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$panelDelayShow$0(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$JYtOsJ7z4UcukuyFUCp9FwjHYf0(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$init$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$rSoDysjnwQy_jjaTeX0Y32WWV80(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$firstFloatingTranslationTop$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$toTIPxeFXBDLo75Ti5rbf6PWt2A(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$init$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u5SqSzwkJ3OEllOrcmlVzBna6lc(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->lambda$init$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBgAlpha:F

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipeToDismiss:Z

    .line 80
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivitySlidDownHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 81
    iput-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    .line 82
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 83
    iput-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsBorderEnable:Z

    .line 86
    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivityFinishingFlag:I

    .line 89
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const v0, 0x1010054

    .line 90
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipeToDismiss:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    return p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z
    .registers 1

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFirstPageExitAnimExecuteEnable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->singleFloatingSlipExit(ZI)V

    return-void
.end method

.method static synthetic access$1200(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    return p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->onEnd(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    return-void
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    return-void
.end method

.method static synthetic access$500(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->triggerFinishCallback(ZI)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;
    .registers 1

    .line 46
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    return-void
.end method

.method private backOneByOne(I)V
    .registers 3

    .line 546
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    .line 547
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFirstPageExitAnimExecuteEnable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 549
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 550
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->singleAppFloatingActivityExit(Lmiuix/appcompat/app/AppCompatActivity;)V

    goto :goto_1b

    .line 553
    :cond_14
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    if-nez v0, :cond_1b

    .line 554
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->triggerBottomExit(I)V

    .line 558
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->execExitAnim()V

    return-void
.end method

.method private delegateFinishTransWithClipAnimInternal()Z
    .registers 3

    .line 613
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x1

    # invokes: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->delegatePadPhoneFinishFloatingActivity(Z)V
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->access$800(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;Z)V

    return v1
.end method

.method private dimBg(F)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 472
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 473
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    iget v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBgAlpha:F

    sub-float/2addr v0, p1

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private executeFolme(ZI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 279
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_1b

    .line 281
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 288
    :cond_1b
    iget-boolean v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    if-eqz v2, :cond_22

    if-eqz p1, :cond_22

    return-void

    .line 291
    :cond_22
    iput-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    if-eqz p1, :cond_2d

    .line 293
    iget v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    float-to-int v2, v2

    .line 295
    const-string v3, "dismiss"

    const/4 v4, 0x0

    goto :goto_32

    .line 299
    :cond_2d
    iget v4, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBgAlpha:F

    const-string v3, "init"

    move v2, v0

    :goto_32
    if-eqz p1, :cond_36

    const/4 v5, 0x2

    goto :goto_37

    :cond_36
    move v5, v1

    :goto_37
    const/4 v6, 0x0

    .line 301
    invoke-static {v5, v6}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    .line 305
    new-instance v12, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, p0

    move v7, p1

    move v8, v2

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZIILmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;)V

    new-array p1, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v12, p1, v0

    invoke-virtual {v11, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 306
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v1, v2

    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 307
    new-instance p2, Lmiuix/animation/controller/AnimState;

    invoke-direct {p2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v2, v4

    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 308
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    move-result-object v1

    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    filled-new-array {v11}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 309
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, v0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private firstFloatingTranslationTop()V
    .registers 3

    .line 423
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda5;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private folmeShow()V
    .registers 6

    .line 481
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 484
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v1, 0x0

    .line 486
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 487
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    invoke-static {v0}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    return-void
.end method

.method private getAnimPanel()Landroid/view/View;
    .registers 2

    .line 329
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanelParent:Landroid/view/View;

    if-nez v0, :cond_6

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    :cond_6
    return-object v0
.end method

.method private getSnapShotAndSetPanel()V
    .registers 3

    .line 380
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 383
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz v0, :cond_14

    iget-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipeToDismiss:Z

    if-eqz v1, :cond_14

    .line 384
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-interface {v0, v1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_14
    return-void
.end method

.method private handleFingerMove(Landroid/view/MotionEvent;)V
    .registers 5

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    goto :goto_71

    .line 398
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 399
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    iget v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    sub-float v2, p1, v2

    add-float/2addr v0, v2

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2a

    .line 401
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->movePanel(F)V

    .line 402
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->dimBg(F)V

    .line 404
    :cond_2a
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    goto :goto_71

    .line 407
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mTouchDownY:F

    sub-float/2addr p1, v0

    .line 408
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_45

    move p1, v2

    goto :goto_46

    :cond_45
    move p1, v0

    .line 409
    :goto_46
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    if-eqz p1, :cond_5d

    .line 413
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 414
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz p1, :cond_58

    invoke-interface {p1, v2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    move-result p1

    if-nez p1, :cond_59

    :cond_58
    move v0, v2

    :cond_59
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    goto :goto_71

    .line 416
    :cond_5d
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    goto :goto_71

    .line 391
    :cond_61
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyDragStart()V

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mTouchDownY:F

    .line 393
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    .line 394
    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    .line 395
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    :goto_71
    return-void
.end method

.method private isEnableFirstFloatingTranslationY()Z
    .registers 2

    .line 435
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFirstPageEnterAnimExecuteEnable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isFirstPageEnterAnimExecuteEnable()Z
    .registers 2

    .line 445
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->isFirstPageEnterAnimExecuteEnable()Z

    move-result v0

    :goto_a
    return v0
.end method

.method private isFirstPageExitAnimExecuteEnable()Z
    .registers 2

    .line 449
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-nez v0, :cond_9

    goto :goto_f

    :cond_9
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->isFirstPageExitAnimExecuteEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_f
    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private synthetic lambda$executeFolme$4(ZI)V
    .registers 3

    .line 281
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    return-void
.end method

.method private synthetic lambda$firstFloatingTranslationTop$5()V
    .registers 2

    .line 424
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isEnableFirstFloatingTranslationY()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 428
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->markActivityOpenEnterAnimExecuted()V

    .line 429
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->folmeShow()V

    :cond_c
    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 235
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRootViewGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$init$2()V
    .registers 3

    .line 234
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda4;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic lambda$init$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 240
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipeToDismiss:Z

    if-eqz p1, :cond_7

    .line 241
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->handleFingerMove(Landroid/view/MotionEvent;)V

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$panelDelayShow$0(F)V
    .registers 3

    .line 202
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private makeDownMoveMaxY()V
    .registers 4

    .line 589
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v0, v1

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    return-void
.end method

.method private markActivityOpenEnterAnimExecuted()V
    .registers 3

    .line 439
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz v0, :cond_9

    .line 440
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-interface {v0, v1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->markActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_9
    return-void
.end method

.method private movePanel(F)V
    .registers 3

    .line 468
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private notifyDragEnd()V
    .registers 3

    .line 333
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$3;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$3;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 341
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 342
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 344
    :cond_d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_10
    return-void
.end method

.method private notifyDragStart()V
    .registers 2

    .line 462
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz v0, :cond_7

    .line 463
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onDragStart()V

    :cond_7
    return-void
.end method

.method private notifyPageHide()V
    .registers 2

    .line 260
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz v0, :cond_7

    .line 261
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onHideBehindPage()V

    :cond_7
    return-void
.end method

.method private onEnd(Ljava/lang/Object;)V
    .registers 4

    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dismiss"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 350
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    if-eqz p1, :cond_19

    .line 351
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$4;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$4;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e

    .line 358
    :cond_19
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    goto :goto_2e

    .line 360
    :cond_1f
    const-string v0, "init"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 361
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyDragEnd()V

    :cond_2e
    :goto_2e
    const/4 p1, 0x0

    .line 363
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    return-void
.end method

.method private panelDelayShow()V
    .registers 6

    .line 197
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-nez v0, :cond_5

    return-void

    .line 200
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    .line 201
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 202
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    new-instance v2, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda3;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;F)V

    const-wide/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setPanelParent(Landroid/view/View;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanelParent:Landroid/view/View;

    return-void
.end method

.method private setRoundFrameLayoutBorder(Lmiuix/internal/widget/RoundFrameLayout;)V
    .registers 6

    .line 129
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsBorderEnable:Z

    if-eqz v0, :cond_22

    .line 130
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_border_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 131
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v3, Lmiuix/appcompat/R$attr;->miuixAppcompatFloatingWindowBorderColor:I

    invoke-static {v2, v3, v1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    .line 132
    invoke-virtual {p1, v0, v1}, Lmiuix/internal/widget/RoundFrameLayout;->setBorder(FI)V

    goto :goto_26

    :cond_22
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Lmiuix/internal/widget/RoundFrameLayout;->setBorder(FI)V

    :goto_26
    return-void
.end method

.method private singleFloatingSlipExit(ZI)V
    .registers 3

    if-eqz p1, :cond_10

    .line 454
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    if-nez p1, :cond_10

    .line 455
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 456
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    const/4 p1, 0x1

    .line 457
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    :cond_10
    return-void
.end method

.method private triggerBottomExit(I)V
    .registers 3

    .line 583
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 584
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    const/4 v0, 0x1

    .line 585
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    return-void
.end method

.method private triggerFinishCallback(ZI)V
    .registers 4

    .line 266
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 268
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingActivityCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;

    if-eqz p1, :cond_14

    invoke-interface {p1, p2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 269
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    goto :goto_26

    .line 271
    :cond_14
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz p1, :cond_1e

    invoke-interface {p1, p2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    move-result p1

    if-nez p1, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    goto :goto_26

    .line 274
    :cond_23
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    :goto_26
    return-void
.end method

.method private updateFloatingActivityFinishingFlag(I)V
    .registers 2

    .line 376
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivityFinishingFlag:I

    return-void
.end method


# virtual methods
.method public delegateFinishFloatingActivityInternal()Z
    .registers 5

    .line 595
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 596
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->delegateFinishTransWithClipAnimInternal()Z

    move-result v0

    return v0

    .line 599
    :cond_b
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_21

    .line 600
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 601
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivitySlidDownHandler:Landroid/os/Handler;

    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Lmiuix/appcompat/app/AppCompatActivity;)V

    const-wide/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_29

    .line 603
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 604
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->execExitAnim()V

    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method public execExitAnim()V
    .registers 1

    .line 0
    return-void
.end method

.method public executeCloseEnterAnimation()V
    .registers 2

    .line 656
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_9

    .line 657
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeCloseEnterAnimation(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public executeOpenEnterAnimation()V
    .registers 2

    .line 642
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_9

    .line 643
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeOpenEnterAnimation(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public executeOpenExitAnimation()V
    .registers 2

    .line 649
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_9

    .line 650
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeOpenExitAnimation(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public finishAllPage()V
    .registers 3

    .line 313
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$2;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$2;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 321
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 322
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 324
    :cond_d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_10
    return-void
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .registers 2

    .line 517
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    return-object v0
.end method

.method public getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 619
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public hideFloatingBrightPanel()V
    .registers 3

    .line 497
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideFloatingDimBackground()V
    .registers 3

    .line 492
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/View;Z)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 212
    sget v0, Lmiuix/appcompat/R$id;->sliding_drawer_handle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 213
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    move v3, v1

    .line 214
    :goto_18
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x1010590

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 217
    sget v0, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    goto :goto_2e

    :cond_2c
    sget v0, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    :goto_2e
    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBgAlpha:F

    .line 218
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 219
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 220
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_floating_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    .line 221
    iput-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 222
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRootViewGestureDetector:Landroid/view/GestureDetector;

    .line 234
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    new-instance p2, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, p2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    new-instance p2, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$$ExternalSyntheticLambda2;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->firstFloatingTranslationTop()V

    .line 246
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 247
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-nez p1, :cond_94

    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 248
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9b

    .line 250
    :cond_94
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :goto_9b
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipeToDismiss:Z

    if-eqz p1, :cond_a9

    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz p1, :cond_a9

    .line 253
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ae

    .line 255
    :cond_a9
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_ae
    return-void
.end method

.method protected isFloatingWindow()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 528
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v0

    if-nez v0, :cond_d

    .line 529
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    :cond_d
    const/4 v0, 0x4

    .line 531
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->backOneByOne(I)V

    return-void
.end method

.method public replaceSubDecor(Landroid/view/View;Z)Landroid/view/ViewGroup;
    .registers 9

    .line 148
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_floating_window:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 149
    sget v1, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 151
    sget v2, Lmiuix/appcompat/R$id;->sliding_drawer_handle:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2a

    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    :cond_2a
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_34

    .line 157
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    :cond_34
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 161
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v5, 0x11

    invoke-direct {v3, v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v3, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    if-nez p2, :cond_4d

    const/4 v2, -0x1

    .line 167
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_52

    :cond_4d
    const/4 v2, -0x2

    .line 170
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    :goto_52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 175
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_62

    .line 176
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    :cond_62
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    .line 179
    new-instance v1, Lmiuix/internal/widget/RoundFrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 180
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    if-eqz p2, :cond_8b

    iget p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    goto :goto_8c

    :cond_8b
    const/4 p2, 0x0

    :goto_8c
    invoke-virtual {p1, p2}, Lmiuix/internal/widget/RoundFrameLayout;->setRadius(F)V

    .line 183
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->setRoundFrameLayoutBorder(Lmiuix/internal/widget/RoundFrameLayout;)V

    .line 186
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->panelDelayShow()V

    .line 187
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->setPanelParent(Landroid/view/View;)V

    return-object v0
.end method

.method public setEnableSwipToDismiss(Z)V
    .registers 3

    .line 507
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipeToDismiss:Z

    if-eqz p1, :cond_f

    .line 508
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz p1, :cond_f

    .line 509
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 511
    :cond_f
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    return-void
.end method

.method public setFloatingWindowMode(Z)V
    .registers 6

    .line 95
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 97
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/IntentUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 102
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/view/CompatViewMethod;->setActivityTranslucent(Landroid/app/Activity;Z)V

    .line 104
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->isFirstPage()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 105
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    if-eqz p1, :cond_29

    move v3, v2

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_2d
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    if-eqz v0, :cond_4e

    .line 108
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_radius:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    .line 109
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    invoke-virtual {v3, v0}, Lmiuix/internal/widget/RoundFrameLayout;->setRadius(F)V

    .line 110
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->setRoundFrameLayoutBorder(Lmiuix/internal/widget/RoundFrameLayout;)V

    .line 112
    :cond_4e
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    if-eqz v0, :cond_70

    if-nez p1, :cond_69

    .line 113
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 114
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_70

    .line 116
    :cond_69
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_70
    :goto_70
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    if-eqz p1, :cond_83

    .line 120
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipeToDismiss:Z

    if-eqz v0, :cond_80

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_80

    .line 121
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_83

    .line 123
    :cond_80
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_83
    :goto_83
    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .registers 2

    .line 629
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    return-void
.end method

.method public shouldInterceptBack()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public showFloatingBrightPanel()V
    .registers 3

    .line 502
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
