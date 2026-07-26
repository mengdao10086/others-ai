.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
.super Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;-><init>(Landroid/content/Context;)V

    const-string p1, ":"

    if-eqz p3, :cond_3c

    .line 7
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3c

    .line 10
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setAbilityApi(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->getMY_PID()I

    move-result v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    .line 12
    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->getMY_PID()I

    move-result p3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :goto_5c
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->setRequestId(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 5
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static final create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final createAbilityRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 3

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createAbilityRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final createDownloadRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createDownloadRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final createDownloadRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 3

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createDownloadRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final createProviderRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createProviderRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final createProviderRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 3

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createProviderRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final createServiceRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createServiceRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final createServiceRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 3

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createServiceRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method private final setRequestId(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setRequestId$base_release(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getApi()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->getAbilityApi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUidPid()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->getUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->getPid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIRequest{\nid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \nheaders = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", \nbody = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
