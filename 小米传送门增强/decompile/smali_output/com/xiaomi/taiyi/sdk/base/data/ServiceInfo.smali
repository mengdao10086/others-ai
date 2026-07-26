.class public final Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;

.field public static final LOCAL_SERVICE_ACTION:Ljava/lang/String; = "com.xiaomi.taiyi.LOCAL_ABILITY"

.field public static final LOCAL_SERVICE_ID:Ljava/lang/String; = "localAbility"

.field public static final LOCAL_SERVICE_NAME:Ljava/lang/String; = "com.xiaomi.taiyi.local.ability"


# instance fields
.field private final action:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private pack:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    .line 54
    new-instance p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->pack:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    return-void
.end method

.method public static synthetic copy$default(Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final localService(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 2

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;->localService(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final parse(Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 2

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;->parse(Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 6

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final fill(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;)V
    .registers 4

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    const-string v1, "service_id"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    const-string v1, "service_name"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    const-string v1, "service_action"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v1, "service_package"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPack()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->pack:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final isLocal()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    const-string v1, "localAbility"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    const-string v1, "com.xiaomi.taiyi.local.ability"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final setPack(Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->pack:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceInfo(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", action="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
