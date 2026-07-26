.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;",
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
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final create(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;-><init>(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;-><init>(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;-><init>(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->setCode(I)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->newArray(I)[Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    return-object p1
.end method
