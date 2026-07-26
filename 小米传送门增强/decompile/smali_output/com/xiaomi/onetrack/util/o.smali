.class public Lcom/xiaomi/onetrack/util/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "o"

.field private static final b:Ljava/lang/String; = "content://com.miui.analytics.OneTrackProvider/insId"

.field private static final c:Ljava/lang/String; = "insId"

.field private static final d:Ljava/lang/String; = "pkg"

.field private static final e:Ljava/lang/String; = "sign"

.field private static volatile f:Lcom/xiaomi/onetrack/util/o;

.field private static g:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/Context;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    .line 48
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/o;->h:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/o;
    .registers 2

    .line 37
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    if-nez v0, :cond_19

    .line 38
    const-class v0, Lcom/xiaomi/onetrack/util/o;

    monitor-enter v0

    .line 39
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    if-nez v1, :cond_15

    .line 40
    new-instance v1, Lcom/xiaomi/onetrack/util/o;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/o;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 42
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 44
    :cond_19
    :goto_19
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .line 133
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 136
    :cond_7
    const-string v0, "content://com.miui.analytics.OneTrackProvider/insId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 138
    sget-object v2, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception v0

    .line 142
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    .line 143
    sget-object p1, Lcom/xiaomi/onetrack/util/o;->a:Ljava/lang/String;

    const-string v1, "setRemoteCacheInstanceId e"

    invoke-static {p1, v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 114
    :try_start_1
    const-string v1, "content://com.miui.analytics.OneTrackProvider/insId"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 115
    const-string v2, "pkg"

    sget-object v3, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/onetrack/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 118
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 120
    :goto_42
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x0

    .line 121
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :catch_4e
    move-exception v1

    goto :goto_54

    .line 123
    :cond_50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_4e

    goto :goto_5b

    .line 126
    :goto_54
    sget-object v2, Lcom/xiaomi/onetrack/util/o;->a:Ljava/lang/String;

    const-string v3, "getRemoteCacheInstanceId e"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/o;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 150
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_11
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 69
    :cond_7
    sput-object p1, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 70
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v0, :cond_10

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    .line 73
    :cond_10
    sget-object p1, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 77
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 78
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    return-object v0

    .line 82
    :cond_b
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v0, :cond_38

    .line 83
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->c()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->d()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 88
    invoke-direct {p0, v1}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3c

    .line 89
    :cond_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 91
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_3c

    .line 94
    :cond_38
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->d()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_3c
    :goto_3c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 99
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v1, :cond_53

    .line 101
    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    .line 104
    :cond_53
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_5b

    .line 106
    :cond_59
    sput-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 108
    :goto_5b
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    return-object v0
.end method
