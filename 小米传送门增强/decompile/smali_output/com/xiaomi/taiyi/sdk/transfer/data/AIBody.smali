.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;
.super Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$CREATOR;

.field private static final MAX_BYTE_LENGTH:J = 0x80000L

.field private static final MAX_JSON_LENGTH:J = 0x20000L

.field private static final MAX_TEXT_LENGTH:J = 0x40000L

.field private static final TAG:Ljava/lang/String; = "AIBody"


# instance fields
.field private frameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
            ">;"
        }
    .end annotation
.end field

.field private jsonResult:Ljava/lang/String;

.field private jsonSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonSource:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonResult:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;-><init>(Landroid/os/Parcel;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonSource:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonResult:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic collect$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;ZILjava/lang/Object;)Lkotlin/Pair;
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 1
    :cond_5
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->collect(Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFrame$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;Ljava/lang/String;ZILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getFrame(Ljava/lang/String;Z)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic putFrame$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;ZILjava/lang/Object;)I
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->putFrame(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Z)I

    move-result p0

    return p0
.end method

.method private final readJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "frameMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getFormat()Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, v1

    :goto_19
    sget-object v3, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->ONE_BYTE_ARRAY:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    const-string v4, "AIBody"

    const-string v5, "readJson "

    const-string v6, ""

    if-eq v2, v3, :cond_42

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_41

    return-object v6

    :cond_41
    return-object p1

    .line 6
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from frame. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, [B

    if-eqz v0, :cond_67

    move-object v1, p1

    check-cast v1, [B

    :cond_67
    if-eqz v1, :cond_71

    new-instance p1, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_71
    return-object v6
.end method

.method private final writeJson(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "AIBody"

    const-string v2, "writeJson "

    if-nez v0, :cond_b

    goto :goto_17

    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x20000

    cmp-long v0, v3, v5

    if-gez v0, :cond_39

    .line 2
    :goto_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bundle. "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_39
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    const-string v4, "frameMap"

    if-nez v0, :cond_44

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_44
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    return-void

    .line 9
    :cond_4b
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez v0, :cond_53

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_54

    :cond_53
    move-object v3, v0

    :goto_54
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createLongTextFrame(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to frame. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final collect()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v2, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->collect$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized collect(Z)Lkotlin/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->isShareMemoryEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 3
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    goto/16 :goto_9a

    .line 6
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez v2, :cond_29

    const-string v2, "frameMap"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_29
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AIBody"

    invoke-static {v5, v4}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->hasRead()Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->isHighRead()Z

    move-result v4

    if-eqz v4, :cond_66

    goto :goto_7b

    .line 14
    :cond_66
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object v4

    if-eqz v4, :cond_71

    invoke-virtual {v4, v3, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->read(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Z)I

    move-result v4

    goto :goto_73

    :cond_71
    const/16 v4, 0x28a7

    :goto_73
    if-eqz v4, :cond_77

    move v1, v4

    goto :goto_31

    .line 18
    :cond_77
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 19
    :cond_7b
    :goto_7b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 29
    :cond_7f
    const-string p1, "json_source"

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->readJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonSource:Ljava/lang/String;

    .line 30
    const-string p1, "json_result"

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->readJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonResult:Ljava/lang/String;

    .line 31
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_98
    .catchall {:try_start_1a .. :try_end_98} :catchall_17

    monitor-exit p0

    return-object p1

    :goto_9a
    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_17

    throw p1
.end method

.method public final declared-synchronized distribute()Lkotlin/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->isShareMemoryEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 2
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    goto/16 :goto_98

    .line 5
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonSource:Ljava/lang/String;

    const-string v3, "json_source"

    invoke-direct {p0, v3, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->writeJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonResult:Ljava/lang/String;

    const-string v3, "json_result"

    invoke-direct {p0, v3, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->writeJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez v2, :cond_37

    const-string v2, "frameMap"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_37
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "distribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AIBody"

    invoke-static {v5, v4}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->hasWrite()Z

    move-result v4

    if-nez v4, :cond_89

    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->isHighWrite()Z

    move-result v4

    if-eqz v4, :cond_74

    goto :goto_89

    .line 15
    :cond_74
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object v4

    if-eqz v4, :cond_7f

    invoke-virtual {v4, v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->write(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I

    move-result v4

    goto :goto_81

    :cond_7f
    const/16 v4, 0x28a7

    :goto_81
    if-eqz v4, :cond_85

    move v1, v4

    goto :goto_3f

    .line 19
    :cond_85
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 20
    :cond_89
    :goto_89
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 30
    :cond_8d
    new-instance v2, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_96
    .catchall {:try_start_1a .. :try_end_96} :catchall_17

    monitor-exit p0

    return-object v2

    :goto_98
    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_17

    throw v0
.end method

.method public final free()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez v1, :cond_f

    const-string v1, "frameMap"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_f
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->free(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I

    .line 73
    :cond_34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_38
    return-object v0
.end method

.method public final freeFrame(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)V
    .registers 3

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->free(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I

    :cond_e
    return-void
.end method

.method public final getCallback()Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;
    .registers 3

    .line 1
    const-string v0, "ai_callback"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getBinder(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v1

    .line 2
    :cond_a
    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;

    move-result-object v0

    return-object v0
.end method

.method public final getData(Ljava/lang/String;)[B
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getByteArray(Ljava/lang/String;[B)[B

    move-result-object v1

    if-nez v1, :cond_22

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v1, v2, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getFrame$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;Ljava/lang/String;ZILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v0

    :goto_1a
    instance-of v1, p1, [B

    if-eqz v1, :cond_21

    check-cast p1, [B

    return-object p1

    :cond_21
    return-object v0

    :cond_22
    return-object v1
.end method

.method public final getErrorCode()I
    .registers 3

    .line 1
    const-string v0, "error_code"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "error_msg"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final declared-synchronized getFrame(Ljava/lang/String;Z)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_1e

    .line 1
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez p2, :cond_15

    const-string p2, "frameMap"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_16

    :catchall_13
    move-exception p1

    goto :goto_71

    :cond_15
    move-object v0, p2

    :goto_16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_13

    monitor-exit p0

    return-object p1

    .line 3
    :cond_1e
    :try_start_1e
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez p2, :cond_28

    const-string p2, "frameMap"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_28
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_13

    if-nez p2, :cond_32

    monitor-exit p0

    return-object v0

    .line 4
    :cond_32
    :try_start_32
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->hasRead()Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_6f

    .line 6
    :cond_39
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getReadAsBuffer()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFrame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " readAsBuffer, you should read by openFrame!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIBody"

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_32 .. :try_end_5a} :catchall_13

    monitor-exit p0

    return-object p2

    .line 11
    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->isShareMemoryEnable()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 12
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object p1

    if-eqz p1, :cond_6f

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v2, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->read$default(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;ZILjava/lang/Object;)I
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_13

    monitor-exit p0

    return-object p2

    :cond_6f
    :goto_6f
    monitor-exit p0

    return-object p2

    :goto_71
    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_13

    throw p1
.end method

.method public final getJsonResult()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonSource()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;
    .registers 4

    .line 1
    const-class v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    const/4 v1, 0x0

    const-string v2, "share_memory_pool"

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getParcelable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    return-object v0
.end method

.method public final getSpecCode()I
    .registers 3

    .line 1
    const-string v0, "spec_error_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSpecInfo()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "spec_info"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getText(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v1, v2, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getFrame$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;Ljava/lang/String;ZILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v0

    :goto_1a
    instance-of v1, p1, [B

    if-eqz v1, :cond_21

    check-cast p1, [B

    goto :goto_22

    :cond_21
    move-object p1, v0

    :goto_22
    if-eqz p1, :cond_2b

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2b
    return-object v0

    :cond_2c
    return-object v1
.end method

.method public final isShareMemoryEnable()Z
    .registers 3

    .line 1
    const-string v0, "share_memory_enable"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final mapFrame(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)Ljava/nio/ByteBuffer;
    .registers 7

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->isShareMemoryEnable()Z

    move-result v0

    const-string v1, "AIBody"

    const-string v2, "openBuffer for "

    if-eqz v0, :cond_46

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_17
    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->map(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with sm. code: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 7
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with array."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->openArray$base_release()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final putCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$putCallback$1;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$putCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string p1, "ai_callback"

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final putData(Ljava/lang/String;[B)V
    .registers 10

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_17

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putByteArray(Ljava/lang/String;[B)V

    return-void

    .line 4
    :cond_17
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createBigDataFrame(Ljava/lang/String;[B)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->putFrame$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;ZILjava/lang/Object;)I

    return-void
.end method

.method public final putFrame(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I
    .registers 10

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->putFrame$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;ZILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized putFrame(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Z)I
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const-string v0, "frameMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_19

    :catchall_17
    move-exception p1

    goto :goto_7d

    :cond_19
    :goto_19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    if-eqz v0, :cond_2b

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->hasWrite()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_17

    if-eqz v0, :cond_2b

    monitor-exit p0

    const/16 p1, 0x28ad

    return p1

    .line 6
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez v0, :cond_35

    const-string v0, "frameMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_36

    :cond_35
    move-object v1, v0

    :goto_36
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getWriteInBuffer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putFrame "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " writeInBuffer, you should write by openFrame!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AIBody"

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_2b .. :try_end_5b} :catchall_17

    monitor-exit p0

    return v1

    :cond_5d
    if-eqz p3, :cond_7b

    .line 12
    :try_start_5f
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->hasWrite()Z

    move-result p1

    if-nez p1, :cond_7b

    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->isShareMemoryEnable()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object p1

    if-eqz p1, :cond_77

    invoke-virtual {p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->write(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I

    move-result p1
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_17

    monitor-exit p0

    return p1

    :cond_77
    monitor-exit p0

    const/16 p1, 0x28a7

    return p1

    :cond_7b
    monitor-exit p0

    return v1

    :goto_7d
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_17

    throw p1
.end method

.method public final putText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x40000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1a
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createLongTextFrame(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->putFrame$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;ZILjava/lang/Object;)I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->readFromParcel(Landroid/os/Parcel;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    .line 3
    const-class v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_20

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    :cond_20
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "keySet(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_48

    .line 382
    const-class v2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    goto :goto_4e

    .line 384
    :cond_48
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    :goto_4e
    if-eqz v2, :cond_2d

    .line 387
    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez v3, :cond_5a

    const-string v3, "frameMap"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_5a
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_5e
    return-void
.end method

.method public final setErrorCode(I)V
    .registers 3

    .line 1
    const-string v0, "error_code"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setErrorMsg(Ljava/lang/String;)V
    .registers 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "error_msg"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setJsonResult(Ljava/lang/String;)V
    .registers 3

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonResult:Ljava/lang/String;

    return-void
.end method

.method public final setJsonSource(Ljava/lang/String;)V
    .registers 3

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->jsonSource:Ljava/lang/String;

    return-void
.end method

.method public final setMemoryPool(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;)V
    .registers 3

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "share_memory_pool"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final setShareMemoryState(Z)V
    .registers 3

    .line 1
    const-string v0, "share_memory_enable"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setSpecCode(I)V
    .registers 3

    .line 1
    const-string v0, "spec_error_code"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setSpecInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "spec_info"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final unmapFrame(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)V
    .registers 4

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->isShareMemoryEnable()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getMemoryPool()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_30

    .line 3
    :cond_12
    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->unmap(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unmapBuffer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with sm."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIBody"

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->frameMap:Ljava/util/HashMap;

    if-nez v0, :cond_17

    const-string v0, "frameMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 385
    :cond_17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1f

    .line 387
    :cond_3b
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
