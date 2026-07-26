.class public Lcom/xiaomi/aicr/nlp/MlKitManager;
.super Ljava/lang/Object;
.source "MlKitManager.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/aicr/nlp/MlKitManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaomi/aicr/nlp/MlKitManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/aicr/nlp/MlKitManager;
    .registers 3

    .line 32
    sget-object v0, Lcom/xiaomi/aicr/nlp/MlKitManager;->sInstance:Lcom/xiaomi/aicr/nlp/MlKitManager;

    if-nez v0, :cond_1d

    .line 33
    const-class v0, Lcom/xiaomi/aicr/nlp/MlKitManager;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Lcom/xiaomi/aicr/nlp/MlKitManager;->sInstance:Lcom/xiaomi/aicr/nlp/MlKitManager;

    if-nez v1, :cond_19

    .line 35
    new-instance v1, Lcom/xiaomi/aicr/nlp/MlKitManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/aicr/nlp/MlKitManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/aicr/nlp/MlKitManager;->sInstance:Lcom/xiaomi/aicr/nlp/MlKitManager;

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1b

    .line 37
    :cond_19
    :goto_19
    monitor-exit v0

    goto :goto_1d

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_17

    throw p0

    .line 39
    :cond_1d
    :goto_1d
    sget-object p0, Lcom/xiaomi/aicr/nlp/MlKitManager;->sInstance:Lcom/xiaomi/aicr/nlp/MlKitManager;

    return-object p0
.end method


# virtual methods
.method public getExactNerResult(Ljava/lang/String;)Lcom/xiaomi/aicr/nlp/NerResult;
    .registers 7

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v1, "key_ner_send"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/xiaomi/aicr/nlp/MlKitManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.miui.privacycomputing.provider.mlkitprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getNerResult"

    const-string v3, "0.0.2"

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 51
    const-string v0, "key_ner_reply"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    const-string v1, "key_status_code"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 53
    new-instance v2, Lcom/xiaomi/aicr/nlp/NerResult;

    const-string v4, "key_service_version"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/xiaomi/aicr/nlp/NerResult;-><init>(IILjava/lang/String;I)V

    return-object v2

    .line 44
    :cond_41
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ner source data should not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
