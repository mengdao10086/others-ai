.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;,
        Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$WhenMappings;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

.field private static final FLAG_R:Ljava/lang/String; = "r"

.field private static final FLAG_W:Ljava/lang/String; = "w"

.field private static final TAG:Ljava/lang/String; = "AIFrame"


# instance fields
.field private byteLength:I

.field private flag:Ljava/lang/String;

.field private format:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

.field private readAsBuffer:Z

.field private shareMemId:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private value:Ljava/lang/Object;

.field private writeInBuffer:Z

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->tag:Ljava/lang/String;

    .line 37
    sget-object v1, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->UNKNOWN:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->format:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    .line 43
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->flag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)V
    .registers 7

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->value:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->tag:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->x:I

    .line 56
    iput p4, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->y:I

    .line 57
    iput-object p5, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->format:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    .line 58
    sget-object p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p2, p2, p5

    packed-switch p2, :pswitch_data_3a

    .line 72
    instance-of p2, p1, [B

    if-eqz p2, :cond_36

    .line 73
    check-cast p1, [B

    array-length p3, p1

    goto :goto_37

    :pswitch_2a
    mul-int/2addr p3, p4

    :pswitch_2b
    mul-int/lit8 p3, p3, 0x8

    goto :goto_37

    :pswitch_2e
    mul-int/2addr p3, p4

    :pswitch_2f
    mul-int/lit8 p3, p3, 0x4

    goto :goto_37

    :pswitch_32
    mul-int/2addr p3, p4

    :pswitch_33
    mul-int/lit8 p3, p3, 0x2

    goto :goto_37

    :cond_36
    :pswitch_36
    mul-int/2addr p3, p4

    .line 74
    :goto_37
    :pswitch_37
    iput p3, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->byteLength:I

    return-void

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_2f
        :pswitch_2b
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)V
    .registers 8

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;-><init>(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)V

    .line 82
    iput p6, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->byteLength:I

    return-void
.end method

.method public static final createBigDataFrame(Ljava/lang/String;[B)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 3

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createBigDataFrame(Ljava/lang/String;[B)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static final createFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 11

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static final createFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 13

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static final createHighReadFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 11

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createHighReadFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static final createHighReadFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 13

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createHighReadFrame(Ljava/lang/Object;Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static final createHighWriteFrame(Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 5

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createHighWriteFrame(Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static final createHighWriteFrame(Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 11

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createHighWriteFrame(Ljava/lang/String;IILcom/xiaomi/taiyi/sdk/common/DataFormat;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static final createLongTextFrame(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;
    .registers 3

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$CREATOR;->createLongTextFrame(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic read$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;ZILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->read(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getByteLength()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->byteLength:I

    return v0
.end method

.method public final getFormat()Lcom/xiaomi/taiyi/sdk/common/DataFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->format:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    return-object v0
.end method

.method public final getReadAsBuffer()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->readAsBuffer:Z

    return v0
.end method

.method public final getShareMemId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final getWriteInBuffer()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->writeInBuffer:Z

    return v0
.end method

.method public final getX()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->x:I

    return v0
.end method

.method public final getY()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->y:I

    return v0
.end method

.method public final hasRead()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->value:Ljava/lang/Object;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->flag:Ljava/lang/String;

    const-string v1, "r"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public final hasWrite()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->flag:Ljava/lang/String;

    const-string v1, "w"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final isHighRead()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->readAsBuffer:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final isHighWrite()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->writeInBuffer:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final map(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "sm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->map()Lkotlin/Pair;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_1b

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    :cond_1b
    return-object v0
.end method

.method public final openArray$base_release()Ljava/nio/ByteBuffer;
    .registers 7

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->byteLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->value:Ljava/lang/Object;

    if-nez v1, :cond_13

    return-object v0

    .line 3
    :cond_13
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->format:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    sget-object v3, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_d8

    .line 53
    check-cast v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_d6

    .line 54
    :pswitch_28
    check-cast v1, [[D

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v2

    .line 56
    array-length v4, v1

    :goto_2f
    if-ge v3, v4, :cond_39

    aget-object v5, v1, v3

    .line 57
    invoke-virtual {v2, v5}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 58
    :cond_39
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_d6

    .line 59
    :pswitch_3d
    check-cast v1, [[F

    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 61
    array-length v4, v1

    :goto_44
    if-ge v3, v4, :cond_4e

    aget-object v5, v1, v3

    .line 62
    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 63
    :cond_4e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_d6

    .line 64
    :pswitch_52
    check-cast v1, [[J

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 66
    array-length v4, v1

    :goto_59
    if-ge v3, v4, :cond_63

    aget-object v5, v1, v3

    .line 67
    invoke-virtual {v2, v5}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 68
    :cond_63
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_d6

    .line 69
    :pswitch_67
    check-cast v1, [[I

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 71
    array-length v4, v1

    :goto_6e
    if-ge v3, v4, :cond_78

    aget-object v5, v1, v3

    .line 72
    invoke-virtual {v2, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 73
    :cond_78
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d6

    .line 74
    :pswitch_7b
    check-cast v1, [[S

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 76
    array-length v4, v1

    :goto_82
    if-ge v3, v4, :cond_8c

    aget-object v5, v1, v3

    .line 77
    invoke-virtual {v2, v5}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 78
    :cond_8c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d6

    .line 79
    :pswitch_8f
    check-cast v1, [[B

    .line 80
    array-length v2, v1

    :goto_92
    if-ge v3, v2, :cond_9c

    aget-object v4, v1, v3

    .line 81
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 82
    :cond_9c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d6

    .line 83
    :pswitch_9f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v2

    check-cast v1, [D

    invoke-virtual {v2, v1}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    goto :goto_d6

    .line 84
    :pswitch_a9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    check-cast v1, [F

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_d6

    .line 85
    :pswitch_b3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    check-cast v1, [J

    invoke-virtual {v2, v1}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    goto :goto_d6

    .line 86
    :pswitch_bd
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    check-cast v1, [I

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    goto :goto_d6

    .line 87
    :pswitch_c7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    check-cast v1, [S

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    goto :goto_d6

    .line 88
    :pswitch_d1
    check-cast v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_d6
    return-object v0

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_c7
        :pswitch_bd
        :pswitch_b3
        :pswitch_a9
        :pswitch_9f
        :pswitch_8f
        :pswitch_7b
        :pswitch_67
        :pswitch_52
        :pswitch_3d
        :pswitch_28
    .end packed-switch
.end method

.method public final read(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;Z)I
    .registers 5

    const-string v0, "sm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->read(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Z)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-nez p2, :cond_1f

    .line 3
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->value:Ljava/lang/Object;

    .line 4
    const-string v0, "r"

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->flag:Ljava/lang/String;

    .line 6
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". code = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIFrame"

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_e

    move-object v0, v1

    :cond_e
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->tag:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->x:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->y:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->byteLength:I

    .line 5
    sget-object v0, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->Companion:Lcom/xiaomi/taiyi/sdk/common/DataFormat$Companion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/taiyi/sdk/common/DataFormat$Companion;->fromValue(I)Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->format:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    move-object v1, v0

    :goto_36
    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->readAsBuffer:Z

    return-void
.end method

.method public final setReadAsBuffer$base_release(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->readAsBuffer:Z

    return-void
.end method

.method public final setWriteInBuffer$base_release(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->writeInBuffer:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->tag:Ljava/lang/String;

    iget v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->x:I

    iget v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->y:I

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->format:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->flag:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->readAsBuffer:Z

    iget-boolean v7, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->writeInBuffer:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AIFrame("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "][rb: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", wb: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unmap(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;)V
    .registers 3

    const-string v0, "sm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    return-void
.end method

.method public final write(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;)I
    .registers 5

    const-string v0, "sm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->write(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I

    move-result v0

    if-nez v0, :cond_15

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    .line 4
    const-string v1, "w"

    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->flag:Ljava/lang/String;

    .line 6
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". code = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AIFrame"

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->byteLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->format:Lcom/xiaomi/taiyi/sdk/common/DataFormat;

    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/common/DataFormat;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->shareMemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-boolean p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->readAsBuffer:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
