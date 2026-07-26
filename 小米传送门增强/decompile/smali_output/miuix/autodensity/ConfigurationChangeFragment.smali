.class public Lmiuix/autodensity/ConfigurationChangeFragment;
.super Landroid/app/Fragment;
.source "ConfigurationChangeFragment.java"


# instance fields
.field private mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

.field private mRemoveDensityChangeFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 26
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "->ConfigurationChangeFragment onAttach newConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 31
    :cond_2d
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensity(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 36
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 37
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "->ConfigurationChangeFragment onConfigurationChanged newConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 41
    :cond_26
    iget-object v1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

    if-eqz v1, :cond_2e

    .line 42
    invoke-virtual {v1, v0, p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensityOnConfigChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    goto :goto_4d

    .line 44
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning! ConfigurationChangeFragment density processor is null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoDensity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_4d
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    :try_start_50
    iget-boolean p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    if-eqz p1, :cond_67

    .line 49
    const-class p1, Landroid/app/Activity;

    const-string v1, "mActivityInfo"

    invoke-static {p1, v0, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    .line 50
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    return-void
.end method

.method public removeDensityChangeFlag()V
    .registers 2

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    return-void
.end method

.method public setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

    return-void
.end method
