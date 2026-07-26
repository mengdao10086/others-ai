.class Lcom/xiaomi/onetrack/api/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/ao;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/ao;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ap;->a:Lcom/xiaomi/onetrack/api/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 45
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->f()V

    :cond_d
    return-void
.end method
