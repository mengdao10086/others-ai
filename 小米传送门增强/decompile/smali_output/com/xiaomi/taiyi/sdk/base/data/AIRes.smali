.class public Lcom/xiaomi/taiyi/sdk/base/data/AIRes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private version:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eqz p1, :cond_2b

    .line 1
    instance-of v0, p1, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;

    if-eqz v0, :cond_2b

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->id:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;

    iget-object v2, v1, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->id:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3
    iget-wide v2, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->version:J

    iget-wide v0, v1, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->version:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2b

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->version:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->id:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->version:J

    return-void
.end method
