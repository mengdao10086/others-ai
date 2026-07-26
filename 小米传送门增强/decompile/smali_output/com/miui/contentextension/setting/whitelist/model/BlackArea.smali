.class public final Lcom/miui/contentextension/setting/whitelist/model/BlackArea;
.super Ljava/lang/Object;
.source "BlacklistPageConfigResult.kt"


# instance fields
.field private final validAreaBottom:D

.field private final validAreaTop:D


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 0
    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;-><init>(DDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaTop:D

    .line 22
    iput-wide p3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaBottom:D

    return-void
.end method

.method public synthetic constructor <init>(DDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    const-wide/16 p1, 0x0

    :cond_6
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_c

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    .line 21
    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;-><init>(DD)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/contentextension/setting/whitelist/model/BlackArea;DDILjava/lang/Object;)Lcom/miui/contentextension/setting/whitelist/model/BlackArea;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-wide p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaTop:D

    :cond_6
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_c

    iget-wide p3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaBottom:D

    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->copy(DD)Lcom/miui/contentextension/setting/whitelist/model/BlackArea;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaTop:D

    return-wide v0
.end method

.method public final component2()D
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaBottom:D

    return-wide v0
.end method

.method public final copy(DD)Lcom/miui/contentextension/setting/whitelist/model/BlackArea;
    .registers 6

    .line 0
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;-><init>(DD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;

    iget-wide v3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaTop:D

    iget-wide v5, p1, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaTop:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaBottom:D

    iget-wide v5, p1, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaBottom:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getValidAreaBottom()D
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaBottom:D

    return-wide v0
.end method

.method public final getValidAreaTop()D
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaTop:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaTop:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaBottom:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 0
    iget-wide v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaTop:D

    iget-wide v2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlackArea;->validAreaBottom:D

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BlackArea(validAreaTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", validAreaBottom="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
