.class Lcom/xiaomi/onetrack/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/onetrack/f/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/f/g;Landroid/content/Context;)V
    .registers 3

    .line 28
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/h;->b:Lcom/xiaomi/onetrack/f/g;

    iput-object p2, p0, Lcom/xiaomi/onetrack/f/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 31
    invoke-static {}, Lcom/xiaomi/onetrack/c/a;->a()V

    .line 32
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->d()V

    .line 33
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->f()V

    .line 34
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Landroid/content/Context;)V

    return-void
.end method
