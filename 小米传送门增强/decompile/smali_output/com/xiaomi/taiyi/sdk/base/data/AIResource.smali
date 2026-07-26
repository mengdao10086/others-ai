.class public final Lcom/xiaomi/taiyi/sdk/base/data/AIResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;


# instance fields
.field private id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field private jsonSource:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    .line 4
    iput-object p4, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->jsonSource:Ljava/lang/String;

    .line 9
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->jsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public static final synthetic access$setJsonObject$p(Lcom/xiaomi/taiyi/sdk/base/data/AIResource;Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->jsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public static synthetic copy$default(Lcom/xiaomi/taiyi/sdk/base/data/AIResource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/base/data/AIResource;
    .registers 11

    .line 0
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-wide p2, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    :cond_c
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p4, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    :cond_13
    move-object p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p5, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    :cond_1a
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-object p6, p7

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIResource;

    move-result-object p0

    return-object p0
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIResource;
    .registers 2

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;->fromJson(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIResource;

    move-result-object p0

    return-object p0
.end method

.method public static final identifier(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;->identifier(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIResource;
    .registers 13

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    iget-wide v5, p1, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    return v2

    :cond_36
    return v0
.end method

.method public final getApkPath()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    const-string v1, "PLUGIN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "apkPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonSource()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->jsonSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibDir()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    const-string v1, "PLUGIN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "libDir"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final identifier()Ljava/lang/String;
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    return-void
.end method

.method public final setJsonSource(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->jsonSource:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->id:Ljava/lang/String;

    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->version:J

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->type:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AIResource(id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", path="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
