.class public Lmiuix/animation/ViewTarget;
.super Lmiuix/animation/IAnimTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/ViewTarget$ViewLifecycleObserver;,
        Lmiuix/animation/ViewTarget$LifecycleCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/IAnimTarget<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile pViewPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/property/ViewProperty;",
            ">;"
        }
    .end annotation
.end field

.field public static final sCreator:Lmiuix/animation/ITargetCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/ITargetCreator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSimpleCreator:Lmiuix/animation/ITargetCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/ITargetCreator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSimple:Z

.field private mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

.field private mRegisterRunnable:Ljava/lang/Runnable;

.field private mViewLifecycleObserver:Lmiuix/animation/ViewTarget$ViewLifecycleObserver;

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ESHv_5_IHPJ-xPOPCtnuIjbTRHo(Lmiuix/animation/ViewTarget;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/animation/ViewTarget;->lambda$clean$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    .line 40
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->Z:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_7d

    .line 56
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSITION_ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_7d
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ELEVATION:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->BIG_VIEW_SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->BIG_VIEW_SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lmiuix/animation/ViewTarget$1;

    invoke-direct {v0}, Lmiuix/animation/ViewTarget$1;-><init>()V

    sput-object v0, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 90
    new-instance v0, Lmiuix/animation/ViewTarget$2;

    invoke-direct {v0}, Lmiuix/animation/ViewTarget$2;-><init>()V

    sput-object v0, Lmiuix/animation/ViewTarget;->sSimpleCreator:Lmiuix/animation/ITargetCreator;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 111
    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    .line 99
    new-instance v0, Lmiuix/animation/ViewTarget$3;

    invoke-direct {v0, p0}, Lmiuix/animation/ViewTarget$3;-><init>(Lmiuix/animation/ViewTarget;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mRegisterRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 113
    sget-object v0, Lmiuix/animation/Folme;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1f

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmiuix/animation/Folme;->appContext:Landroid/content/Context;

    .line 116
    :cond_1f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 117
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mRegisterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 119
    :cond_2b
    iget-object p1, p0, Lmiuix/animation/ViewTarget;->mRegisterRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_30
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lmiuix/animation/ViewTarget$1;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Lmiuix/animation/ViewTarget;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lmiuix/animation/ViewTarget;->mIsSimple:Z

    return p1
.end method

.method static synthetic access$200(Lmiuix/animation/ViewTarget;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/animation/ViewTarget;Landroid/content/Context;)Z
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;->registerLifecycle(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lmiuix/animation/ViewTarget;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 34
    iput-object p1, p0, Lmiuix/animation/ViewTarget;->mRegisterRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lmiuix/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lmiuix/animation/ViewTarget;->initLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/animation/ViewTarget;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lmiuix/animation/ViewTarget;->awakeSelf()V

    return-void
.end method

.method static synthetic access$700(Lmiuix/animation/ViewTarget;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lmiuix/animation/ViewTarget;->sleepSelf()V

    return-void
.end method

.method static synthetic access$800(Lmiuix/animation/ViewTarget;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lmiuix/animation/ViewTarget;->cleanSelf()V

    return-void
.end method

.method private awakeSelf()V
    .registers 2

    .line 416
    iget-boolean v0, p0, Lmiuix/animation/ViewTarget;->mIsSimple:Z

    if-nez v0, :cond_b

    .line 417
    filled-new-array {p0}, [Lmiuix/animation/ViewTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->awake([Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private cleanSelf()V
    .registers 3

    .line 428
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTarget.cleanSelf isSimple:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/animation/ViewTarget;->mIsSimple:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 430
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 429
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_2f
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3c

    .line 433
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->unRegisterLifecycle(Landroid/content/Context;)Z

    :cond_3c
    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->setCorner(F)V

    .line 436
    iget-boolean v0, p0, Lmiuix/animation/ViewTarget;->mIsSimple:Z

    if-nez v0, :cond_4c

    .line 437
    filled-new-array {p0}, [Lmiuix/animation/ViewTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_4f

    .line 439
    :cond_4c
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->clean()V

    :goto_4f
    return-void
.end method

.method private doClean()V
    .registers 3

    const/4 v0, 0x0

    .line 223
    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->cancelRunningAnim()V

    .line 226
    :cond_c
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mRegisterRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    .line 227
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_24

    .line 229
    iget-object v1, p0, Lmiuix/animation/ViewTarget;->mRegisterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mRegisterRunnable:Ljava/lang/Runnable;

    .line 233
    :cond_24
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->clear()V

    .line 234
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners()V

    .line 235
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3d

    .line 236
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->unRegisterLifecycle(Landroid/content/Context;)Z

    :cond_3d
    return-void
.end method

.method private executeTask(Ljava/lang/Runnable;)V
    .registers 4

    .line 347
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception p1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTarget.executeTask failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix_anim"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public static getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;
    .registers 4

    .line 75
    sget-object v0, Lmiuix/animation/ViewTarget;->pViewPropertySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/property/ViewProperty;

    .line 76
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private initLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 10

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 299
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_47

    .line 300
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_init_layout:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 301
    check-cast v0, Landroid/view/ViewGroup;

    .line 302
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    .line 303
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_25

    const/4 v5, 0x4

    .line 306
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->measure(II)V

    .line 309
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 310
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 311
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p2, 0x0

    .line 312
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_47
    return-void
.end method

.method private synthetic lambda$clean$0()V
    .registers 1

    .line 219
    invoke-direct {p0}, Lmiuix/animation/ViewTarget;->doClean()V

    return-void
.end method

.method private registerLifecycle(Landroid/content/Context;)Z
    .registers 5

    :goto_0
    if-eqz p1, :cond_56

    .line 148
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 150
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecycleObserver:Lmiuix/animation/ViewTarget$ViewLifecycleObserver;

    if-nez v0, :cond_19

    .line 151
    new-instance v0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;

    invoke-direct {v0, p0}, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;-><init>(Lmiuix/animation/ViewTarget;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecycleObserver:Lmiuix/animation/ViewTarget$ViewLifecycleObserver;

    .line 153
    :cond_19
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecycleObserver:Lmiuix/animation/ViewTarget$ViewLifecycleObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return v1

    .line 155
    :cond_25
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_49

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_56

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 158
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    if-nez v0, :cond_41

    .line 159
    new-instance v0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    invoke-direct {v0, p0}, Lmiuix/animation/ViewTarget$LifecycleCallbacks;-><init>(Lmiuix/animation/ViewTarget;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 161
    :cond_41
    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return v1

    .line 168
    :cond_49
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_54

    .line 169
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_54
    const/4 p1, 0x0

    goto :goto_0

    :cond_56
    const/4 p1, 0x0

    return p1
.end method

.method private setCorner(F)V
    .registers 4

    .line 444
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_13

    .line 446
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private sleepSelf()V
    .registers 2

    .line 422
    iget-boolean v0, p0, Lmiuix/animation/ViewTarget;->mIsSimple:Z

    if-nez v0, :cond_b

    .line 423
    filled-new-array {p0}, [Lmiuix/animation/ViewTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->sleep([Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private unRegisterLifecycle(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 180
    :cond_4
    instance-of v1, p1, Landroidx/lifecycle/LifecycleOwner;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 181
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecycleObserver:Lmiuix/animation/ViewTarget$ViewLifecycleObserver;

    if-eqz v0, :cond_19

    .line 182
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecycleObserver:Lmiuix/animation/ViewTarget$ViewLifecycleObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 184
    :cond_19
    iput-object v3, p0, Lmiuix/animation/ViewTarget;->mViewLifecycleObserver:Lmiuix/animation/ViewTarget$ViewLifecycleObserver;

    return v2

    .line 186
    :cond_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_32

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_32

    .line 187
    iget-object v1, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    if-eqz v1, :cond_32

    .line 188
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 189
    iput-object v3, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    return v2

    :cond_32
    return v0
.end method


# virtual methods
.method public allowAnimRun()Z
    .registers 2

    .line 327
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 328
    invoke-static {v0}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public clean()V
    .registers 2

    .line 219
    new-instance v0, Lmiuix/animation/ViewTarget$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/animation/ViewTarget$$ExternalSyntheticLambda0;-><init>(Lmiuix/animation/ViewTarget;)V

    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Lmiuix/animation/internal/TargetHandler;
    .registers 5

    if-nez p1, :cond_7

    .line 127
    invoke-static {}, Lmiuix/animation/Folme;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_4b

    .line 128
    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_4b

    .line 129
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmiuix/animation/Folme;->getUiLooperByTid(J)Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 131
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTarget.createHandler registerUiLooper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 132
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_48
    invoke-static {p1}, Lmiuix/animation/Folme;->registerUiLooper(Landroid/os/Looper;)V

    :cond_4b
    :goto_4b
    if-nez p1, :cond_6e

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "warning!! the ViewTarget handler created failed, caused by creating in a thread without Looper, the animation will do not work!! trace:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 140
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    const-string v0, "miuix_anim"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 143
    :cond_6e
    new-instance v0, Lmiuix/animation/internal/TargetHandler;

    invoke-direct {v0, p1, p0}, Lmiuix/animation/internal/TargetHandler;-><init>(Landroid/os/Looper;Lmiuix/animation/IAnimTarget;)V

    return-object v0
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .registers 5

    .line 281
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_30

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_2d

    .line 285
    :cond_24
    new-instance v1, Lmiuix/animation/ViewTarget$4;

    invoke-direct {v1, p0, v0, p1}, Lmiuix/animation/ViewTarget$4;-><init>(Lmiuix/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lmiuix/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    goto :goto_30

    .line 292
    :cond_2d
    invoke-virtual {p0, p1}, Lmiuix/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public getDoubleValue(Lmiuix/animation/property/FloatProperty;)D
    .registers 4

    .line 208
    instance-of v0, p1, Lmiuix/animation/property/ViewProperty;

    if-eqz v0, :cond_10

    .line 209
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 211
    invoke-virtual {p1, v0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0

    :cond_10
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public getLocationOnScreen([I)V
    .registers 4

    .line 251
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    const v1, 0x7fffffff

    .line 253
    aput v1, p1, v0

    const/4 v0, 0x0

    aput v1, p1, v0

    goto :goto_17

    .line 255
    :cond_14
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_17
    return-void
.end method

.method public getTargetObject()Landroid/view/View;
    .registers 2

    .line 200
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getTargetObject()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVelocity(Ljava/lang/String;)D
    .registers 4

    .line 271
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .registers 3

    .line 242
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 245
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public onFrameEnd(Z)V
    .registers 4

    .line 261
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_21

    if-eqz v0, :cond_21

    .line 263
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_set_height:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 264
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_set_width:I

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 265
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_21
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 4

    .line 333
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 337
    :cond_7
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 338
    invoke-virtual {v1}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 339
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    .line 341
    :cond_1d
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;->executeTask(Ljava/lang/Runnable;)V

    :goto_20
    return-void
.end method

.method public setVelocity(Ljava/lang/String;D)V
    .registers 4

    .line 276
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    .line 318
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_16

    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_16

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_16

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p1, v0, :cond_11

    goto :goto_16

    .line 322
    :cond_11
    invoke-super {p0, p1}, Lmiuix/animation/IAnimTarget;->shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z

    move-result p1

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 453
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x23

    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->isValid()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "valid"

    goto :goto_2b

    :cond_29
    const-string v3, "invalid"

    :goto_2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v3, " {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    if-eqz v1, :cond_3b

    .line 459
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    goto :goto_3c

    :cond_3b
    move v4, v3

    .line 460
    :goto_3c
    const-string v5, "/"

    if-eq v4, v3, :cond_85

    .line 461
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-lez v4, :cond_8a

    ushr-int/lit8 v6, v4, 0x18

    if-eqz v6, :cond_8a

    if-eqz v3, :cond_8a

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    const/high16 v7, 0x1000000

    if-eq v6, v7, :cond_66

    const/high16 v7, 0x7f000000

    if-eq v6, v7, :cond_63

    .line 474
    :try_start_5e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_68

    .line 468
    :cond_63
    const-string v6, "app"

    goto :goto_68

    .line 471
    :cond_66
    const-string v6, "android"

    .line 477
    :goto_68
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    .line 478
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_84
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5e .. :try_end_84} :catch_8a

    goto :goto_8a

    .line 489
    :cond_85
    const-string v2, "NO_ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :catch_8a
    :cond_8a
    :goto_8a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9b

    .line 493
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 495
    :cond_9b
    const-string v1, "view reference is not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :goto_a0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
