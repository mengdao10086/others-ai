.class public Lcom/xiaomi/onetrack/util/oaid/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static volatile b:Lcom/xiaomi/onetrack/util/oaid/a;

.field private static d:J


# instance fields
.field private volatile c:Ljava/lang/String;

.field private final e:I

.field private volatile f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->e:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 25
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:Z

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/oaid/a;
    .registers 2

    .line 27
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    if-nez v0, :cond_19

    .line 28
    const-class v0, Lcom/xiaomi/onetrack/util/oaid/a;

    monitor-enter v0

    .line 29
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    if-nez v1, :cond_15

    .line 30
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/a;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/a;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 32
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 34
    :cond_19
    :goto_19
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    return-object v0
.end method

.method private d()Z
    .registers 10

    .line 43
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-le v0, v2, :cond_7

    return v1

    .line 46
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 47
    sget-wide v5, Lcom/xiaomi/onetrack/util/oaid/a;->d:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 48
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    if-ne v0, v1, :cond_1e

    const-wide/16 v7, 0xbb8

    cmp-long v0, v5, v7

    if-gez v0, :cond_36

    return v1

    .line 52
    :cond_1e
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_2a

    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    if-gez v0, :cond_36

    return v1

    .line 56
    :cond_2a
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    if-ne v0, v2, :cond_36

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-gez v0, :cond_36

    return v1

    .line 61
    :cond_36
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get time\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sput-wide v3, Lcom/xiaomi/onetrack/util/oaid/a;->d:J

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-enter v0

    .line 85
    :try_start_3
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 86
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-nez p1, :cond_1b

    .line 89
    sget-object p1, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    const-string v1, "getOaid() throw exception : Don\'t use it on the main thread"

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string p1, ""

    monitor-exit v0

    return-object p1

    :catchall_18
    move-exception p1

    goto/16 :goto_a4

    .line 87
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t use it on the main thread"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_23
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 95
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 99
    :cond_35
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/oaid/a;->d()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 100
    sget-object p1, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    const-string v1, "isNotAllowedGetOaid"

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 105
    :cond_46
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 106
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    .line 107
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 108
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 111
    :cond_5c
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:Z

    if-nez v1, :cond_7d

    .line 113
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/g;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 114
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 115
    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    .line 116
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 117
    monitor-exit v0

    return-object v1

    .line 122
    :cond_7d
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/helpers/b;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9a

    .line 123
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 124
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    .line 125
    iget v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 126
    monitor-exit v0

    return-object p1

    .line 130
    :cond_9a
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 131
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 132
    :goto_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_3 .. :try_end_a5} :catchall_18

    throw p1
.end method

.method public a(Z)V
    .registers 4

    .line 67
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:Z

    .line 68
    sget-object p1, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCloseOaidDependMsaSDK\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    return-void
.end method

.method public c()Z
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
