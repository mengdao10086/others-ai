.class public final Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;
.super Ljava/lang/Object;
.source "CommerceRulesModel.kt"


# instance fields
.field private final code:I

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->result:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->code:I

    .line 6
    iput-object p3, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->description:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->data:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->result:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->code:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->description:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->data:Ljava/util/List;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->code:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
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
    iget-object v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->data:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;"
        }
    .end annotation

    .line 0
    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;

    iget-object v1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->result:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->result:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->code:I

    iget v3, p1, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->code:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->data:Ljava/util/List;

    iget-object p1, p1, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->data:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getCode()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->code:I

    return v0
.end method

.method public final getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->data:Ljava/util/List;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->result:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->data:Ljava/util/List;

    if-nez v1, :cond_20

    const/4 v1, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_24
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->result:Ljava/lang/String;

    iget v1, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->code:I

    iget-object v2, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->data:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommerceRulesModel(result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", code="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
