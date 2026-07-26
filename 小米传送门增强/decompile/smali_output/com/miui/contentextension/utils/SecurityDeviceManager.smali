.class public Lcom/miui/contentextension/utils/SecurityDeviceManager;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/SecurityDeviceManager$Holder;,
        Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;,
        Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;,
        Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;,
        Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;
    }
.end annotation


# static fields
.field private static final sExecutors:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFid:Ljava/lang/String;

.field private mIsSupportTrustZone:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFid(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mFid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSupportTrustZone(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Ljava/lang/Boolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mIsSupportTrustZone:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFid(Lcom/miui/contentextension/utils/SecurityDeviceManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mFid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSupportTrustZone(Lcom/miui/contentextension/utils/SecurityDeviceManager;Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mIsSupportTrustZone:Ljava/lang/Boolean;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 232
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->sExecutors:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/utils/SecurityDeviceManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager;
    .registers 1

    .line 63
    sget-object v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$Holder;->INSTANCE:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    return-object v0
.end method

.method private getNonce(Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    const-string v0, "Taplus.SecurityDeviceManager"

    .line 127
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;->getInterface()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;

    move-result-object v1

    const-string v2, "CL77181"

    const-string v3, "ocr"

    invoke-interface {v1, p1, v2, v3}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;->getNonce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    const/4 v1, 0x0

    .line 129
    :try_start_13
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 131
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 132
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    const-string p1, "data"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 135
    const-string v2, "nonce"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string v3, "nonceCert"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_45} :catch_66

    .line 138
    :try_start_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNonce: nonce = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nonceCert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_61} :catch_63

    move-object v1, v3

    goto :goto_8a

    :catch_63
    move-exception p1

    move-object v1, v3

    goto :goto_85

    :catch_66
    move-exception p1

    goto :goto_85

    .line 140
    :cond_68
    :try_start_68
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNonce: error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_84} :catch_66

    goto :goto_8a

    .line 145
    :goto_85
    const-string v2, "getToken: "

    invoke-static {v0, v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8a
    :goto_8a
    return-object v1
.end method

.method private getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;
    .registers 14

    .line 177
    const-string v0, "Taplus.SecurityDeviceManager"

    .line 178
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;->getInterface()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;

    move-result-object v2

    const-string v4, "CL77181"

    const-string v5, "ocr"

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    const/4 p2, 0x0

    .line 180
    :try_start_17
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_67

    .line 182
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    const-string p1, "data"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 185
    const-string p3, "token"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 186
    const-string p4, "expiredInMillis"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getToken: token = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", expiredMillis = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance p1, Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;

    invoke-direct {p1, p3, v1, v2}, Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;-><init>(Ljava/lang/String;J)V

    move-object p2, p1

    goto :goto_98

    :catch_65
    move-exception p1

    goto :goto_84

    .line 190
    :cond_67
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getToken: error! "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_83} :catch_65

    goto :goto_98

    .line 194
    :goto_84
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getToken: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_98
    return-object p2
.end method

.method private safeCall(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->sExecutors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 243
    :try_start_6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_e} :catch_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_e} :catch_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception v0

    goto :goto_15

    :catch_11
    move-exception p1

    goto :goto_1f

    :catch_13
    move-exception p1

    goto :goto_29

    :goto_15
    const/4 v1, 0x1

    .line 249
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 250
    new-instance p1, Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;

    invoke-direct {p1, v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 247
    :goto_1f
    new-instance v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 245
    :goto_29
    new-instance v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;

    invoke-direct {v0, p1}, Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private signWithCredential(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 152
    const-string p1, "Taplus.SecurityDeviceManager"

    const-string v0, "signWithCredential, nonce is null"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 156
    :cond_f
    :try_start_f
    new-instance v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/contentextension/utils/SecurityDeviceManager$2;-><init>(Lcom/miui/contentextension/utils/SecurityDeviceManager;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->safeCall(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    return-object v1
.end method


# virtual methods
.method public getSecurityDeviceId()Ljava/lang/String;
    .registers 5

    .line 201
    const-string v0, "Taplus.SecurityDeviceManager"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mFid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecurityDeviceId from memory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mFid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mFid:Ljava/lang/String;

    return-object v0

    :catch_24
    move-exception v2

    goto :goto_5b

    .line 205
    :cond_26
    iget-object v2, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mContext:Landroid/content/Context;

    const-string v3, "pref_security_fid"

    invoke-static {v2, v3, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mFid:Ljava/lang/String;

    .line 206
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecurityDeviceId from sp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mFid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mFid:Ljava/lang/String;

    return-object v0

    .line 210
    :cond_4f
    new-instance v2, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;-><init>(Lcom/miui/contentextension/utils/SecurityDeviceManager;)V

    invoke-direct {p0, v2}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->safeCall(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5a} :catch_24

    return-object v2

    .line 227
    :goto_5b
    const-string v3, "failed to get getSecurityDeviceId, error = "

    invoke-static {v0, v3, v2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getToken()Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;
    .registers 8

    .line 103
    invoke-virtual {p0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Taplus.SecurityDeviceManager"

    if-eqz v1, :cond_13

    .line 105
    const-string v0, "getToken: fid is null"

    invoke-static {v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 109
    :cond_13
    invoke-direct {p0, v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getNonce(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 111
    const-string v0, "getToken: nonce is null"

    invoke-static {v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 114
    :cond_1f
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 115
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-direct {p0, v4}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->signWithCredential(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 118
    const-string v0, "getToken: sign is null"

    invoke-static {v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 121
    :cond_37
    invoke-direct {p0, v0, v4, v1, v5}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isSupportTrustZone()Z
    .registers 6

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mIsSupportTrustZone:Ljava/lang/Boolean;

    if-eqz v0, :cond_27

    .line 72
    const-string v0, "Taplus.SecurityDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportTrustZone from memory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mIsSupportTrustZone:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mIsSupportTrustZone:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    goto :goto_8a

    .line 75
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "pref_security_support_tz"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->containsKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 76
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mContext:Landroid/content/Context;

    const-string v2, "pref_security_support_tz"

    invoke-static {v0, v2, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mIsSupportTrustZone:Ljava/lang/Boolean;

    .line 77
    const-string v0, "Taplus.SecurityDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportTrustZone from sp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mIsSupportTrustZone:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager;->mIsSupportTrustZone:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_27 .. :try_end_5e} :catchall_25

    monitor-exit p0

    return v0

    .line 81
    :cond_60
    :try_start_60
    new-instance v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;-><init>(Lcom/miui/contentextension/utils/SecurityDeviceManager;)V

    invoke-direct {p0, v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->safeCall(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6f} :catch_71
    .catchall {:try_start_60 .. :try_end_6f} :catchall_25

    monitor-exit p0

    return v0

    :catch_71
    move-exception v0

    .line 96
    :try_start_72
    const-string v2, "Taplus.SecurityDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to check isSupportTrustZone, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_72 .. :try_end_88} :catchall_25

    .line 97
    monitor-exit p0

    return v1

    :goto_8a
    :try_start_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_25

    throw v0
.end method
