.class Lcom/xiaomi/onetrack/api/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

.field final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .registers 3

    .line 751
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ab;->a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ab;->a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/ServiceQualityEvent;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v1

    const-string v2, "ot_service_quality"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_45

    :catch_2a
    move-exception v0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackNetAvailableEvent error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method
