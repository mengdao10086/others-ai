.class public final Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;
.super Ljava/lang/Object;
.source "BlacklistPageConfigResult.kt"


# instance fields
.field private final configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final configRange:I

.field private final packageName:Ljava/lang/String;

.field private final trigger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->packageName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->trigger:Ljava/util/List;

    .line 11
    iput p3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->type:I

    .line 12
    iput p4, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configRange:I

    .line 13
    iput-object p5, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configList:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;Ljava/lang/String;Ljava/util/List;IILjava/util/List;ILjava/lang/Object;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;
    .registers 11

    .line 0
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->packageName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->trigger:Ljava/util/List;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->type:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configRange:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configList:Ljava/util/List;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->copy(Ljava/lang/String;Ljava/util/List;IILjava/util/List;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->trigger:Ljava/util/List;

    return-object v0
.end method

.method public final component3()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->type:I

    return v0
.end method

.method public final component4()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configRange:I

    return v0
.end method

.method public final component5()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;IILjava/util/List;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;",
            ">;)",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;"
        }
    .end annotation

    .line 0
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;-><init>(Ljava/lang/String;Ljava/util/List;IILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->trigger:Ljava/util/List;

    iget-object v3, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->trigger:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->type:I

    iget v3, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->type:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configRange:I

    iget v3, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configRange:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configList:Ljava/util/List;

    iget-object p1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configList:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method public final getConfigList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configList:Ljava/util/List;

    return-object v0
.end method

.method public final getConfigRange()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configRange:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrigger()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->trigger:Ljava/util/List;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .line 11
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->trigger:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configRange:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configList:Ljava/util/List;

    if-nez v1, :cond_29

    const/4 v1, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->trigger:Ljava/util/List;

    iget v2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->type:I

    iget v3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configRange:I

    iget-object v4, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;->configList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlacklistPageModel(packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", trigger="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", configRange="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", configList="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
