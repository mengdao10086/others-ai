.class public final Lcom/xiaomi/taiyi/sdk/core/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/xiaomi/taiyi/sdk/core/l;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlin/Lazy;

.field public final c:Ljava/util/HashMap;

.field public final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/l;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/core/l;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/core/m;->e:Lcom/xiaomi/taiyi/sdk/core/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/m;->a:Landroid/content/Context;

    .line 7
    new-instance p1, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/m;->b:Lkotlin/Lazy;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/m;->c:Ljava/util/HashMap;

    .line 15
    new-instance p1, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda2;-><init>(Lcom/xiaomi/taiyi/sdk/core/m;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/m;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static final a()Landroid/os/Handler;
    .registers 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AITrack"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method public static final a(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/core/m;Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V
    .registers 11

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/xiaomi/taiyi/sdk/core/m;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/core/track/a;

    if-nez v1, :cond_18

    new-instance v1, Lcom/xiaomi/taiyi/sdk/core/track/a;

    invoke-direct {v1, v0, p2}, Lcom/xiaomi/taiyi/sdk/core/track/a;-><init>(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;)V

    iget-object p2, p1, Lcom/xiaomi/taiyi/sdk/core/m;->c:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_18
    const-string p2, "request"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "response"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p2, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->a:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->getType()I

    move-result p2

    if-eqz p2, :cond_4c

    iget p2, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->d:I

    iget-object v0, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->a:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->getNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_4c

    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->bootMills()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->b:J

    cmp-long p2, v2, v4

    if-ltz p2, :cond_44

    goto :goto_4c

    .line 46
    :cond_44
    iget p0, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->d:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->d:I

    const/4 p0, 0x0

    goto :goto_62

    .line 47
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->bootMills()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->c:J

    .line 48
    iget p2, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->d:I

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    .line 49
    iput v0, v1, Lcom/xiaomi/taiyi/sdk/core/track/a;->d:I

    .line 50
    sget-object v0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->Companion:Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;

    invoke-virtual {v0, p0, p3}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->setSample(I)V

    :goto_62
    if-nez p0, :cond_65

    return-void

    .line 51
    :cond_65
    invoke-virtual {p4}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->bundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p3, "app_track"

    invoke-virtual {p2, p3, p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p1, p4}, Lcom/xiaomi/taiyi/sdk/core/m;->a(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    return-void
.end method

.method public static final a(Lcom/xiaomi/taiyi/sdk/core/m;)Z
    .registers 3

    .line 12
    iget-object p0, p0, Lcom/xiaomi/taiyi/sdk/core/m;->a:Landroid/content/Context;

    const-string v0, "com.xiaomi.aiservice"

    const-string v1, "ai_track_enable"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/AIUtils;->getAppMetadata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/taiyi/sdk/core/AIAbility;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)V
    .registers 11

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/m;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_25

    .line 5
    const-string p1, "TrackManager"

    const-string p2, "track not support!"

    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_25
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->getSettings()Lcom/xiaomi/taiyi/sdk/core/AISettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/AISettings;->getTrackSettings()Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->createRequest()Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object v6

    .line 10
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/m;->b:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/core/m;Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V
    .registers 8

    const-string v0, "com.xiaomi.aiservice.authority.data"

    const-string v1, "TrackManager"

    const/4 v2, 0x0

    .line 53
    :try_start_5
    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/core/m;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 54
    new-instance v4, Lkotlin/Pair;

    if-nez v3, :cond_16

    const/16 v5, 0x27da

    goto :goto_17

    :cond_16
    const/4 v5, 0x0

    :goto_17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_1e} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_1e} :catch_21
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    goto :goto_90

    :catchall_1f
    move-exception v3

    goto :goto_25

    :catch_21
    move-exception v3

    goto :goto_49

    :catch_23
    move-exception v3

    goto :goto_6d

    .line 62
    :goto_25
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "track Throwable. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v4, Lkotlin/Pair;

    const/16 v3, 0x27db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_90

    .line 64
    :goto_49
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "track RuntimeException. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v4, Lkotlin/Pair;

    const/16 v3, 0x27d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_90

    .line 66
    :goto_6d
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "track DeadObjectException. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v4, Lkotlin/Pair;

    const/16 v3, 0x27d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    :goto_90
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderClient;

    if-nez v2, :cond_99

    goto :goto_e5

    .line 84
    :cond_99
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v4, "request"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    :try_start_a3
    const-string p1, "app_track"

    const-string v4, ""

    invoke-virtual {v2, v0, p1, v4, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_aa
    .catch Landroid/os/DeadObjectException; {:try_start_a3 .. :try_end_aa} :catch_ad
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_ab

    goto :goto_e2

    :catchall_ab
    move-exception p1

    goto :goto_af

    :catch_ad
    move-exception p1

    goto :goto_ca

    .line 94
    :goto_af
    :try_start_af
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track Error. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    :catchall_c8
    move-exception p1

    goto :goto_e6

    .line 95
    :goto_ca
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track Dead. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e2
    .catchall {:try_start_af .. :try_end_e2} :catchall_c8

    .line 93
    :goto_e2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :goto_e5
    return-void

    .line 99
    :goto_e6
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    throw p1
.end method
