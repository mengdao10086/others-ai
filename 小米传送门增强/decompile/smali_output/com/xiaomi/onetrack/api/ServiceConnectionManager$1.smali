.class Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/ar;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/ar;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 195
    const-string p1, "ServiceConnectManager"

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/ar;->g(Lcom/xiaomi/onetrack/api/ar;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/ar;->f(Lcom/xiaomi/onetrack/api/ar;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_14
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    goto :goto_2d

    :catchall_12
    move-exception v0

    goto :goto_33

    :catch_14
    move-exception v0

    .line 197
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_2d
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/ar;->e(Lcom/xiaomi/onetrack/api/ar;)V
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_12

    goto :goto_4b

    .line 201
    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 208
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/ar;->e(Lcom/xiaomi/onetrack/api/ar;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_21

    :catchall_6
    move-exception p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBinding throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnectManager"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 170
    const-string p1, "ServiceConnectManager"

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {p2}, Lcom/miui/analytics/ITrack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ITrack;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/api/ar;->a(Lcom/xiaomi/onetrack/api/ar;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 171
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {p2}, Lcom/xiaomi/onetrack/api/ar;->a(Lcom/xiaomi/onetrack/api/ar;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {p2}, Lcom/xiaomi/onetrack/api/ar;->b(Lcom/xiaomi/onetrack/api/ar;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {p2}, Lcom/xiaomi/onetrack/api/ar;->c(Lcom/xiaomi/onetrack/api/ar;)V

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected  mConnecting "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/ar;->b(Lcom/xiaomi/onetrack/api/ar;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mBindResult:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/ar;->a(Lcom/xiaomi/onetrack/api/ar;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIOneTrackService "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/ar;->d(Lcom/xiaomi/onetrack/api/ar;)Lcom/miui/analytics/ITrack;

    move-result-object v2

    if-nez v2, :cond_53

    move v0, v1

    :cond_53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_2 .. :try_end_75} :catchall_76

    goto :goto_94

    :catchall_76
    move-exception p2

    .line 176
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/ar;->e(Lcom/xiaomi/onetrack/api/ar;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_94
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 184
    const-string p1, "ServiceConnectManager"

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/ar;->e(Lcom/xiaomi/onetrack/api/ar;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected:  mConnecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/ar;->b(Lcom/xiaomi/onetrack/api/ar;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIOneTrackService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/ar;->d(Lcom/xiaomi/onetrack/api/ar;)Lcom/miui/analytics/ITrack;

    move-result-object v1

    if-nez v1, :cond_29

    const/4 v1, 0x0

    goto :goto_2a

    :cond_29
    const/4 v1, 0x1

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_35

    goto :goto_4e

    :catchall_35
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    return-void
.end method
