.class public final Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;
.super Ljava/lang/Object;
.source "BlacklistModel.kt"


# instance fields
.field private final blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isNew:Z

.field private final lastTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->isNew:Z

    iput-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->lastTimeStamp:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->blacklist:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;ZLjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-boolean p1, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->isNew:Z

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->lastTimeStamp:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->blacklist:Ljava/util/List;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->copy(ZLjava/lang/String;Ljava/util/List;)Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->isNew:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->lastTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
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
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->blacklist:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/util/List;)Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    iget-boolean v1, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->isNew:Z

    iget-boolean v3, p1, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->isNew:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->lastTimeStamp:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->lastTimeStamp:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->blacklist:Ljava/util/List;

    iget-object p1, p1, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->blacklist:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getBlacklist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->blacklist:Ljava/util/List;

    return-object v0
.end method

.method public final getLastTimeStamp()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->lastTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->isNew:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->lastTimeStamp:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->blacklist:Ljava/util/List;

    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    return v0
.end method

.method public final isNew()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->isNew:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 0
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->isNew:Z

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->lastTimeStamp:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->blacklist:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WhitelistData(isNew="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", lastTimeStamp="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", blacklist="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
