.class public abstract Lmiuix/responsive/page/manager/BaseStateManager;
.super Ljava/lang/Object;
.source "BaseStateManager.java"


# static fields
.field protected static sEnableResponsive:Z = true


# instance fields
.field protected final mOldState:Lmiuix/responsive/map/ResponsiveState;

.field protected mState:Lmiuix/responsive/map/ResponsiveState;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    return-void
.end method

.method public static isSupportResponsive()Z
    .registers 1

    .line 20
    sget-boolean v0, Lmiuix/responsive/page/manager/BaseStateManager;->sEnableResponsive:Z

    return v0
.end method


# virtual methods
.method protected computeResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 3

    .line 32
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lmiuix/responsive/ResponsiveStateHelper;->computeResponsiveState(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    return-object v0
.end method

.method protected computeResponsiveStateFromConfig(Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;
    .registers 4

    .line 37
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    .line 37
    invoke-static {v0, v1, p1}, Lmiuix/responsive/ResponsiveStateHelper;->computeResponsiveStateOnConfigChanged(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getContext()Landroid/content/Context;
.end method

.method protected isStateEquals(Lmiuix/responsive/map/ResponsiveState;Lmiuix/responsive/map/ResponsiveState;)Z
    .registers 3

    .line 50
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onAfterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    return-void
.end method

.method protected onBeforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    return-void
.end method
