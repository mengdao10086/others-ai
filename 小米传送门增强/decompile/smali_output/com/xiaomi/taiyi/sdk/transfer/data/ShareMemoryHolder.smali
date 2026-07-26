.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$CREATOR;,
        Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$WhenMappings;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$CREATOR;

.field public static final STATE_CLOSED:I = 0x2

.field public static final STATE_OCCUPY:I = 0x1

.field public static final STATE_VACANT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShareMemoryHolder"


# instance fields
.field private id:Ljava/lang/String;

.field private innerData:Ljava/nio/ByteBuffer;

.field private shareMem:Landroid/os/SharedMemory;

.field private size:I

.field private state:I


# direct methods
.method public static synthetic $r8$lambda$-qrbcQMo_1Zh7erKNScBSVniv0Q(IILjava/nio/ByteBuffer;)[[J
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readLong2DArray$lambda$20(IILjava/nio/ByteBuffer;)[[J

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$13da6lT6Spb8oDCXOdaEZ5QZTUY(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeByte2DArray$lambda$13(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$69ycLZo3j4GGJyw5syKfC9Q1UnY(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeByteArray$lambda$1(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8SJkx3-BpKnF9GFjCnraNLKwVdI(ILjava/nio/ByteBuffer;)[I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readIntArray$lambda$6(ILjava/nio/ByteBuffer;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Dea8G-vb7ZP17Bo5qPI2WG7G3IE(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeIntArray$lambda$5(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F4eCLQdd8k6znFbjwB0iDxOWKJI(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeInt2DArray$lambda$17(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FS7-LLYkHzMFG_B-tEANmLlq31U(IILjava/nio/ByteBuffer;)[[S
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readShort2DArray$lambda$16(IILjava/nio/ByteBuffer;)[[S

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HszGZKLR1F-pTwPwTDTWoEXJIwM(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeShort2DArray$lambda$15(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IumNCN-pQ0ZpDCDMVR5I9ZpTzEE(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeDoubleArray$lambda$11(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MQfcOYQPK7SV_GEg71ePZSCmCaY(ILjava/nio/ByteBuffer;)[F
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readFloatArray$lambda$10(ILjava/nio/ByteBuffer;)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PxZA1Q5z0LDzQ1BO6A35CmD_uPs(ILjava/nio/ByteBuffer;)[D
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readDoubleArray$lambda$12(ILjava/nio/ByteBuffer;)[D

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UfwOtg0nWAwL33qA1BRaBpnudk0(IILjava/nio/ByteBuffer;)[[B
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readByte2DArray$lambda$14(IILjava/nio/ByteBuffer;)[[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ye3fXH59EvVqAfX_6R2_zhUtDb0(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeFloat2DArray$lambda$21(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hT574wBB7Kua_B2fIBq8GHIXuHk(IILjava/nio/ByteBuffer;)[[D
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readDouble2DArray$lambda$24(IILjava/nio/ByteBuffer;)[[D

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hnQUpGhKJgGAF5_1JiDdO1WuHr0(ILjava/nio/ByteBuffer;)[S
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readShortArray$lambda$4(ILjava/nio/ByteBuffer;)[S

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hy1tISuzhVi4OFFcMLXxwetPGH4(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeLongArray$lambda$7(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kW1zxC6lOYyFGfXm3l7zQSj5__g(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeFloatArray$lambda$9(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l1Dec5O_diGKLZ7s0WsAckNWlO0(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeLong2DArray$lambda$19(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pXyv2tXmIpNB2ZcHdsEQRWaaHH4(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeDouble2DArray$lambda$23(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qTyPxvVH0S3afVnTvDMsoNUpw88(IILjava/nio/ByteBuffer;)[[F
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readFloat2DArray$lambda$22(IILjava/nio/ByteBuffer;)[[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tPtT6ZqOMuiagd8zfWuY1rQ3NOE(IILjava/nio/ByteBuffer;)[[I
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readInt2DArray$lambda$18(IILjava/nio/ByteBuffer;)[[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tWRs5PRoru3DrTVivYZMqCYfP_Y(ILjava/nio/ByteBuffer;)[J
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readLongArray$lambda$8(ILjava/nio/ByteBuffer;)[J

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tjJb5drF-lSAc1N0cpXfkE9A1YA(ILjava/nio/ByteBuffer;)[B
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readByteArray$lambda$2(ILjava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zMCnrlN-cjYe2WRUfNas9qwT8uo(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeShortArray$lambda$3(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$CREATOR;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 12
    iput v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    .line 23
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->size:I

    .line 24
    invoke-static {v0, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    :cond_22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private final handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "+TT;>;)",
            "Lkotlin/Pair<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "ShareMemoryHolder"

    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->map()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v3, 0x0

    if-nez v2, :cond_23

    .line 2
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 4
    :cond_23
    :try_start_23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    new-instance v1, Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/nio/BufferUnderflowException; {:try_start_23 .. :try_end_34} :catch_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_34} :catch_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_34} :catch_35

    return-object v1

    :catch_35
    move-exception p1

    goto :goto_3b

    :catch_37
    move-exception p1

    goto :goto_5f

    :catch_39
    move-exception p1

    goto :goto_83

    .line 14
    :goto_3b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRead Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28b6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 16
    :goto_5f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRead IndexOutOfBoundsException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28b5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 18
    :goto_83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRead BufferUnderflowException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28b4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final handleWrite(Lkotlin/jvm/functions/Function1;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "ShareMemoryHolder"

    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->map()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v2, :cond_19

    return v1

    .line 4
    :cond_19
    :try_start_19
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1f} :catch_30
    .catch Ljava/nio/BufferOverflowException; {:try_start_19 .. :try_end_1f} :catch_2e
    .catch Ljava/nio/ReadOnlyBufferException; {:try_start_19 .. :try_end_1f} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_2a
    .catchall {:try_start_19 .. :try_end_1f} :catchall_27

    .line 19
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    const/4 p1, 0x0

    return p1

    :catchall_27
    move-exception p1

    goto/16 :goto_aa

    :catch_2a
    move-exception p1

    goto :goto_32

    :catch_2c
    move-exception p1

    goto :goto_50

    :catch_2e
    move-exception p1

    goto :goto_6e

    :catch_30
    move-exception p1

    goto :goto_8c

    .line 22
    :goto_32
    :try_start_32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWrite: Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_27

    .line 25
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/16 p1, 0x28b1

    return p1

    .line 26
    :goto_50
    :try_start_50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWrite: ReadOnlyBufferException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_27

    .line 32
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/16 p1, 0x28b3

    return p1

    .line 33
    :goto_6e
    :try_start_6e
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWrite: BufferOverflowException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_27

    .line 42
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/16 p1, 0x28b2

    return p1

    .line 43
    :goto_8c
    :try_start_8c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWrite: ClassCastException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_8c .. :try_end_a4} :catchall_27

    .line 55
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/16 p1, 0x28b0

    return p1

    .line 56
    :goto_aa
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    throw p1
.end method

.method public static synthetic read$default(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;IZILjava/lang/Object;)Lkotlin/Pair;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 2
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->read(IZ)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic read$default(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;ZILjava/lang/Object;)Lkotlin/Pair;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->read(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final readByte2DArray(II)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "[[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda13;

    invoke-direct {v0, p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda13;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readByte2DArray$lambda$14(IILjava/nio/ByteBuffer;)[[B
    .registers 7

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array v0, p0, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, p0, :cond_12

    new-array v3, p1, [B

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    :goto_12
    if-ge v1, p0, :cond_1c

    .line 3
    aget-object p1, v0, v1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    return-object v0
.end method

.method private final readByteArray(I)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readByteArray$lambda$2(ILjava/nio/ByteBuffer;)[B
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p0, p0, [B

    .line 2
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private final readDouble2DArray(II)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "[[D",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda18;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readDouble2DArray$lambda$24(IILjava/nio/ByteBuffer;)[[D
    .registers 7

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array v0, p0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, p0, :cond_12

    new-array v3, p1, [D

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2
    :cond_12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p1

    :goto_16
    if-ge v1, p0, :cond_20

    .line 4
    aget-object p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_20
    return-object v0
.end method

.method private final readDoubleArray(I)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "[D",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readDoubleArray$lambda$12(ILjava/nio/ByteBuffer;)[D
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p0, p0, [D

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    return-object p0
.end method

.method private final readFloat2DArray(II)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "[[F",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda17;

    invoke-direct {v0, p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda17;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readFloat2DArray$lambda$22(IILjava/nio/ByteBuffer;)[[F
    .registers 7

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array v0, p0, [[F

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, p0, :cond_12

    new-array v3, p1, [F

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2
    :cond_12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    :goto_16
    if-ge v1, p0, :cond_20

    .line 4
    aget-object p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_20
    return-object v0
.end method

.method private final readFloatArray(I)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "[F",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readFloatArray$lambda$10(ILjava/nio/ByteBuffer;)[F
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p0, p0, [F

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method private final readInt2DArray(II)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "[[I",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda9;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readInt2DArray$lambda$18(IILjava/nio/ByteBuffer;)[[I
    .registers 7

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array v0, p0, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, p0, :cond_12

    new-array v3, p1, [I

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2
    :cond_12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    :goto_16
    if-ge v1, p0, :cond_20

    .line 4
    aget-object p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_20
    return-object v0
.end method

.method private final readIntArray(I)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "[I",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda16;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readIntArray$lambda$6(ILjava/nio/ByteBuffer;)[I
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p0, p0, [I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object p0
.end method

.method private final readLong2DArray(II)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "[[J",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda15;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readLong2DArray$lambda$20(IILjava/nio/ByteBuffer;)[[J
    .registers 7

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array v0, p0, [[J

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, p0, :cond_12

    new-array v3, p1, [J

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2
    :cond_12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    :goto_16
    if-ge v1, p0, :cond_20

    .line 4
    aget-object p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_20
    return-object v0
.end method

.method private final readLongArray(I)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "[J",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readLongArray$lambda$8(ILjava/nio/ByteBuffer;)[J
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p0, p0, [J

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object p0
.end method

.method private final readShort2DArray(II)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "[[S",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readShort2DArray$lambda$16(IILjava/nio/ByteBuffer;)[[S
    .registers 7

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array v0, p0, [[S

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, p0, :cond_12

    new-array v3, p1, [S

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2
    :cond_12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    :goto_16
    if-ge v1, p0, :cond_20

    .line 4
    aget-object p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_20
    return-object v0
.end method

.method private final readShortArray(I)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "[S",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleRead(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final readShortArray$lambda$4(ILjava/nio/ByteBuffer;)[S
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p0, p0, [S

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method private final writeByte2DArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeByte2DArray$lambda$13(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.ByteArray>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [[B

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    .line 3
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 5
    :cond_18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeByteArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeByteArray$lambda$1(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeDouble2DArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeDouble2DArray$lambda$23(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p1

    .line 2
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.DoubleArray>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [[D

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    .line 4
    invoke-virtual {p1, v2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 6
    :cond_1c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeDoubleArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeDoubleArray$lambda$11(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.DoubleArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [D

    invoke-virtual {p1, p0}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeFloat2DArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeFloat2DArray$lambda$21(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 2
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.FloatArray>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [[F

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    .line 4
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 6
    :cond_1c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeFloatArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeFloatArray$lambda$9(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [F

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeInt2DArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeInt2DArray$lambda$17(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    .line 2
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.IntArray>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [[I

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    .line 4
    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 6
    :cond_1c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeIntArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeIntArray$lambda$5(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [I

    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeLong2DArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeLong2DArray$lambda$19(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    .line 2
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.LongArray>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [[J

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    .line 4
    invoke-virtual {p1, v2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 6
    :cond_1c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeLongArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeLongArray$lambda$7(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.LongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [J

    invoke-virtual {p1, p0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeShort2DArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeShort2DArray$lambda$15(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 2
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.ShortArray>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [[S

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    .line 4
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 6
    :cond_1c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeShortArray(Ljava/lang/Object;)I
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->handleWrite(Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private static final writeShortArray$lambda$3(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.ShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [S

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    .line 2
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/os/SharedMemory;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_f
    .catchall {:try_start_2 .. :try_end_c} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v2

    goto :goto_43

    :catch_f
    move-exception v2

    goto :goto_18

    .line 6
    :cond_11
    :goto_11
    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    .line 7
    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->innerData:Ljava/nio/ByteBuffer;

    .line 8
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    return-void

    .line 9
    :goto_18
    :try_start_18
    const-string v3, "ShareMemoryHolder"

    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " err. "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_d

    .line 11
    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    .line 12
    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->innerData:Ljava/nio/ByteBuffer;

    .line 13
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    return-void

    .line 14
    :goto_43
    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    .line 15
    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->innerData:Ljava/nio/ByteBuffer;

    .line 16
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    throw v2
.end method

.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final free()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    return-void
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareMem()Landroid/os/SharedMemory;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    return-object v0
.end method

.method public final getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->size:I

    return v0
.end method

.method public final getState()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    return v0
.end method

.method public final isClosed()Z
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    move-result v1
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_12

    :catch_f
    move-exception v1

    goto :goto_18

    :cond_11
    move v1, v0

    :goto_12
    if-gtz v1, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x1

    return v0

    .line 3
    :goto_18
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClosed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " check err. "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareMemoryHolder"

    invoke-static {v2, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->close()V

    return v0
.end method

.method public final isOccupied()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final isVacant()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->innerData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final map()Lkotlin/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "map "

    const-string v1, "ShareMemoryHolder"

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->innerData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_13

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->isClosed()Z

    move-result v2

    const/16 v4, 0x28ab

    const/4 v5, 0x0

    if-eqz v2, :cond_26

    .line 6
    new-instance v0, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_26
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    if-nez v2, :cond_34

    new-instance v0, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 10
    :cond_34
    :try_start_34
    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget v4, Landroid/system/OsConstants;->PROT_READ:I

    sget v6, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 12
    invoke-virtual {v2}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_5c

    .line 17
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->innerData:Ljava/nio/ByteBuffer;

    .line 18
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :catchall_5c
    move-exception v2

    .line 19
    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " err. "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0x28af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final read(IZ)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lkotlin/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->map()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 47
    new-instance p1, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 48
    :cond_21
    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 50
    :try_start_24
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_2a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_24 .. :try_end_2a} :catch_63
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_2a} :catch_50
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_3d
    .catchall {:try_start_24 .. :try_end_2a} :catchall_3b

    if-eqz p2, :cond_31

    .line 60
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    .line 61
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    .line 64
    :cond_31
    new-instance p2, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :catchall_3b
    move-exception p1

    goto :goto_76

    .line 65
    :catch_3d
    :try_start_3d
    new-instance p1, Lkotlin/Pair;

    const/16 v1, 0x28b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_3b

    if-eqz p2, :cond_4f

    .line 68
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    .line 69
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    :cond_4f
    return-object p1

    .line 70
    :catch_50
    :try_start_50
    new-instance p1, Lkotlin/Pair;

    const/16 v1, 0x28b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_3b

    if-eqz p2, :cond_62

    .line 75
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    .line 76
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    :cond_62
    return-object p1

    .line 77
    :catch_63
    :try_start_63
    new-instance p1, Lkotlin/Pair;

    const/16 v1, 0x28b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_3b

    if-eqz p2, :cond_75

    .line 84
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    .line 85
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    :cond_75
    return-object p1

    :goto_76
    if-eqz p2, :cond_7d

    .line 86
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    .line 87
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    .line 88
    :cond_7d
    throw p1
.end method

.method public final read(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Z)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
            "Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getFormat()Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_ac

    .line 16
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getByteLength()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readByteArray(I)Lkotlin/Pair;

    move-result-object p1

    goto/16 :goto_a2

    .line 17
    :pswitch_1e
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getY()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readDouble2DArray(II)Lkotlin/Pair;

    move-result-object p1

    goto/16 :goto_a2

    .line 18
    :pswitch_2c
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getY()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readFloat2DArray(II)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 19
    :pswitch_39
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getY()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readLong2DArray(II)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 20
    :pswitch_46
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getY()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readInt2DArray(II)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 21
    :pswitch_53
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getY()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readShort2DArray(II)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 22
    :pswitch_60
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getY()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readByte2DArray(II)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 23
    :pswitch_6d
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readDoubleArray(I)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 24
    :pswitch_76
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readFloatArray(I)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 25
    :pswitch_7f
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readLongArray(I)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 26
    :pswitch_88
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readIntArray(I)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 27
    :pswitch_91
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readShortArray(I)Lkotlin/Pair;

    move-result-object p1

    goto :goto_a2

    .line 28
    :pswitch_9a
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getByteLength()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->readByteArray(I)Lkotlin/Pair;

    move-result-object p1

    :goto_a2
    if-eqz p2, :cond_aa

    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    :cond_aa
    return-object p1

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_91
        :pswitch_88
        :pswitch_7f
        :pswitch_76
        :pswitch_6d
        :pswitch_60
        :pswitch_53
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1e
    .end packed-switch
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->size:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-class v2, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    if-lt v0, v1, :cond_30

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 7
    const-class v1, Landroid/os/SharedMemory;

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    goto :goto_3a

    .line 13
    :cond_30
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    .line 14
    :goto_3a
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    iget v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->size:I

    iget v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMH(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unmap()V
    .registers 6

    .line 1
    const-string v0, "unmap "

    const-string v1, "ShareMemoryHolder"

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->innerData:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_47

    .line 4
    :try_start_8
    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_44

    :catch_23
    move-exception v2

    .line 8
    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " err. "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->innerData:Ljava/nio/ByteBuffer;

    :cond_47
    return-void
.end method

.method public final write(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I
    .registers 4

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getFormat()Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_12

    const/16 p1, 0x28ae

    return p1

    .line 4
    :cond_12
    sget-object v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_5e

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeByteArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 19
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeDouble2DArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 20
    :pswitch_27
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeFloat2DArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 21
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeLong2DArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 22
    :pswitch_31
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeInt2DArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 23
    :pswitch_36
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeShort2DArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 24
    :pswitch_3b
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeByte2DArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 25
    :pswitch_40
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeDoubleArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 26
    :pswitch_45
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeFloatArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 27
    :pswitch_4a
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeLongArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 28
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeIntArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 29
    :pswitch_54
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeShortArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 30
    :pswitch_59
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->writeByteArray(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_59
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public final write([B)I
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->map()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v1, :cond_1c

    return v0

    .line 34
    :cond_1c
    :try_start_1c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_22
    .catch Ljava/nio/BufferOverflowException; {:try_start_1c .. :try_end_22} :catch_3b
    .catch Ljava/nio/ReadOnlyBufferException; {:try_start_1c .. :try_end_22} :catch_35
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_2f
    .catchall {:try_start_1c .. :try_end_22} :catchall_2a

    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    const/4 p1, 0x0

    return p1

    :catchall_2a
    move-exception p1

    .line 47
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    throw p1

    .line 48
    :catch_2f
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/16 p1, 0x28b1

    return p1

    .line 49
    :catch_35
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/16 p1, 0x28b3

    return p1

    .line 50
    :catch_3b
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    const/16 p1, 0x28b2

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->shareMem:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
