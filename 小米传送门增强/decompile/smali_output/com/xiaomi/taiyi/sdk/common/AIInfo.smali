.class public final Lcom/xiaomi/taiyi/sdk/common/AIInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final config:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

.field private final service:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;


# direct methods
.method public constructor <init>(Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V
    .registers 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/AIInfo;->config:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/common/AIInfo;->service:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    return-void
.end method


# virtual methods
.method public final getService()Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/AIInfo;->service:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    return-object v0
.end method
