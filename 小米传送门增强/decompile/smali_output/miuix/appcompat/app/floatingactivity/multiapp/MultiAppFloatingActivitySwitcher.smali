.class public final Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
.super Ljava/lang/Object;
.source "MultiAppFloatingActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;,
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;,
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;,
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;
    }
.end annotation


# static fields
.field private static mAllowedPackageList:[Ljava/lang/String;

.field private static sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;


# instance fields
.field private final mActivityCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCloseAllActivityTime:J

.field private mEnableDragToDismiss:Z

.field private final mExitAnimationHandler:Landroid/os/Handler;

.field private mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

.field private mLastActivityPanel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDragEndTime:J

.field private mOnDragStartTime:J

.field private mServiceConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mExitAnimationHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 75
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    .registers 1

    .line 43
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->setIFloatingService(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;)V

    return-void
.end method

.method static synthetic access$1000(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onDragEnd()V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->closeAllActivity()V

    return-void
.end method

.method static synthetic access$1200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unbindService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->closeAllPage()V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/os/Handler;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mExitAnimationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->checkRegister()V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unRegisterAll()V

    return-void
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;II)Z
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->shouldAllFloatingClose(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;I)Landroid/os/Bundle;
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mEnableDragToDismiss:Z

    return p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/util/SparseArray;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->hideBehindPages()V

    return-void
.end method

.method private bindService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    const-string v1, "floating_service_pkg"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isPackageAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 217
    :cond_12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "floating_service_path"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-void

    .line 222
    :cond_22
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private checkRegister()V
    .registers 5

    const/4 v0, 0x0

    .line 99
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 100
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 102
    iget-boolean v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->register:Z

    if-nez v3, :cond_15

    .line 103
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->invokeRegister(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V

    .line 104
    iget v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->checkBg(ILjava/lang/String;)V

    goto :goto_15

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_33
    return-void
.end method

.method private closeAllActivity()V
    .registers 7

    .line 395
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 398
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    const/4 v0, 0x0

    .line 399
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 400
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_26
    if-ltz v2, :cond_50

    .line 402
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget-object v3, v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 403
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget v4, v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 404
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget v5, v5, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {p0, v5}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    move-result v5

    if-eqz v3, :cond_4d

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_4d

    .line 406
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_53
    return-void
.end method

.method private closeAllPage()V
    .registers 7

    .line 595
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 598
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    const/4 v0, 0x0

    .line 599
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 600
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 601
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_26
    if-ltz v2, :cond_50

    .line 602
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget-object v3, v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 603
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget v4, v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 604
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget v5, v5, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {p0, v5}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    move-result v5

    if-eqz v3, :cond_4d

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_4d

    .line 606
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_53
    return-void
.end method

.method private getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;
    .registers 5

    .line 455
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_23

    .line 457
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 458
    iget-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method static getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    .registers 1

    .line 137
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    return-object v0
.end method

.method private hideBehindPages()V
    .registers 5

    .line 613
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragStartTime:J

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 616
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragStartTime:J

    const/4 v0, 0x0

    .line 617
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 618
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 619
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 620
    iget-boolean v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    if-nez v3, :cond_24

    .line 621
    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_24

    .line 623
    new-instance v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_24

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_44
    return-void
.end method

.method private hideTopBgs(I)V
    .registers 5

    .line 482
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2b

    const/4 v0, 0x0

    .line 484
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 485
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget v1, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 486
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_28

    if-eqz v1, :cond_28

    .line 488
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2b
    return-void
.end method

.method private init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 191
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 194
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 195
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->registerActivityToService(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 196
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    new-instance p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    invoke-direct {p3, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, p3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 197
    iget-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mEnableDragToDismiss:Z

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setEnableSwipToDismiss(Z)V

    .line 198
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 171
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isFromMultiApp(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 172
    invoke-static {p0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void

    .line 175
    :cond_a
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    if-nez v0, :cond_2a

    .line 176
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;-><init>()V

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 177
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mAllowedPackageList:[Ljava/lang/String;

    if-nez v0, :cond_25

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$array;->multi_floating_package_allow_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mAllowedPackageList:[Ljava/lang/String;

    .line 180
    :cond_25
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->bindService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 182
    :cond_2a
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private invokeRegister(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 250
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    if-eqz v0, :cond_50

    .line 252
    :try_start_7
    iget-object v1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    iget v2, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 253
    invoke-virtual {p0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getIdentity(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-interface {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->registerServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)I

    .line 254
    iget-object v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    iget v1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getIdentity(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->updateServerActivityIndex(Ljava/lang/String;I)V

    .line 255
    iget-boolean v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->register:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->register:Z

    .line 257
    iget v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    iput v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotifyIndex:I

    goto :goto_2d

    :catch_2b
    move-exception p1

    goto :goto_49

    .line 259
    :cond_2d
    :goto_2d
    iget-object v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 260
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_33

    .line 262
    :cond_43
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_48} :catch_2b

    goto :goto_50

    .line 264
    :goto_49
    const-string v0, "MFloatingSwitcher"

    const-string v1, "catch register service notify exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    :goto_50
    return-void
.end method

.method private isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 478
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private isCalled(J)Z
    .registers 5

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x64

    cmp-long p1, v0, p1

    if-gtz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public static isFromMultiApp(Landroid/content/Intent;)Z
    .registers 2

    .line 147
    const-string v0, "floating_service_pkg"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "floating_service_path"

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private isPackageAllowed(Ljava/lang/String;)Z
    .registers 7

    .line 227
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mAllowedPackageList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 228
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 232
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package is not allowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please contact the MIUIX developer!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MFloatingSwitcher"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private notifyService(I)Landroid/os/Bundle;
    .registers 3

    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 579
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    const-string v1, "MFloatingSwitcher"

    if-eqz v0, :cond_12

    .line 581
    :try_start_6
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 583
    const-string p2, "catch call service method exception"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 586
    :cond_12
    const-string p1, "ifloatingservice is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private onDragEnd()V
    .registers 5

    .line 631
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragEndTime:J

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 634
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragEndTime:J

    const/4 v0, 0x0

    .line 635
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 636
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 637
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 638
    iget-boolean v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    if-nez v3, :cond_24

    .line 639
    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_24

    .line 641
    new-instance v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_24

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_44
    return-void
.end method

.method public static onSaveInstanceState(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 202
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 204
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 206
    const-string p1, "floating_switcher_saved_key"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_11
    return-void
.end method

.method private registerActivityToService(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 237
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 238
    iget-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    if-nez v1, :cond_1a

    .line 239
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    invoke-direct {v1, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    iput-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    goto :goto_21

    :cond_1a
    if-eqz v0, :cond_21

    .line 241
    iget-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->resetAppCompatActivity(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 243
    :cond_21
    :goto_21
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->invokeRegister(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V

    return-void
.end method

.method private setIFloatingService(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnected:Z

    return-void
.end method

.method private shouldAllFloatingClose(II)Z
    .registers 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    .line 877
    :cond_7
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    move-result p1

    if-gt p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method private stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 9

    .line 495
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-nez v0, :cond_70

    if-eqz p3, :cond_11

    .line 498
    const-string v0, "floating_switcher_saved_key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    goto :goto_12

    :cond_11
    const/4 p3, 0x0

    :goto_12
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_29

    .line 501
    new-instance p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    invoke-direct {p3, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;-><init>(Z)V

    if-nez p2, :cond_21

    .line 503
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 505
    :cond_21
    const-string v2, "service_page_index"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 507
    :cond_29
    iput-object p1, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 508
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p2

    iput p2, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 509
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    .line 510
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    iget v2, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_4f

    .line 512
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 513
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    iget v3, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 515
    :cond_4f
    iget v2, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 517
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_56
    if-ltz v3, :cond_68

    .line 518
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget v4, v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    if-le v2, v4, :cond_65

    add-int/lit8 v0, v3, 0x1

    goto :goto_68

    :cond_65
    add-int/lit8 v3, v3, -0x1

    goto :goto_56

    .line 523
    :cond_68
    :goto_68
    invoke-virtual {p2, v0, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 524
    iget p2, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->markedPageIndex(Lmiuix/appcompat/app/AppCompatActivity;I)V

    .line 526
    :cond_70
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->hideTopBgs(I)V

    return-void
.end method

.method private unRegisterActivityFromService(ILjava/lang/String;)V
    .registers 4

    .line 289
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    if-eqz v0, :cond_22

    .line 291
    :try_start_4
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 293
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-interface {p2, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception p1

    .line 297
    const-string p2, "MFloatingSwitcher"

    const-string v0, "catch unregister service notify exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method private unRegisterAll()V
    .registers 5

    const/4 v0, 0x0

    .line 280
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 281
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 283
    iget v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unRegisterActivityFromService(ILjava/lang/String;)V

    goto :goto_15

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2c
    return-void
.end method

.method private unbindService(Landroid/content/Context;)V
    .registers 3

    .line 385
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnected:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnected:Z

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_10
    return-void
.end method

.method private updateServerActivityIndex(Ljava/lang/String;I)V
    .registers 4

    .line 270
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    if-eqz v0, :cond_10

    .line 272
    :try_start_4
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->upDateRemoteActivityInfo(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p1

    .line 274
    const-string p2, "MFloatingSwitcher"

    const-string v0, "catch updateServerActivityIndex service notify exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method


# virtual methods
.method checkBg(ILjava/lang/String;)V
    .registers 5

    .line 111
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_17

    :cond_11
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    move-result v0

    if-le v0, v1, :cond_28

    .line 113
    :cond_17
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 114
    iget p2, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotifyIndex:I

    if-lez p2, :cond_28

    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_28

    .line 115
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    :cond_28
    return-void
.end method

.method public clear()V
    .registers 2

    .line 570
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method clearActivitySpecTask(ILjava/lang/String;)V
    .registers 3

    .line 672
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 674
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_b
    return-void
.end method

.method destroy()V
    .registers 2

    .line 564
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 565
    sput-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    :cond_b
    return-void
.end method

.method getActivity(ILjava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 3

    .line 467
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 469
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method getCurrentPageCount(I)I
    .registers 3

    .line 708
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    .line 710
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method getIdentity(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getLastActivityPanel()Landroid/view/View;
    .registers 2

    .line 433
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_c
    return-object v0
.end method

.method getServicePageCount(I)I
    .registers 5

    .line 718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 719
    const-string v1, "key_task_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x6

    .line 720
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 722
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 724
    :goto_1b
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3f

    .line 726
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 727
    iget v1, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    add-int/lit8 v2, v1, 0x1

    if-le v2, v0, :cond_29

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_29

    :cond_3f
    return v0
.end method

.method isAboveActivityFinishing(ILjava/lang/String;)Z
    .registers 6

    .line 441
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 445
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 446
    iget-object p2, p2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "key_request_identity"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string p2, "key_task_id"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x9

    .line 448
    invoke-direct {p0, p1, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 449
    const-string p2, "check_finishing"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method public isActivityOpenEnterAnimExecuted(ILjava/lang/String;)Z
    .registers 3

    .line 538
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 540
    iget-boolean p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method isServiceAvailable()Z
    .registers 2

    .line 649
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method markActivityOpenEnterAnimExecutedInternal(ILjava/lang/String;)V
    .registers 3

    .line 679
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 p2, 0x1

    .line 681
    iput-boolean p2, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    :cond_9
    return-void
.end method

.method notifyPreviousActivitySlide(ILjava/lang/String;)V
    .registers 4

    .line 686
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 690
    :cond_7
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V

    .line 700
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 701
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1b

    .line 703
    :cond_16
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1b
    return-void
.end method

.method postEnterAnimationTask(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .line 653
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isActivityOpenEnterAnimExecuted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 657
    :cond_7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getCurrentPageCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_14

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    move-result v0

    if-le v0, v1, :cond_17

    .line 658
    :cond_14
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(ILjava/lang/String;)V

    .line 661
    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 662
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_2c

    .line 664
    :cond_21
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 666
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    :goto_2c
    return-void
.end method

.method remove(ILjava/lang/String;)V
    .registers 5

    .line 546
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 547
    iget-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_35

    .line 548
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unRegisterActivityFromService(ILjava/lang/String;)V

    .line 549
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_25

    .line 551
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 552
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 553
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 556
    :cond_25
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_35

    .line 557
    iget-object p1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unbindService(Landroid/content/Context;)V

    .line 558
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->clear()V

    :cond_35
    return-void
.end method

.method saveBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 416
    :cond_3
    invoke-direct {p0, p2, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p3

    if-nez p3, :cond_a

    return-void

    .line 420
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    .line 421
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 422
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 423
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object p3, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 425
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v4, p1

    move v6, p2

    .line 423
    invoke-static/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;->sendToFdServer(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;[BIIILjava/lang/String;I)V

    return-void
.end method

.method setLastActivityPanel(Landroid/view/View;)V
    .registers 3

    .line 437
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method updateResumeState(ILjava/lang/String;Z)V
    .registers 4

    .line 121
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 123
    iput-boolean p3, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    :cond_8
    return-void
.end method
