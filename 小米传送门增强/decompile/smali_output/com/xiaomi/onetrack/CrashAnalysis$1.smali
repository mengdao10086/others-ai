.class final Lcom/xiaomi/onetrack/CrashAnalysis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 119
    const-string v0, "CrashAnalysis"

    :try_start_2
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis;

    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/api/m;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;Lcom/xiaomi/onetrack/CrashAnalysis$1;)V

    .line 120
    invoke-static {v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 121
    invoke-static {v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    goto :goto_36

    :catchall_16
    move-exception v1

    goto :goto_1e

    .line 123
    :cond_18
    const-string v1, "no crash file found"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_16

    goto :goto_36

    .line 126
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCrash error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    return-void
.end method
