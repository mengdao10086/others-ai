.class public final Lcom/xiaomi/taiyi/sdk/common/DataFormat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/common/DataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/common/DataFormat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/xiaomi/taiyi/sdk/common/DataFormat;
    .registers 5

    .line 1
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->getValue()I

    move-result v2

    if-ne v2, p1, :cond_8

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    check-cast v1, Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    if-nez v1, :cond_24

    sget-object p1, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->UNKNOWN:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    return-object p1

    :cond_24
    return-object v1
.end method
