.class Lcom/xiaomi/onetrack/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V
    .registers 3

    .line 105
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/j;->b:Lcom/xiaomi/onetrack/b/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/j;->b:Lcom/xiaomi/onetrack/b/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    const-string v1, "app_id=?"

    .line 111
    const-string v2, "events_cloud"

    iget-object v3, p0, Lcom/xiaomi/onetrack/b/j;->a:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1c
    return-void
.end method
