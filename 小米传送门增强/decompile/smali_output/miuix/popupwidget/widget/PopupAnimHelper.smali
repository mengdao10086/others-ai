.class public Lmiuix/popupwidget/widget/PopupAnimHelper;
.super Ljava/lang/Object;
.source "PopupAnimHelper.java"

# interfaces
.implements Lmiuix/animation/FolmeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;
    }
.end annotation


# static fields
.field private static final POPUP_BLUR:Lmiuix/animation/property/ValueProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/ValueProperty<",
            "Lmiuix/popupwidget/widget/PopupAnimHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final POPUP_DIM:Lmiuix/animation/property/ValueProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/ValueProperty<",
            "Lmiuix/popupwidget/widget/PopupAnimHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final POPUP_FRACTION:Lmiuix/animation/property/ValueProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/ValueProperty<",
            "Lmiuix/popupwidget/widget/PopupAnimHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mBlur:F

.field private final mContentView:Landroid/view/View;

.field private mCurrentDim:F

.field private mDimValue:F

.field private final mEnterAlphaConfig:Lmiuix/animation/base/AnimConfig;

.field private mFolmeAnimator:Lmiuix/animation/Folme$ObjectFolmeImpl;

.field private mFraction:F

.field private mInAnimation:Z

.field private final mRootView:Landroid/view/View;

.field private mScaleListener:Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

.field private final mSpringBackLayout:Landroid/view/View;

.field mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManagerFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 55
    new-instance v0, Lmiuix/popupwidget/widget/PopupAnimHelper$1;

    const-string v1, "fraction"

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/PopupAnimHelper$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_FRACTION:Lmiuix/animation/property/ValueProperty;

    .line 67
    new-instance v0, Lmiuix/popupwidget/widget/PopupAnimHelper$2;

    const-string v1, "popupBlur"

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Lmiuix/popupwidget/widget/PopupAnimHelper$2;-><init>(Ljava/lang/String;F)V

    sput-object v0, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_BLUR:Lmiuix/animation/property/ValueProperty;

    .line 79
    new-instance v0, Lmiuix/popupwidget/widget/PopupAnimHelper$3;

    const-string v1, "dim"

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/PopupAnimHelper$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_DIM:Lmiuix/animation/property/ValueProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 8

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mInAnimation:Z

    const/4 v1, 0x2

    .line 53
    iput v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowManagerFlags:I

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mRootView:Landroid/view/View;

    .line 96
    sget v3, Lmiuix/popupwidget/R$id;->spring_back:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;

    .line 97
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x43480000    # 200.0f

    aput v5, v4, v0

    .line 98
    invoke-static {v3, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mEnterAlphaConfig:Lmiuix/animation/base/AnimConfig;

    .line 99
    new-instance v2, Lmiuix/popupwidget/widget/PopupAnimHelper$4;

    invoke-direct {v2, p0, p1}, Lmiuix/popupwidget/widget/PopupAnimHelper$4;-><init>(Lmiuix/popupwidget/widget/PopupAnimHelper;Landroid/view/View;)V

    .line 123
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_52

    const/4 v5, -0x2

    .line 124
    invoke-static {v5, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v3, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object v2, v3, v0

    .line 125
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 126
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    return-void

    :array_52
    .array-data 4
        0x3f51eb85    # 0.82f
        0x3ea8f5c3    # 0.33f
    .end array-data
.end method

.method static synthetic access$000(Lmiuix/popupwidget/widget/PopupAnimHelper;)F
    .registers 1

    .line 35
    iget p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mFraction:F

    return p0
.end method

.method static synthetic access$002(Lmiuix/popupwidget/widget/PopupAnimHelper;F)F
    .registers 2

    .line 35
    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mFraction:F

    return p1
.end method

.method static synthetic access$100(Lmiuix/popupwidget/widget/PopupAnimHelper;)F
    .registers 1

    .line 35
    iget p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mBlur:F

    return p0
.end method

.method static synthetic access$1000()Lmiuix/animation/property/ValueProperty;
    .registers 1

    .line 35
    sget-object v0, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_FRACTION:Lmiuix/animation/property/ValueProperty;

    return-object v0
.end method

.method static synthetic access$102(Lmiuix/popupwidget/widget/PopupAnimHelper;F)F
    .registers 2

    .line 35
    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mBlur:F

    return p1
.end method

.method static synthetic access$1100(Lmiuix/popupwidget/widget/PopupAnimHelper;)F
    .registers 1

    .line 35
    iget p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mDimValue:F

    return p0
.end method

.method static synthetic access$1200(Lmiuix/popupwidget/widget/PopupAnimHelper;)I
    .registers 1

    .line 35
    iget p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowManagerFlags:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/popupwidget/widget/PopupAnimHelper;)F
    .registers 1

    .line 35
    iget p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mCurrentDim:F

    return p0
.end method

.method static synthetic access$202(Lmiuix/popupwidget/widget/PopupAnimHelper;F)F
    .registers 2

    .line 35
    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mCurrentDim:F

    return p1
.end method

.method static synthetic access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;
    .registers 1

    .line 35
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lmiuix/popupwidget/widget/PopupAnimHelper;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mInAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;
    .registers 1

    .line 35
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mScaleListener:Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

    return-object p0
.end method

.method static synthetic access$602(Lmiuix/popupwidget/widget/PopupAnimHelper;Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;)Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;
    .registers 2

    .line 35
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mScaleListener:Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

    return-object p1
.end method

.method static synthetic access$700(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/animation/base/AnimConfig;
    .registers 1

    .line 35
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method static synthetic access$800()Lmiuix/animation/property/ValueProperty;
    .registers 1

    .line 35
    sget-object v0, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_DIM:Lmiuix/animation/property/ValueProperty;

    return-object v0
.end method

.method static synthetic access$900(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/animation/base/AnimConfig;
    .registers 1

    .line 35
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mEnterAlphaConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method


# virtual methods
.method public dismissWithAnim(Ljava/lang/Runnable;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 186
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_92

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_16

    goto/16 :goto_92

    .line 192
    :cond_16
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mInAnimation:Z

    .line 193
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_91

    .line 194
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    const/high16 v4, 0x43160000    # 150.0f

    aput v4, v3, v0

    .line 195
    invoke-static {v1, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-instance v3, Lmiuix/popupwidget/widget/PopupAnimHelper$6;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupAnimHelper$6;-><init>(Lmiuix/popupwidget/widget/PopupAnimHelper;)V

    new-array v4, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v3, v4, v0

    .line 196
    invoke-virtual {v2, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-static {v3}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 205
    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_FRACTION:Lmiuix/animation/property/ValueProperty;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_DIM:Lmiuix/animation/property/ValueProperty;

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    .line 206
    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-wide/16 v5, 0x96

    invoke-static {v5, v6}, Lmiuix/animation/FolmeEase;->sinOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v5

    new-array v6, v0, [F

    invoke-virtual {v4, v3, v5, v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 207
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/popupwidget/widget/PopupAnimHelper$7;

    invoke-direct {v4, p0, p1}, Lmiuix/popupwidget/widget/PopupAnimHelper$7;-><init>(Lmiuix/popupwidget/widget/PopupAnimHelper;Ljava/lang/Runnable;)V

    new-array p1, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v4, p1, v0

    invoke-virtual {v3, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 216
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_91
    return-void

    :cond_92
    :goto_92
    if-eqz p1, :cond_97

    .line 188
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_97
    return-void
.end method

.method public folme()Lmiuix/animation/Folme$ObjectFolmeImpl;
    .registers 2

    .line 136
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mFolmeAnimator:Lmiuix/animation/Folme$ObjectFolmeImpl;

    return-object v0
.end method

.method public setDimValue(F)V
    .registers 2

    .line 235
    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mDimValue:F

    return-void
.end method

.method public setEdgeExtension(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 179
    sget-object p1, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_FRACTION:Lmiuix/animation/property/ValueProperty;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Lmiuix/animation/property/FloatProperty;->setMinVisibleChange(F)V

    goto :goto_12

    .line 181
    :cond_a
    sget-object p1, Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_FRACTION:Lmiuix/animation/property/ValueProperty;

    const v0, 0x3d23d70a    # 0.04f

    invoke-virtual {p1, v0}, Lmiuix/animation/property/FloatProperty;->setMinVisibleChange(F)V

    :goto_12
    return-void
.end method

.method public setFolmeImpl(Lmiuix/animation/Folme$ObjectFolmeImpl;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mFolmeAnimator:Lmiuix/animation/Folme$ObjectFolmeImpl;

    return-void
.end method

.method public setWindowManagerFlags(I)V
    .registers 2

    .line 239
    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowManagerFlags:I

    return-void
.end method

.method public showWithAnim(I)V
    .registers 5

    .line 140
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_22

    :cond_b
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mInAnimation:Z

    .line 144
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 145
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lmiuix/popupwidget/widget/PopupAnimHelper$5;

    invoke-direct {v2, p0, p1, v0}, Lmiuix/popupwidget/widget/PopupAnimHelper$5;-><init>(Lmiuix/popupwidget/widget/PopupAnimHelper;II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public update(I)V
    .registers 7

    .line 221
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mInAnimation:Z

    if-eqz v0, :cond_5

    return-void

    .line 224
    :cond_5
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 225
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 226
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 227
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 228
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mScaleListener:Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

    if-eqz v0, :cond_2f

    .line 230
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v4, p1, v1}, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->updateScaleBounds(Landroid/graphics/Rect;II)V

    :cond_2f
    return-void
.end method
