.class public final Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;
.super Ljava/lang/Object;
.source "BlacklistModel.kt"


# instance fields
.field private final data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

.field private final msg:Ljava/lang/String;

.field private final status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;)V
    .registers 5

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->status:I

    .line 5
    iput-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->msg:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;ILjava/lang/String;Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;ILjava/lang/Object;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->status:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->msg:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->copy(ILjava/lang/String;Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->status:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;)Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;
    .registers 5

    .line 0
    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;-><init>(ILjava/lang/String;Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;

    iget v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->status:I

    iget v3, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->status:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->msg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    iget-object p1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getData()Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->status:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 0
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->status:I

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->data:Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BlacklistModel(status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
