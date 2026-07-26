.class public final Landroidx/core/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/CancellationSignal$Api16Impl;,
        Landroidx/core/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    .line 155
    :catch_0
    :goto_0
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_8

    .line 157
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_0

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_9

    .line 73
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    goto :goto_38

    :cond_9
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    .line 76
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 77
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 78
    iget-object v1, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 79
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_7

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 83
    :try_start_16
    invoke-interface {v0}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_1c

    :catchall_1a
    move-exception v0

    goto :goto_22

    :cond_1c
    :goto_1c
    if-eqz v1, :cond_2d

    .line 86
    invoke-static {v1}, Landroidx/core/os/CancellationSignal$Api16Impl;->cancel(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1a

    goto :goto_2d

    .line 89
    :goto_22
    monitor-enter p0

    .line 90
    :try_start_23
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2a

    .line 93
    throw v0

    :catchall_2a
    move-exception v0

    .line 92
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 89
    :cond_2d
    :goto_2d
    monitor-enter p0

    .line 90
    :try_start_2e
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw v0

    .line 79
    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_7

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 48
    monitor-enter p0

    .line 49
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 50
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V
    .registers 3

    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    invoke-direct {p0}, Landroidx/core/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 116
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_c

    .line 117
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    goto :goto_1c

    .line 119
    :cond_c
    iput-object p1, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 120
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1a

    if-nez p1, :cond_15

    goto :goto_1a

    .line 123
    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_a

    .line 124
    invoke-interface {p1}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    return-void

    .line 121
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    return-void

    .line 123
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_a

    throw p1
.end method
