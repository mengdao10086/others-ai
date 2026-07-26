.class public Lcom/xiaomi/onetrack/util/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static final b:Ljava/lang/String; = "com.xiaomi.onetrack.DEBUG"

.field private static final c:Ljava/lang/String; = "com.xiaomi.onetrack.permissions.DEBUG_MODE"

.field private static final d:Ljava/lang/String; = "/api/open/device/writeBack"

.field private static final e:Ljava/lang/String; = "http://"

.field private static final f:Ljava/lang/String; = "https://"

.field private static final g:Ljava/lang/String; = ".mi.com"

.field private static volatile h:Lcom/xiaomi/onetrack/util/d; = null

.field private static final i:I = 0x64


# instance fields
.field private final j:Landroid/content/Context;

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/xiaomi/onetrack/util/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/util/e;-><init>(Lcom/xiaomi/onetrack/util/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/d;->k:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/xiaomi/onetrack/util/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/f;-><init>(Lcom/xiaomi/onetrack/util/d;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/d;->l:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    .line 67
    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/util/d;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/util/d;
    .registers 2

    .line 55
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    if-nez v0, :cond_19

    .line 56
    const-class v0, Lcom/xiaomi/onetrack/util/d;

    monitor-enter v0

    .line 57
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    if-nez v1, :cond_15

    .line 58
    new-instance v1, Lcom/xiaomi/onetrack/util/d;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/d;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 60
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 62
    :cond_19
    :goto_19
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 76
    :cond_3
    :try_start_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    const-string v0, "com.xiaomi.onetrack.DEBUG"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_20

    .line 79
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/d;->l:Landroid/content/BroadcastReceiver;

    const-string v3, "com.xiaomi.onetrack.permissions.DEBUG_MODE"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_3f

    :catch_1e
    move-exception p1

    goto :goto_29

    .line 81
    :cond_20
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/d;->l:Landroid/content/BroadcastReceiver;

    const-string v1, "com.xiaomi.onetrack.permissions.DEBUG_MODE"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_1e

    goto :goto_3f

    .line 84
    :goto_29
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDebugModeReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 130
    new-instance v0, Lcom/xiaomi/onetrack/util/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/util/g;-><init>(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 123
    :cond_8
    const-string v0, ".mi.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    return v1
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/util/d;)Landroid/os/Handler;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/d;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 30
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 8

    .line 169
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 171
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    const-string v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 174
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x64

    .line 175
    iput v4, v3, Landroid/os/Message;->what:I

    .line 176
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2a} :catch_34

    .line 177
    const-string v5, "hint"

    if-nez p1, :cond_36

    if-eqz v0, :cond_36

    .line 178
    :try_start_30
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :catch_34
    move-exception p1

    goto :goto_42

    .line 180
    :cond_36
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_39
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 183
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/d;->k:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_41} :catch_34

    goto :goto_4b

    .line 185
    :goto_42
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)Z
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/d;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
