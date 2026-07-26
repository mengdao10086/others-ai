.class Lcom/xiaomi/onetrack/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/c/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/p;Z)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/c/q;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 114
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/c/p;->a()V

    .line 116
    :try_start_5
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/c/q;->a:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    filled-new-array {v2, v1, v0}, [I

    move-result-object v0

    :goto_10
    const/4 v1, 0x3

    if-ge v2, v1, :cond_43

    .line 123
    aget v1, v0, v2

    .line 124
    invoke-static {v1}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result v3

    .line 125
    iget-object v4, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 126
    iget-object v4, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    int-to-long v5, v3

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_2a

    :catch_28
    move-exception v0

    goto :goto_2d

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 130
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netReceiver error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTimer"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-void
.end method
