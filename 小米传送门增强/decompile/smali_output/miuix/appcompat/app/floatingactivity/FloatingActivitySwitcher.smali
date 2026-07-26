.class public Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.super Ljava/lang/Object;
.source "FloatingActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;,
        Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;
    }
.end annotation


# static fields
.field private static final mActivityInfoStack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;


# instance fields
.field private final mActivityCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEnableDragToDismiss:Z

.field private mLastActivityPanel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mWillDestroyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;
    .registers 1

    .line 23
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/util/HashMap;
    .registers 1

    .line 23
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->closeTopActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    return p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;
    .registers 1

    .line 23
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->hideBehindPages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->showBehindPages(Ljava/lang/String;)V

    return-void
.end method

.method private closeTopActivity(Ljava/lang/String;)V
    .registers 3

    .line 115
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz p1, :cond_2d

    .line 117
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2d

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    :cond_2d
    return-void
.end method

.method private execEnterNormalRom(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 302
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 305
    :cond_7
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 306
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->clearFloatingWindowAnim(Lmiuix/appcompat/app/AppCompatActivity;)V

    goto :goto_14

    .line 308
    :cond_11
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->execFloatingWindowEnterAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V

    :goto_14
    return-void
.end method

.method static getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
    .registers 1

    .line 35
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    return-object v0
.end method

.method private static getOrCreateActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;
    .registers 9

    .line 599
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 600
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v1

    if-eqz v0, :cond_13

    goto :goto_34

    .line 601
    :cond_13
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 602
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_22

    const/4 v1, 0x0

    :goto_20
    move v4, v1

    goto :goto_27

    .line 603
    :cond_22
    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v1

    goto :goto_20

    .line 604
    :goto_27
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    :goto_34
    return-object v0
.end method

.method private hideBehindPages(Ljava/lang/String;)V
    .registers 6

    .line 349
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz v0, :cond_44

    .line 351
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_34

    const/4 v2, 0x0

    .line 353
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 354
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v1, v2

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_34
    add-int/lit8 v1, v1, -0x1

    :goto_36
    if-ltz v1, :cond_44

    .line 360
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingBrightPanel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    :cond_44
    return-void
.end method

.method private hideTopBgs(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 5

    .line 204
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3b

    const/4 v0, 0x0

    .line 207
    :goto_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_26

    .line 208
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 209
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_27

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_26
    move v0, v2

    :goto_27
    if-eq v0, v2, :cond_3b

    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 215
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 217
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    goto :goto_29

    :cond_3b
    return-void
.end method

.method private init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 4

    .line 79
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 83
    :cond_7
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    new-instance v0, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 85
    iget-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setEnableSwipToDismiss(Z)V

    .line 86
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;-><init>(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    return-void
.end method

.method private insertActivityByIndex(Ljava/util/ArrayList;ILmiuix/appcompat/app/AppCompatActivity;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;I",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ")V"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/4 v1, 0x0

    if-ltz v0, :cond_29

    .line 267
    sget-object v2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz v2, :cond_21

    .line 270
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v1

    :cond_21
    if-le p2, v1, :cond_26

    add-int/lit8 v1, v0, 0x1

    goto :goto_29

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 277
    :cond_29
    :goto_29
    invoke-virtual {p1, v1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method private static install(Lmiuix/appcompat/app/AppCompatActivity;ZLandroid/os/Bundle;)V
    .registers 4

    .line 61
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    if-nez v0, :cond_d

    .line 62
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;-><init>()V

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 63
    iput-boolean p1, v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 65
    :cond_d
    sget-object p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {p1, p0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method private isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .registers 3

    .line 182
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public static onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 3

    .line 72
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 73
    const-string v0, "miuix_floating_activity_info_key"

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getOrCreateActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_11
    return-void
.end method

.method private recoverFromSavedInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;
    .registers 10

    .line 284
    const-string v0, "miuix_floating_activity_info_key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-nez p2, :cond_29

    .line 286
    const-string p2, "FloatingActivity"

    const-string v0, "FloatingActivitySwitcher restore a full ActivitySpec instance with savedInstanceState fail, Check if you have replaced the theme in the float window !"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    :cond_29
    return-object p2
.end method

.method private showBehindPages(Ljava/lang/String;)V
    .registers 6

    .line 367
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz v0, :cond_44

    .line 369
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_34

    const/4 v2, 0x0

    .line 371
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 372
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v1, v2

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_34
    add-int/lit8 v1, v1, -0x1

    :goto_36
    if-ltz v1, :cond_44

    .line 378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->showFloatingBrightPanel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    :cond_44
    return-void
.end method

.method private stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 10

    .line 224
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 225
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    .line 226
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1e

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1e
    if-eqz p2, :cond_47

    .line 238
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->recoverFromSavedInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    move-result-object p2

    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    # setter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;
    invoke-static {p2, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$202(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    # setter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;
    invoke-static {p2, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$302(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->insertActivityByIndex(Ljava/util/ArrayList;ILmiuix/appcompat/app/AppCompatActivity;)V

    .line 242
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 244
    :cond_47
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object p2

    .line 246
    new-instance v6, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_5d

    const/4 p2, 0x0

    :goto_5b
    move v2, p2

    goto :goto_62

    .line 248
    :cond_5d
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result p2

    goto :goto_5b

    .line 249
    :goto_62
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 253
    sget-object p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_78
    :goto_78
    sget-object p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz p2, :cond_8d

    .line 258
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result p2

    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->markedPageIndex(Lmiuix/appcompat/app/AppCompatActivity;I)V

    .line 260
    :cond_8d
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->execEnterNormalRom(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 261
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->hideTopBgs(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 341
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 342
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    .line 344
    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    return-void
.end method

.method public closeAllFloatingPage(Ljava/lang/String;)V
    .registers 6

    .line 94
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz v0, :cond_47

    .line 96
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1e
    if-ltz v1, :cond_47

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 100
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 101
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingBrightPanel()V

    .line 102
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    sget-object v3, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_47
    return-void
.end method

.method getActivity(Ljava/lang/String;I)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 5

    .line 143
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_25

    .line 145
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 146
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I
    .registers 4

    if-eqz p1, :cond_15

    .line 134
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 136
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method getActivityList(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method getLastActivityPanel()Landroid/view/View;
    .registers 2

    .line 333
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

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

.method getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 6

    if-eqz p1, :cond_2d

    .line 165
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 167
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_16

    :cond_15
    const/4 p1, -0x1

    :goto_16
    if-lez p1, :cond_2d

    add-int/lit8 p1, p1, -0x1

    move v1, p1

    :goto_1b
    if-ltz v1, :cond_2d

    .line 171
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 172
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2a

    return-object v2

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method public isActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .registers 3

    .line 192
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz p1, :cond_16

    .line 193
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 197
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    .line 199
    # setter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$102(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Z)Z

    :cond_12
    return-void
.end method

.method public remove(Ljava/lang/String;I)V
    .registers 7

    .line 313
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_38

    .line 315
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_2d

    .line 316
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 317
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 320
    :cond_25
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 322
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 323
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 326
    :cond_38
    sget-object p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_48

    .line 328
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->clear()V

    :cond_48
    return-void
.end method

.method setLastActivityPanel(Landroid/view/View;)V
    .registers 3

    .line 337
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    return-void
.end method
