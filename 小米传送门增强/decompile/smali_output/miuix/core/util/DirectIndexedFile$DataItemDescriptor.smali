.class Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItemDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
    }
.end annotation


# static fields
.field private static sBuffer:[B


# instance fields
.field private mIndexSize:B

.field private mLengthSize:B

.field private mOffset:J

.field private mOffsetSize:B

.field private mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x400

    .line 116
    new-array v0, v0, [B

    sput-object v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    return-void
.end method

.method private constructor <init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V
    .registers 7

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 145
    iput-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    .line 146
    iput-byte p3, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 147
    iput-byte p4, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 148
    iput-wide p5, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-void
.end method

.method static synthetic access$1100(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B
    .registers 1

    .line 103
    iget-byte p0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    return p0
.end method

.method static synthetic access$1400(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)J
    .registers 3

    .line 103
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-wide v0
.end method

.method static synthetic access$1500(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readDataItems(Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object p0
.end method

.method static synthetic access$1800(Ljava/io/DataInput;I)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p0, p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1900(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static aquireBuffer(I)[B
    .registers 3

    .line 125
    const-class v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    .line 126
    :try_start_3
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    if-eqz v1, :cond_d

    array-length v1, v1

    if-ge v1, p0, :cond_11

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_18

    .line 127
    :cond_d
    :goto_d
    new-array p0, p0, [B

    sput-object p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 129
    :cond_11
    sget-object p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    const/4 v1, 0x0

    .line 130
    sput-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 131
    monitor-exit v0

    return-object p0

    .line 132
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_b

    throw p0
.end method

.method private static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->values()[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    aget-object v3, v0, v1

    .line 153
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    .line 154
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    .line 155
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v6

    .line 156
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v7

    .line 157
    new-instance p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-object p0
.end method

.method private static readAccordingToSize(Ljava/io/DataInput;I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_34

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    const/16 v0, 0x8

    if-ne p1, v0, :cond_12

    .line 475
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide p0

    goto :goto_39

    .line 478
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsuppoert size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 472
    :cond_29
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    :goto_2d
    int-to-long p0, p0

    goto :goto_39

    .line 469
    :cond_2f
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result p0

    goto :goto_2d

    .line 466
    :cond_34
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    goto :goto_2d

    :goto_39
    return-wide p0
.end method

.method private readDataItems(Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_54

    const/4 p1, 0x0

    goto :goto_53

    .line 426
    :pswitch_11
    new-array v0, v1, [Ljava/lang/Object;

    .line 427
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    :goto_1d
    move-object p1, v0

    goto :goto_53

    .line 422
    :pswitch_1f
    new-array v0, v1, [Ljava/lang/Object;

    .line 423
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_1d

    .line 418
    :pswitch_2c
    new-array v0, v1, [Ljava/lang/Object;

    .line 419
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_1d

    .line 414
    :pswitch_39
    new-array v0, v1, [Ljava/lang/Object;

    .line 415
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_1d

    .line 434
    :pswitch_46
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 435
    invoke-direct {p0, p1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_1d

    :goto_53
    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method

.method private readSingleDataItem(Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-interface {p1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v0

    if-eqz p2, :cond_e

    .line 363
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    mul-int/2addr v2, p2

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-interface {p1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 365
    :cond_e
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 367
    sget-object p2, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_7f

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p2, v0, :cond_71

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5d

    const/4 v0, 0x4

    if-eq p2, v0, :cond_49

    const/4 v0, 0x5

    if-eq p2, v0, :cond_35

    move-object v0, v2

    goto :goto_93

    .line 398
    :cond_35
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v3

    long-to-int p2, v3

    new-array v0, p2, [J

    :goto_3e
    if-ge v1, p2, :cond_93

    .line 401
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 390
    :cond_49
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v3

    long-to-int p2, v3

    new-array v0, p2, [I

    :goto_52
    if-ge v1, p2, :cond_93

    .line 393
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 382
    :cond_5d
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v3

    long-to-int p2, v3

    new-array v0, p2, [S

    :goto_66
    if-ge v1, p2, :cond_93

    .line 385
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v3

    aput-short v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 376
    :cond_71
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v0

    long-to-int p2, v0

    new-array p2, p2, [B

    .line 377
    invoke-interface {p1, p2}, Ljava/io/DataInput;->readFully([B)V

    move-object v0, p2

    goto :goto_93

    .line 369
    :cond_7f
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    .line 370
    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->aquireBuffer(I)[B

    move-result-object v2

    .line 371
    invoke-interface {p1, v2, v1, p2}, Ljava/io/DataInput;->readFully([BII)V

    .line 372
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v1, p2}, Ljava/lang/String;-><init>([BII)V

    move-object v0, p1

    .line 406
    :cond_93
    :goto_93
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->releaseBuffer([B)V

    return-object v0
.end method

.method private static releaseBuffer([B)V
    .registers 4

    .line 136
    const-class v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    if-eqz p0, :cond_12

    .line 137
    :try_start_5
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    if-eqz v1, :cond_10

    array-length v1, v1

    array-length v2, p0

    if-ge v1, v2, :cond_12

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_14

    .line 138
    :cond_10
    :goto_10
    sput-object p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 140
    :cond_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_e

    throw p0
.end method
