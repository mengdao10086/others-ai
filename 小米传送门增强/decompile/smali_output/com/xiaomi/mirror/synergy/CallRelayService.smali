.class public Lcom/xiaomi/mirror/synergy/CallRelayService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;
    }
.end annotation


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_IN_USE:I = 0x1


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/xiaomi/mirror/ICallRelayService;

.field private mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/xiaomi/mirror/ICallRelayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/ICallRelayService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;

    if-nez p1, :cond_13

    return-void

    :cond_13
    :try_start_13
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_1f

    :catch_1c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;

    :goto_1f
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    if-eqz v1, :cond_19

    # getter for: Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->mListener:Lcom/xiaomi/mirror/synergy/CallRelayListener;
    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->access$100(Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;)Lcom/xiaomi/mirror/synergy/CallRelayListener;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    # getter for: Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->mListener:Lcom/xiaomi/mirror/synergy/CallRelayListener;
    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->access$100(Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;)Lcom/xiaomi/mirror/synergy/CallRelayListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/mirror/synergy/CallRelayListener;->onLost()V

    goto :goto_19

    :catchall_17
    move-exception v1

    goto :goto_1e

    :cond_19
    :goto_19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;

    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_17

    throw v1
.end method

.method public release()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    :try_start_8
    invoke-interface {v1}, Lcom/xiaomi/mirror/ICallRelayService;->release()V

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v1

    goto :goto_14

    :catch_10
    :cond_10
    :goto_10
    :try_start_10
    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_e

    throw v1
.end method

.method public sendRelayMessage(Ljava/lang/String;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b

    if-eqz v1, :cond_d

    :try_start_7
    invoke-interface {v1, p1}, Lcom/xiaomi/mirror/ICallRelayService;->sendRelayMessage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_d
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    :catch_d
    :cond_d
    :goto_d
    :try_start_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_b

    throw p1
.end method

.method public setCallState(I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b

    if-eqz v1, :cond_d

    :try_start_7
    invoke-interface {v1, p1}, Lcom/xiaomi/mirror/ICallRelayService;->setCallState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_d
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    :catch_d
    :cond_d
    :goto_d
    :try_start_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_b

    throw p1
.end method

.method public setRelayListener(Lcom/xiaomi/mirror/synergy/CallRelayListener;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;-><init>(Lcom/xiaomi/mirror/synergy/CallRelayService$1;)V

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_26

    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    # setter for: Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->mListener:Lcom/xiaomi/mirror/synergy/CallRelayListener;
    invoke-static {v1, p1}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->access$102(Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;Lcom/xiaomi/mirror/synergy/CallRelayListener;)Lcom/xiaomi/mirror/synergy/CallRelayListener;

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    if-eqz p1, :cond_21

    :try_start_1b
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    invoke-interface {p1, v1}, Lcom/xiaomi/mirror/ICallRelayService;->registerCallRelayListener(Lcom/xiaomi/mirror/ICallRelayListener;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_24
    .catchall {:try_start_1b .. :try_end_20} :catchall_10

    goto :goto_24

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/xiaomi/mirror/synergy/CallRelayService;->binderDied()V

    :catch_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_10

    throw p1
.end method
