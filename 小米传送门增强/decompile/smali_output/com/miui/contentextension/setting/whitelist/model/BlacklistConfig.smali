.class public final Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;
.super Ljava/lang/Object;
.source "BlacklistPageConfigResult.kt"


# instance fields
.field private final activityName:Ljava/lang/String;

.field private final validArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlackArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlackArea;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validArea"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->activityName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->validArea:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->activityName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->validArea:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->copy(Ljava/lang/String;Ljava/util/List;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlackArea;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->validArea:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlackArea;",
            ">;)",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;"
        }
    .end annotation

    .line 0
    const-string v0, "activityName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validArea"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;

    invoke-direct {v0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->activityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->activityName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->validArea:Ljava/util/List;

    iget-object p1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->validArea:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getActivityName()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public final getValidArea()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlackArea;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->validArea:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->activityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->validArea:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->activityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistConfig;->validArea:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlacklistConfig(activityName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", validArea="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
