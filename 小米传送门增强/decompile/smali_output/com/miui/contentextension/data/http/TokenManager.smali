.class public Lcom/miui/contentextension/data/http/TokenManager;
.super Ljava/lang/Object;
.source "TokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/data/http/TokenManager$Holder;
    }
.end annotation


# instance fields
.field private volatile mExpiredInMillis:J

.field private volatile mRefreshTimes:I

.field private volatile mToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/data/http/TokenManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/data/http/TokenManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/contentextension/data/http/TokenManager;
    .registers 1

    .line 32
    invoke-static {}, Lcom/miui/contentextension/data/http/TokenManager$Holder;->-$$Nest$sfgetsInstance()Lcom/miui/contentextension/data/http/TokenManager;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized refreshToken()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 36
    :try_start_1
    const-string v0, "Taplus.TokenManager"

    const-string v1, "refresh"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget v0, p0, Lcom/miui/contentextension/data/http/TokenManager;->mRefreshTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/contentextension/data/http/TokenManager;->mRefreshTimes:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-le v0, v1, :cond_1e

    .line 38
    const-string v0, "Taplus.TokenManager"

    const-string v1, "return token error"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 39
    monitor-exit p0

    return-object v2

    :catchall_1b
    move-exception v0

    goto/16 :goto_a0

    .line 42
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getToken()Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 43
    invoke-virtual {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;->getToken()Ljava/lang/String;

    move-result-object v2

    :cond_2c
    const-wide/16 v3, -0x1

    if-eqz v0, :cond_35

    .line 44
    invoke-virtual {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;->getExpiredInMillis()J

    move-result-wide v0

    goto :goto_36

    :cond_35
    move-wide v0, v3

    .line 46
    :goto_36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9a

    cmp-long v3, v0, v3

    if-eqz v3, :cond_9a

    .line 48
    iput-object v2, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/miui/contentextension/data/http/TokenManager;->mExpiredInMillis:J

    .line 50
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "key_token"

    iget-object v2, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "key_expired"

    iget-wide v2, p0, Lcom/miui/contentextension/data/http/TokenManager;->mExpiredInMillis:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/contentextension/utils/PreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 52
    const-string v0, "Taplus.TokenManager"

    const-string v1, "return token success"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "Taplus.TokenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, "Taplus.TokenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh expiredInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/contentextension/data/http/TokenManager;->mExpiredInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;
    :try_end_98
    .catchall {:try_start_1e .. :try_end_98} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 58
    :cond_9a
    :try_start_9a
    invoke-direct {p0}, Lcom/miui/contentextension/data/http/TokenManager;->refreshToken()Ljava/lang/String;

    move-result-object v0
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_1b

    monitor-exit p0

    return-object v0

    :goto_a0
    :try_start_a0
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_1b

    throw v0
.end method


# virtual methods
.method public declared-synchronized getToken(Z)Ljava/lang/String;
    .registers 11

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_58

    .line 63
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v3, "key_token"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/miui/contentextension/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v3, "key_expired"

    invoke-static {v0, v3, v1, v2}, Lcom/miui/contentextension/utils/PreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/contentextension/data/http/TokenManager;->mExpiredInMillis:J

    .line 65
    const-string v0, "Taplus.TokenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get token from sp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "Taplus.TokenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get expiredInMillis from sp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/contentextension/data/http/TokenManager;->mExpiredInMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :catchall_56
    move-exception p1

    goto :goto_83

    :cond_58
    :goto_58
    if-nez p1, :cond_7a

    .line 69
    iget-object p1, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7a

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/contentextension/data/http/TokenManager;->mExpiredInMillis:J

    const-wide/32 v7, 0xdbba00

    sub-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-gez p1, :cond_7a

    iget-wide v3, p0, Lcom/miui/contentextension/data/http/TokenManager;->mExpiredInMillis:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_7a

    .line 73
    iget-object p1, p0, Lcom/miui/contentextension/data/http/TokenManager;->mToken:Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_56

    monitor-exit p0

    return-object p1

    :cond_7a
    const/4 p1, 0x0

    .line 76
    :try_start_7b
    iput p1, p0, Lcom/miui/contentextension/data/http/TokenManager;->mRefreshTimes:I

    .line 77
    invoke-direct {p0}, Lcom/miui/contentextension/data/http/TokenManager;->refreshToken()Ljava/lang/String;

    move-result-object p1
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_56

    monitor-exit p0

    return-object p1

    :goto_83
    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_56

    throw p1
.end method
