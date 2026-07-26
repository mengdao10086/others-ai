.class Lmiuix/core/util/DirectIndexedFile$FileHeader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileHeader"
.end annotation


# static fields
.field private static final FILE_TAG:[B


# instance fields
.field private mDataVersion:I

.field private mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 524
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method private constructor <init>(II)V
    .registers 3

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-array p1, p1, [Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 535
    iput p2, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    return-void
.end method

.method static synthetic access$200(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    .registers 1

    .line 523
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    return-object p0
.end method

.method private static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v0, v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v0, :cond_12

    .line 541
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 543
    :cond_12
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 546
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 551
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 552
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 553
    new-instance v3, Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-direct {v3, v0, v1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;-><init>(II)V

    :goto_2e
    if-ge v2, v0, :cond_3b

    .line 555
    iget-object v1, v3, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    # invokes: Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$000(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3b
    return-object v3

    .line 548
    :cond_3c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File version unmatched, please upgrade your reader"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 544
    :cond_44
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File tag unmatched, file may be corrupt"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
