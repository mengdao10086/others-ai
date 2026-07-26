.class Lcom/xiaomi/onetrack/api/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/m;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 389
    iput p1, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    .line 432
    iget v0, p0, Lcom/xiaomi/onetrack/api/r;->c:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/onetrack/api/r;->d:J

    sub-long/2addr v0, v2

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x0

    .line 435
    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 437
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v3, v2, v0, v1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;J)V

    .line 439
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_3d

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 416
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;Z)V

    .line 417
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/onetrack/api/r;->c:I

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/api/r;->d:J

    .line 419
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Z)V

    .line 421
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_4a

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isAppStart:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    const/4 p1, 0x0

    .line 425
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 426
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/m;->g(Lcom/xiaomi/onetrack/api/m;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .line 402
    iget v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    .line 403
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/onetrack/api/j;->a(I)V

    .line 404
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 405
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    .line 406
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a()V

    goto :goto_19

    .line 408
    :cond_17
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 410
    :goto_19
    iget v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    .line 446
    iget v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    .line 448
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/xiaomi/onetrack/api/j;->a(I)V

    .line 449
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->h(Lcom/xiaomi/onetrack/api/m;)V

    .line 450
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    .line 451
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    goto :goto_1f

    .line 453
    :cond_1d
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    .line 455
    :goto_1f
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;Z)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
