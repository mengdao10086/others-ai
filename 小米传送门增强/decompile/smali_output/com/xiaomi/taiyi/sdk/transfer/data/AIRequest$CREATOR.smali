.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;",
        ">;"
    }
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
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createDownloadRequest$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createDownloadRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createProviderRequest$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createProviderRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createServiceRequest$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createServiceRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheme"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createAbilityRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ability"

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createDownloadRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createDownloadRequest$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createDownloadRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "download"

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;-><init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createProviderRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createProviderRequest$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createProviderRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "provider"

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createServiceRequest(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createServiceRequest$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createServiceRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "service"

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->newArray(I)[Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    return-object p1
.end method
