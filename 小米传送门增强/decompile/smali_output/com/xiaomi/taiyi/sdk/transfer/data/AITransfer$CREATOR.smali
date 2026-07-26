.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;",
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
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;->newArray(I)[Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;

    move-result-object p1

    return-object p1
.end method
