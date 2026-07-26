.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
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
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBigDataFrame(Ljava/lang/String;[B)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 11

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    array-length v4, p2

    sget-object v6, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->ONE_BYTE_ARRAY:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    array-length v7, p2

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)V

    return-object v0
.end method

.method public final createFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 13

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)V

    return-object v0
.end method

.method public final createFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 15

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p1

    return-object p1
.end method

.method public final createHighReadFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 13

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->setReadAsBuffer$base_release(Z)V

    return-object v0
.end method

.method public final createHighReadFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 15

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->setReadAsBuffer$base_release(Z)V

    return-object v0
.end method

.method public final createHighWriteFrame(Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 12

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->setWriteInBuffer$base_release(Z)V

    return-object v0
.end method

.method public final createHighWriteFrame(Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 14

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->setWriteInBuffer$base_release(Z)V

    return-object v0
.end method

.method public final createLongTextFrame(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 11

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string p2, "getBytes(...)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    array-length v4, v2

    sget-object v6, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->ONE_BYTE_ARRAY:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    array-length v7, v2

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)V

    return-object p2
.end method

.method public newArray(I)[Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->newArray(I)[Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p1

    return-object p1
.end method
