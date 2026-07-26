.class Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;
.super Landroidx/arch/core/executor/DefaultTaskExecutor;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->createSpecialUiTaskExecutor()Landroidx/arch/core/executor/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private volatile mSpecialMainHandler:Landroid/os/Handler;

.field final synthetic this$1:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;)V
    .registers 2

    .line 1724
    iput-object p1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;->this$1:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    invoke-direct {p0}, Landroidx/arch/core/executor/DefaultTaskExecutor;-><init>()V

    .line 1727
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 2

    .line 1749
    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isMainThread()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 1731
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;->mSpecialMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1c

    .line 1732
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1733
    :try_start_7
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;->mSpecialMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_18

    .line 1734
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;->mSpecialMainHandler:Landroid/os/Handler;

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_1a

    .line 1736
    :cond_18
    :goto_18
    monitor-exit v0

    goto :goto_1c

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_16

    throw p1

    .line 1739
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat$1;->mSpecialMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
