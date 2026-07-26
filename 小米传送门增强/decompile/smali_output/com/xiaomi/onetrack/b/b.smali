.class Lcom/xiaomi/onetrack/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/a;Ljava/lang/String;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/b;->b:Lcom/xiaomi/onetrack/b/a;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->b:Lcom/xiaomi/onetrack/b/a;

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/b/a;->c(Ljava/lang/String;)V

    return-void
.end method
