.class public Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LifecycleOwnerCompat"
.end annotation


# instance fields
.field private mOriginalExecutor:Ljava/lang/Object;

.field private mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

.field final synthetic this$0:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method protected constructor <init>(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2

    .line 1661
    iput-object p1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->this$0:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createSpecialUiTaskExecutor()Landroidx/arch/core/executor/TaskExecutor;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1724
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;-><init>(Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;)V

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1670
    const-string v0, "MiuixDialog"

    :try_start_2
    const-class v1, Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 1672
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v2

    const-string v3, "mDelegate"

    .line 1670
    invoke-static {v1, v2, v3}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1675
    iput-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mOriginalExecutor:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_12} :catch_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_12} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_12} :catch_15
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    goto :goto_1b

    :catchall_13
    move-exception v0

    goto :goto_6b

    :catch_15
    move-exception v1

    goto :goto_2b

    :catch_17
    move-exception v1

    goto :goto_40

    :catch_19
    move-exception v1

    goto :goto_55

    .line 1684
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->createSpecialUiTaskExecutor()Landroidx/arch/core/executor/TaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    .line 1685
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->setDelegate(Landroidx/arch/core/executor/TaskExecutor;)V

    goto :goto_6a

    .line 1682
    :goto_2b
    :try_start_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() taskExecutor get failed InvocationTargetException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1680
    :goto_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() taskExecutor get failed NoSuchMethodException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1678
    :goto_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() taskExecutor get failed IllegalAccessException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_2b .. :try_end_69} :catchall_13

    goto :goto_1b

    :goto_6a
    return-void

    .line 1684
    :goto_6b
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->createSpecialUiTaskExecutor()Landroidx/arch/core/executor/TaskExecutor;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    .line 1685
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {v1, v2}, Landroidx/arch/core/executor/ArchTaskExecutor;->setDelegate(Landroidx/arch/core/executor/TaskExecutor;)V

    .line 1686
    throw v0
.end method

.method public onStopAfter()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1717
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mOriginalExecutor:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/arch/core/executor/TaskExecutor;

    if-eqz v0, :cond_11

    .line 1718
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mOriginalExecutor:Ljava/lang/Object;

    check-cast v1, Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->setDelegate(Landroidx/arch/core/executor/TaskExecutor;)V

    :cond_11
    return-void
.end method

.method public onStopBefore()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1691
    const-string v0, "MiuixDialog"

    .line 1693
    :try_start_2
    const-class v1, Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 1695
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v2

    const-string v3, "mDelegate"

    .line 1693
    invoke-static {v1, v2, v3}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_e} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_e} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_e} :catch_32
    .catchall {:try_start_2 .. :try_end_e} :catchall_2f

    if-eqz v0, :cond_16

    .line 1705
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mOriginalExecutor:Ljava/lang/Object;

    if-eq v0, v1, :cond_16

    .line 1706
    iput-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mOriginalExecutor:Ljava/lang/Object;

    .line 1709
    :cond_16
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    if-ne v0, v1, :cond_24

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1710
    :cond_24
    :goto_24
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->setDelegate(Landroidx/arch/core/executor/TaskExecutor;)V

    goto/16 :goto_a1

    :catchall_2f
    move-exception v0

    goto/16 :goto_a2

    :catch_32
    move-exception v1

    goto :goto_38

    :catch_34
    move-exception v1

    goto :goto_5b

    :catch_36
    move-exception v1

    goto :goto_7e

    .line 1702
    :goto_38
    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop() taskExecutor get failed InvocationTargetException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_2f

    .line 1709
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    if-nez v0, :cond_24

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_24

    .line 1700
    :goto_5b
    :try_start_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop() taskExecutor get failed NoSuchMethodException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_5b .. :try_end_6f} :catchall_2f

    .line 1709
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    if-nez v0, :cond_24

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_24

    .line 1698
    :goto_7e
    :try_start_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop() taskExecutor get failed IllegalAccessException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_2f

    .line 1709
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    if-nez v0, :cond_24

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_24

    :cond_a1
    :goto_a1
    return-void

    :goto_a2
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    if-nez v1, :cond_b0

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_b9

    .line 1710
    :cond_b0
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->mSpecialUiExecutor:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {v1, v2}, Landroidx/arch/core/executor/ArchTaskExecutor;->setDelegate(Landroidx/arch/core/executor/TaskExecutor;)V

    .line 1712
    :cond_b9
    throw v0
.end method
