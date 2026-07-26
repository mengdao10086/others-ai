.class Lcom/xiaomi/onetrack/api/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;)V
    .registers 2

    .line 785
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ad;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 788
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    return-void
.end method
