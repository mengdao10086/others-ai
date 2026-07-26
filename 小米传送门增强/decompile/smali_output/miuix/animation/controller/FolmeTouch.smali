.class public Lmiuix/animation/controller/FolmeTouch;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeTouch.java"

# interfaces
.implements Lmiuix/animation/ITouchStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;,
        Lmiuix/animation/controller/FolmeTouch$ListViewInfo;,
        Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;,
        Lmiuix/animation/controller/FolmeTouch$LongClickTask;
    }
.end annotation


# static fields
.field private static final ALIAS_TOUCH_DOWN:Ljava/lang/String; = "touchDown"

.field private static final ALIAS_TOUCH_UP:Ljava/lang/String; = "touchUp"

.field private static final DEFAULT_SCALE:F = 0.9f

.field private static final SCALE_DIS:I = 0xa

.field private static sTouchRecord:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClearTint:Z

.field private mClickInvoked:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefListener:Lmiuix/animation/listener/TransitionListener;

.field private mDownConfig:Lmiuix/animation/base/AnimConfig;

.field private mDownWeight:I

.field private mDownX:F

.field private mDownY:F

.field private mFontStyle:Lmiuix/animation/controller/FolmeFont;

.field private mGlobalBoundInWindow:Landroid/graphics/Rect;

.field private mIsDown:Z

.field private mIsNoScale:Z

.field private mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationInScreen:[I

.field private mLongClickInvoked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

.field private mRootGlobalBoundInWindow:Landroid/graphics/Rect;

.field private mScaleDist:F

.field private mScaleSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/ITouchStyle$TouchType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTint:Z

.field private mTouchIndex:I

.field private mTouchView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUpConfig:Lmiuix/animation/base/AnimConfig;

.field private mUpWeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    return-void
.end method

.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 7

    .line 91
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mRootGlobalBoundInWindow:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLocationInScreen:[I

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 73
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 74
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 78
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsNoScale:Z

    .line 80
    new-instance v1, Lmiuix/animation/controller/FolmeTouch$1;

    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeTouch$1;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 92
    array-length v1, p1

    if-lez v1, :cond_3d

    aget-object p1, p1, v0

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->initScaleDist(Lmiuix/animation/IAnimTarget;)V

    .line 94
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 95
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 96
    new-instance v2, Lmiuix/animation/controller/AnimState;

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    const-string v4, "touchUp"

    invoke-direct {v2, v3, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 97
    invoke-virtual {v2, p1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 98
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 99
    new-instance p1, Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    const-string v2, "touchDown"

    invoke-direct {p1, v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 102
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 104
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3f7d70a4    # 0.99f

    invoke-static {v2, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 105
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 107
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v2, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3e4ccccd    # 0.2f

    .line 109
    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    new-array v0, v0, [F

    .line 108
    invoke-virtual {p1, v1, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method static synthetic access$000(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->resetViewTouch(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/animation/controller/FolmeTouch;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeLongClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$900(Lmiuix/animation/controller/FolmeTouch;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private varargs bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .registers 8

    .line 320
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v2, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_36

    .line 321
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolmeTouch.handleListViewTouch for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_2f
    iget-object v0, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    const/4 p1, 0x1

    return p1

    :cond_36
    return v1
.end method

.method private varargs doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V
    .registers 12

    .line 259
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 260
    invoke-direct {p0, p1, p5}, Lmiuix/animation/controller/FolmeTouch;->handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 262
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 263
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FolmeTouch.doHandleTouchOf for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v5

    const/4 p2, 0x1

    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 268
    new-instance p2, Lmiuix/animation/controller/FolmeTouch$3;

    move-object v0, p2

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch$3;-><init>(Lmiuix/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiuix/animation/base/AnimConfig;Z)V

    .line 276
    invoke-static {p1, p2}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3e
    return-void
.end method

.method private varargs getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 761
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    return-object p1
.end method

.method private getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;
    .registers 6

    .line 336
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_20

    .line 341
    instance-of v3, v2, Landroid/widget/AbsListView;

    if-eqz v3, :cond_14

    .line 342
    move-object v1, v2

    check-cast v1, Landroid/widget/AbsListView;

    goto :goto_20

    .line 345
    :cond_14
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1b

    .line 346
    move-object p1, v2

    check-cast p1, Landroid/view/View;

    .line 348
    :cond_1b
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_a

    :cond_20
    :goto_20
    if-eqz v1, :cond_2f

    .line 351
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 352
    iput-object v1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 353
    iput-object p1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->itemView:Landroid/view/View;

    :cond_2f
    return-object v0
.end method

.method public static getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;
    .registers 2

    .line 359
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/ListViewTouchListener;

    return-object p0
.end method

.method private varargs getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;
    .registers 3

    .line 642
    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_9

    :cond_7
    sget-object p1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    :goto_9
    return-object p1
.end method

.method private varargs getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 765
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    return-object p1
.end method

.method private handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5

    .line 555
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2e

    iget v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v0, v1, :cond_2e

    .line 556
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 557
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    if-eqz v1, :cond_2e

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 558
    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 561
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    :cond_2e
    return-void
.end method

.method private varargs handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .registers 7

    .line 365
    invoke-static {p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;

    move-result-object v0

    if-nez v0, :cond_10

    .line 367
    new-instance v0, Lmiuix/animation/controller/ListViewTouchListener;

    invoke-direct {v0, p1}, Lmiuix/animation/controller/ListViewTouchListener;-><init>(Landroid/widget/AbsListView;)V

    .line 368
    sget v1, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    :cond_10
    if-eqz p3, :cond_15

    .line 371
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    :cond_15
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;

    invoke-direct {p1, p0, p4}, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v0, p2, p1}, Lmiuix/animation/controller/ListViewTouchListener;->putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 6

    .line 581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_14

    .line 587
    :cond_d
    invoke-direct {p0, p2, p1, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_1e

    .line 590
    :cond_11
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 592
    :goto_14
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_1e

    .line 583
    :cond_18
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->recordDownEvent(Landroid/view/MotionEvent;)V

    .line 584
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventDown([Lmiuix/animation/base/AnimConfig;)V

    :goto_1e
    return-void
.end method

.method private varargs handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 5

    .line 401
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    if-nez v0, :cond_15

    .line 403
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 404
    sget-object v1, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 407
    invoke-virtual {v0, p0, p2}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private initScaleDist(Lmiuix/animation/IAnimTarget;)V
    .registers 4

    .line 129
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_b

    check-cast p1, Lmiuix/animation/ViewTarget;

    invoke-virtual {p1}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-eqz p1, :cond_1f

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    .line 131
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    :cond_1f
    return-void
.end method

.method private invokeClick(Landroid/view/View;)V
    .registers 3

    .line 568
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 570
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method private invokeLongClick(Landroid/view/View;)V
    .registers 3

    .line 548
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 550
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_c
    return-void
.end method

.method private isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 575
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 576
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 577
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    iget v2, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    invoke-static {v1, v2, v0, p2}, Lmiuix/animation/utils/CommonUtils;->getDistance(FFFF)D

    move-result-wide v0

    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->getTouchSlop(Landroid/view/View;)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, v0, p1

    if-gez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method static isOnTouchView(Landroid/view/View;[ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_32

    .line 180
    invoke-virtual {p0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 183
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 184
    invoke-virtual {v1, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_19

    .line 186
    :cond_13
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 187
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    :goto_19
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-int/2addr p0, v1

    .line 190
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result p4

    float-to-int p4, p4

    aget p1, p1, v0

    sub-int/2addr p4, p1

    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, p1

    .line 191
    invoke-virtual {p2, p0, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_32
    return v0
.end method

.method private isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z
    .registers 4

    .line 638
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private varargs onEventDown([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 447
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 448
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FolmeTouch.onEventDown"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 451
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private varargs onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 7

    .line 455
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_26

    .line 456
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLocationInScreen:[I

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mGlobalBoundInWindow:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mRootGlobalBoundInWindow:Landroid/graphics/Rect;

    invoke-static {p2, v0, v1, v2, p1}, Lmiuix/animation/controller/FolmeTouch;->isOnTouchView(Landroid/view/View;[ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 457
    invoke-virtual {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 458
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    goto :goto_26

    .line 459
    :cond_17
    iget-object p3, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-eqz p3, :cond_26

    invoke-direct {p0, p2, p1}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 460
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    :cond_26
    :goto_26
    return-void
.end method

.method private varargs onEventUp([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 466
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_18

    .line 467
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 468
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FolmeTouch.onEventUp"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_12
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 471
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    :cond_18
    return-void
.end method

.method private recordDownEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 486
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_8

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_22

    .line 487
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    const/4 p1, 0x0

    .line 490
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 491
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 492
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->startLongClickTask()V

    :cond_22
    return-void
.end method

.method private resetTouchStatus()V
    .registers 2

    .line 476
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-eqz v0, :cond_7

    .line 477
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    :cond_7
    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 480
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    const/4 v0, 0x0

    .line 481
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 482
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    return-void
.end method

.method private resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    return-object p1
.end method

.method private resetViewTouch(Landroid/view/View;Z)V
    .registers 3

    .line 434
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    const/4 p2, 0x0

    .line 435
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 6

    .line 283
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 284
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 285
    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v2

    :goto_13
    if-nez v0, :cond_16

    return-void

    .line 290
    :cond_16
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_20

    if-nez p1, :cond_20

    .line 291
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2a

    :cond_20
    if-eqz p1, :cond_2a

    .line 293
    new-instance v1, Lmiuix/animation/controller/FolmeTouch$4;

    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeTouch$4;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_2a
    :goto_2a
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 301
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p1, :cond_36

    if-nez p2, :cond_36

    .line 302
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_40

    :cond_36
    if-eqz p2, :cond_40

    .line 304
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$5;

    invoke-direct {p1, p0}, Lmiuix/animation/controller/FolmeTouch$5;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 315
    :cond_40
    :goto_40
    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method private setHoverCorner(F)V
    .registers 4

    .line 776
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 777
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_19

    .line 778
    check-cast v0, Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_19
    return-void
.end method

.method private setTargetValue(ILjava/lang/Object;)V
    .registers 5

    .line 769
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 770
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 771
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private setTintColor()V
    .registers 6

    .line 113
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    if-eqz v0, :cond_9

    goto :goto_45

    :cond_9
    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 116
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 117
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    .line 118
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2a

    .line 119
    check-cast v1, Landroid/view/View;

    .line 120
    sget v0, Lmiuix/folme/R$color;->miuix_folme_color_touch_tint:I

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 123
    :cond_2a
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 124
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    int-to-double v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 125
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_45
    :goto_45
    return-void
.end method

.method private setTouchView(Landroid/view/View;)Z
    .registers 3

    .line 197
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ne v0, p1, :cond_10

    const/4 p1, 0x0

    return p1

    .line 201
    :cond_10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    return p1
.end method

.method private startLongClickTask()V
    .registers 3

    .line 538
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_5

    return-void

    .line 541
    :cond_5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-nez v0, :cond_11

    .line 542
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 544
    :cond_11
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->start(Lmiuix/animation/controller/FolmeTouch;)V

    return-void
.end method


# virtual methods
.method public varargs bindViewOfListItem(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 5

    .line 207
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolmeTouch.bindViewOfListItem for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :cond_25
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2c

    return-void

    .line 213
    :cond_2c
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$2;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch$2;-><init>(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancel()V
    .registers 2

    .line 743
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->cancel()V

    .line 744
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_a

    .line 745
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeBase;->cancel()V

    :cond_a
    return-void
.end method

.method public clean()V
    .registers 4

    .line 138
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 139
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_a

    .line 140
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeFont;->clean()V

    .line 142
    :cond_a
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 144
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 145
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 147
    :cond_19
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2a

    .line 148
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 150
    sget v2, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 152
    :cond_28
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 154
    :cond_2a
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    return-void
.end method

.method public clearTintColor()Lmiuix/animation/ITouchStyle;
    .registers 4

    const/4 v0, 0x1

    .line 647
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 648
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 649
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 650
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public varargs handleNoScaleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->setNoScale(Z)Lmiuix/animation/ITouchStyle;

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;[Lmiuix/animation/base/AnimConfig;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 242
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;[Lmiuix/animation/base/AnimConfig;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 236
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 247
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public ignoreTouchOf(Landroid/view/View;)V
    .registers 3

    .line 223
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    if-eqz v0, :cond_15

    .line 224
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->removeTouch(Lmiuix/animation/controller/FolmeTouch;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 225
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v0, 0x0

    .line 443
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .registers 6

    .line 609
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p2

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;
    .registers 6

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 708
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(I)Lmiuix/animation/ITouchStyle;
    .registers 6

    .line 699
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 700
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    int-to-double v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 701
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 702
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    .line 701
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setFontStyle(Lmiuix/animation/controller/FolmeFont;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    return-void
.end method

.method public setNoScale(Z)Lmiuix/animation/ITouchStyle;
    .registers 5

    .line 625
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mIsNoScale:Z

    if-eqz p1, :cond_40

    .line 627
    sget-object p1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {p1}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p1

    .line 628
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 629
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 630
    sget-object p1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {p1}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p1

    .line 631
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v2, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 632
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    :cond_40
    return-object p0
.end method

.method public varargs setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .registers 6

    .line 615
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p2

    .line 616
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    .line 618
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 619
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTint(FFFF)Lmiuix/animation/ITouchStyle;
    .registers 6

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 693
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    return-object p1
.end method

.method public setTint(I)Lmiuix/animation/ITouchStyle;
    .registers 6

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 686
    :goto_7
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 687
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/ITouchStyle;
    .registers 3

    .line 171
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 172
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public setTouchDown()V
    .registers 3

    .line 751
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 752
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public setTouchPadding(FFFF)Lmiuix/animation/ITouchStyle;
    .registers 7

    .line 665
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_padding_rect:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 666
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    const/4 p2, 0x4

    .line 667
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 666
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTouchRadius(F)Lmiuix/animation/ITouchStyle;
    .registers 3

    .line 673
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTouchRadius(FFFF)Lmiuix/animation/ITouchStyle;
    .registers 7

    .line 679
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTouchRect(Landroid/graphics/RectF;Lmiuix/animation/ITouchStyle$TouchRectGravity;)Lmiuix/animation/ITouchStyle;
    .registers 4

    .line 656
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect:I

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 657
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_gravity:I

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 658
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    const/16 p2, 0x1008

    .line 659
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 658
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTouchUp()V
    .registers 3

    .line 757
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs touchDown([Lmiuix/animation/base/AnimConfig;)V
    .registers 7

    const/4 v0, 0x0

    .line 714
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->setHoverCorner(F)V

    .line 715
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 716
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 717
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_14

    .line 718
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 720
    :cond_14
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 721
    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeTouch;->isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z

    move-result v1

    if-nez v1, :cond_54

    iget-boolean v1, p0, Lmiuix/animation/controller/FolmeTouch;->mIsNoScale:Z

    if-nez v1, :cond_54

    .line 722
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    .line 723
    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 724
    invoke-virtual {v1, v3}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    .line 723
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 725
    iget v2, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    sub-float v2, v1, v2

    div-float/2addr v2, v1

    const v1, 0x3f666666    # 0.9f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 726
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 727
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 729
    :cond_54
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1, v0, p1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs touchUp([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 734
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 735
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_d

    .line 736
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 738
    :cond_d
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public useVarFont(Landroid/widget/TextView;III)Lmiuix/animation/ITouchStyle;
    .registers 6

    .line 599
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_b

    .line 600
    iput p3, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    .line 601
    iput p4, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    .line 602
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;

    :cond_b
    return-object p0
.end method
