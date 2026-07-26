.class Lcom/xiaomi/onetrack/api/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method private constructor <init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;)V
    .registers 3

    .line 138
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    .line 139
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;Lcom/xiaomi/onetrack/api/d;)V
    .registers 4

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/c$a;-><init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 147
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const-string v2, "BroadcastManager"

    if-eq v0, v1, :cond_f

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1b

    .line 149
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v0

    .line 151
    const-string v1, "screenReceiver exception: "

    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :cond_1b
    :goto_1b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b9

    .line 156
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b0

    .line 158
    :try_start_2e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 160
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 166
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 167
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/n;->b(Z)V

    goto :goto_4b

    :catchall_42
    move-exception p1

    goto :goto_98

    .line 170
    :cond_44
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result p1

    .line 171
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/n;->b(Z)V

    .line 173
    :goto_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only one of allowed NetworkInfo :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,network status changed, isNetworkConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b0

    .line 175
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/c;->c(Lcom/xiaomi/onetrack/api/c;)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 176
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/a/c/b;->a(Z)V

    .line 178
    :cond_84
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/c;->d(Lcom/xiaomi/onetrack/api/c;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 179
    invoke-static {}, Lcom/xiaomi/onetrack/c/s;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/c/s;->a(Z)V
    :try_end_97
    .catchall {:try_start_2e .. :try_end_97} :catchall_42

    goto :goto_b0

    .line 183
    :goto_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_BROADCAST_NET_RECEIVER throwable:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_b0
    :goto_b0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_b9
    return-void
.end method
