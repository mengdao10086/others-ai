.class public abstract Lmiuix/responsive/page/manager/BaseResponseStateManager;
.super Lmiuix/responsive/page/manager/BaseStateManager;
.source "BaseResponseStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;,
        Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;
    }
.end annotation


# instance fields
.field protected mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

.field protected mResponsiveMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;",
            ">;"
        }
    .end annotation
.end field

.field protected mResponsiveMapChild:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lmiuix/responsive/map/ResponsiveViewSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mResponsiveViewGroup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/map/ResponsiveViewSpec;",
            ">;"
        }
    .end annotation
.end field

.field protected mRootView:Landroid/view/View;

.field protected mViewResponsives:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/interfaces/IViewResponsive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/responsive/interfaces/IResponsive;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Lmiuix/responsive/page/manager/BaseStateManager;-><init>()V

    .line 45
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 46
    invoke-interface {p1}, Lmiuix/responsive/interfaces/IResponsive;->getResponsiveSubject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_18

    .line 47
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    invoke-interface {p1}, Lmiuix/responsive/interfaces/IResponsive;->getResponsiveSubject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->registerLifecycle(Landroidx/lifecycle/LifecycleOwner;)V

    .line 49
    :cond_18
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    .line 50
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    .line 51
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    .line 52
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    .line 53
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance v0, Lmiuix/responsive/page/manager/ResponsiveFactory2Wrapper;

    invoke-direct {v0, p0}, Lmiuix/responsive/page/manager/ResponsiveFactory2Wrapper;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    invoke-static {p1, v0}, Lmiuix/responsive/wrapper/WrapperHelper;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 54
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    return-void
.end method

.method private bindResponseView(Landroid/view/View;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    new-instance v1, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;

    invoke-direct {v1, p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 128
    new-instance v0, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(I)V

    const/4 v1, 0x3

    .line 129
    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveViewSpec;->setEffectiveScreenOrientation(I)V

    .line 130
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    return-void
.end method

.method private injectOnHierarchyChangeListener(Landroid/view/ViewGroup;)V
    .registers 3

    .line 147
    new-instance v0, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;

    invoke-direct {v0, p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private registerLifecycle(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    .line 116
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;

    invoke-direct {v0, p0, p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 223
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 224
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveStateFromConfig(Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 225
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onAfterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    invoke-virtual {p0, v0, v1}, Lmiuix/responsive/page/manager/BaseStateManager;->isStateEquals(Lmiuix/responsive/map/ResponsiveState;Lmiuix/responsive/map/ResponsiveState;)Z

    move-result v0

    .line 227
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V

    :cond_1e
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 215
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 216
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveState;->setTo(Lmiuix/responsive/map/ResponsiveState;)V

    .line 217
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onBeforeConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_10
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 236
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->onDestroy()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 238
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 239
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method protected notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V
    .registers 8

    .line 184
    new-instance v0, Lmiuix/responsive/map/ScreenSpec;

    invoke-direct {v0}, Lmiuix/responsive/map/ScreenSpec;-><init>()V

    if-eqz p2, :cond_a

    .line 186
    invoke-virtual {p2, v0}, Lmiuix/responsive/map/ResponsiveState;->toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V

    .line 189
    :cond_a
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    invoke-interface {p2, p1, v0, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 192
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 193
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/responsive/interfaces/IResponsive;

    if-eqz v1, :cond_19

    .line 195
    invoke-interface {v1, p1, v0, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    goto :goto_19

    .line 199
    :cond_33
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 200
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/responsive/interfaces/IViewResponsive;

    if-nez v2, :cond_64

    .line 202
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/responsive/interfaces/IViewResponsive;

    .line 203
    iget-object v3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_64
    invoke-interface {v2, p1, v0, p3}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z

    goto :goto_3d

    :cond_68
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 243
    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveStateManager;->remove(Landroid/content/Context;)V

    return-void
.end method

.method parseResponsiveViews(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .registers 7

    .line 62
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 63
    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    .line 66
    :cond_6
    sget-object v0, Lmiuix/core/R$styleable;->ResponsiveSpec:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    const-string p3, "\\."

    invoke-virtual {p4, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 69
    array-length p3, p3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p3, v0, :cond_35

    .line 70
    invoke-static {p4}, Lmiuix/reflect/Reflects;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 71
    const-class p4, Lmiuix/responsive/interfaces/IViewResponsive;

    invoke-virtual {p4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_35

    .line 72
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v1, :cond_35

    .line 74
    iget-object p4, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_35
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_effectiveScreenOrientation:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    if-eqz p3, :cond_58

    .line 84
    sget p2, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v1, :cond_8c

    .line 86
    new-instance p4, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-direct {p4, p2}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(I)V

    .line 87
    invoke-virtual {p4, p3}, Lmiuix/responsive/map/ResponsiveViewSpec;->setEffectiveScreenOrientation(I)V

    .line 88
    iget-object p3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    .line 91
    :cond_58
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_hideInScreenMode:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    if-eqz p3, :cond_8c

    .line 94
    iget-object p4, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-nez p4, :cond_7c

    .line 96
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->bindResponseView(Landroid/view/View;)V

    .line 99
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->injectOnHierarchyChangeListener(Landroid/view/ViewGroup;)V

    .line 101
    :cond_7c
    sget p2, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v1, :cond_8c

    .line 103
    new-instance v0, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-direct {v0, p2, p3}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(II)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_8c
    :goto_8c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
