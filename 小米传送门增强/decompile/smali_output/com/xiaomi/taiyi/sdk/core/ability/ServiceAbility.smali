.class public final Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility$Companion;


# instance fields
.field public final a:Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

.field public final b:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->Companion:Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V
    .registers 4

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->a:Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->b:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    return-void
.end method


# virtual methods
.method public final getProxy$core_release()Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->a:Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    return-object v0
.end method

.method public final getService()Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->b:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    return-object v0
.end method

.method public final isAlive()Z
    .registers 6

    const-string v0, "ServiceAbility"

    const/4 v1, 0x1

    .line 1
    :try_start_3
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->a:Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    invoke-interface {v2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->isAlive()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_f} :catch_14
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    if-eqz v0, :cond_16

    return v1

    :catchall_12
    move-exception v2

    goto :goto_18

    :catch_14
    move-exception v2

    goto :goto_31

    :cond_16
    const/4 v0, 0x0

    return v0

    .line 6
    :goto_18
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlive Throwable! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 7
    :goto_31
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlive DeadObjectException! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return v1
.end method

.method public final isBinderAlive()Z
    .registers 6

    const-string v0, "ServiceAbility"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->a:Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->a:Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    invoke-interface {v2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->name()Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_14} :catch_18
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    const/4 v0, 0x1

    return v0

    :catchall_16
    move-exception v2

    goto :goto_1b

    :catch_18
    move-exception v2

    goto :goto_34

    :cond_1a
    return v1

    .line 12
    :goto_1b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBinderAlive Throwable! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 13
    :goto_34
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBinderAlive DeadObjectException! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    return v1
.end method

.method public final isInternal()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->b:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->isLocal()Z

    move-result v0

    return v0
.end method
