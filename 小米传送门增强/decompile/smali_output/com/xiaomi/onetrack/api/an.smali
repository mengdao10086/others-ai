.class Lcom/xiaomi/onetrack/api/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/onetrack/api/am;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/am;I)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/an;->b:Lcom/xiaomi/onetrack/api/am;

    iput p2, p0, Lcom/xiaomi/onetrack/api/an;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 95
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 99
    :cond_7
    iget v0, p0, Lcom/xiaomi/onetrack/api/an;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 100
    invoke-static {}, Lcom/xiaomi/onetrack/c/s;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/onetrack/c/s;->a(IZ)V

    .line 101
    invoke-static {}, Lcom/xiaomi/onetrack/c/s;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/xiaomi/onetrack/c/s;->a(IZ)V

    .line 102
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    :cond_23
    return-void
.end method
