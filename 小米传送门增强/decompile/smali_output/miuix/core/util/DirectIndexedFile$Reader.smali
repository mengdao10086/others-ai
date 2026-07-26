.class public Lmiuix/core/util/DirectIndexedFile$Reader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;
    }
.end annotation


# instance fields
.field private mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

.field private mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

.field private mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;

    invoke-direct {v0, p1}, Lmiuix/core/util/DirectIndexedFile$DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 852
    const-string p1, "assets"

    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lmiuix/core/util/DirectIndexedFile$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 857
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lmiuix/core/util/DirectIndexedFile$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructFromFile(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 863
    :try_start_3
    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 864
    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    # invokes: Lmiuix/core/util/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$200(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;

    move-result-object p1

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 866
    # getter for: Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    const/4 p1, 0x0

    move v0, p1

    .line 867
    :goto_1d
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_f7

    .line 868
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    new-instance v2, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;-><init>(Lmiuix/core/util/DirectIndexedFile$1;)V

    aput-object v2, v1, v0

    .line 869
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v0

    # getter for: Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$500(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 870
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 871
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    # setter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2, v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$602(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move v2, p1

    :goto_51
    if-ge v2, v1, :cond_69

    .line 873
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v3

    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    # invokes: Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->access$700(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :catch_66
    move-exception p1

    goto/16 :goto_f8

    .line 876
    :cond_69
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v0

    # getter for: Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$800(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 877
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 878
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    # setter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {v2, p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$902(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;I)I

    .line 879
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    # setter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2, v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1002(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move v2, p1

    :goto_91
    if-ge v2, v1, :cond_b7

    .line 881
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v3

    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    # invokes: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1100(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aput-object v4, v3, v2

    .line 882
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    # getter for: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v4

    # += operator for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {v3, v4}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$912(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 885
    :cond_b7
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [[Ljava/lang/Object;

    # setter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v2, v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1302(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;

    move v2, p1

    :goto_c1
    if-ge v2, v1, :cond_f3

    .line 887
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v0

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    # getter for: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 888
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v0

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v5, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    # invokes: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readDataItems(Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    invoke-static {v4, v5}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1500(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f0} :catch_66

    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    :cond_f3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    :cond_f7
    return-void

    .line 892
    :goto_f8
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    .line 893
    throw p1
.end method

.method private offset(II)J
    .registers 7

    .line 1088
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_3d

    add-int v2, v0, v1

    .line 1090
    div-int/lit8 v2, v2, 0x2

    .line 1091
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v3

    aget-object v3, v3, v2

    iget v3, v3, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    if-le v3, p2, :cond_20

    move v0, v2

    goto :goto_a

    .line 1093
    :cond_20
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v1

    aget-object v1, v1, v2

    iget v1, v1, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-gt v1, p2, :cond_32

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_a

    .line 1096
    :cond_32
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    if-eqz v0, :cond_51

    .line 1103
    iget-wide v1, v0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    iget v0, v0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v0, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$900(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)I

    move-result p1

    mul-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr v1, p1

    goto :goto_53

    :cond_51
    const-wide/16 v1, -0x1

    :goto_53
    return-wide v1
.end method

.method private readSingleDataItem(III)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    if-nez v0, :cond_40

    .line 1079
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    # getter for: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 1080
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 1081
    # invokes: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    invoke-static {v1, v2, p3}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1900(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p3

    .line 1083
    :cond_40
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v0, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p2

    aget-object p1, p1, p3

    return-object p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    .line 1064
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    if-eqz v0, :cond_b

    .line 1066
    :try_start_5
    invoke-interface {v0}, Lmiuix/core/util/DirectIndexedFile$InputFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_b
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_14

    :catch_b
    :cond_b
    :goto_b
    const/4 v0, 0x0

    .line 1072
    :try_start_c
    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 1073
    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 1074
    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_9

    .line 1075
    monitor-exit p0

    return-void

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_9

    throw v0
.end method

.method public declared-synchronized get(III)Ljava/lang/Object;
    .registers 8

    monitor-enter p0

    .line 920
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_133

    if-ltz p1, :cond_10c

    .line 923
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    array-length v1, v0

    if-ge p1, v1, :cond_10c

    if-ltz p3, :cond_df

    .line 926
    aget-object v0, v0, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_df

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 933
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const/4 v2, 0x0

    if-gez p2, :cond_36

    .line 936
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, p2, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p3

    aget-object p1, p1, v2
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    goto/16 :goto_d5

    :catchall_33
    move-exception p1

    goto/16 :goto_13b

    .line 939
    :cond_36
    :try_start_36
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2, v0, v1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    const/4 p2, 0x0

    :goto_3c
    if-gt v2, p3, :cond_d4

    .line 941
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v2

    # getter for: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_13e

    .line 971
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v0, p1

    .line 972
    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    aget-object p1, p1, v2

    # getter for: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_7c
    move-exception p1

    goto :goto_d7

    .line 952
    :pswitch_7e
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_c8

    .line 949
    :pswitch_89
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_c8

    .line 946
    :pswitch_94
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_c8

    .line 943
    :pswitch_9f
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readByte()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_a9} :catch_7c
    .catchall {:try_start_36 .. :try_end_a9} :catchall_33

    goto :goto_c8

    .line 960
    :pswitch_aa
    :try_start_aa
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    .line 961
    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v2

    # getter for: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v1

    .line 960
    # invokes: Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J
    invoke-static {v0, v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1800(Ljava/io/DataInput;I)J

    move-result-wide v0

    long-to-int v0, v0

    if-ne v2, p3, :cond_c8

    .line 963
    invoke-direct {p0, p1, p3, v0}, Lmiuix/core/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object p2
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_c5} :catch_c6
    .catchall {:try_start_aa .. :try_end_c5} :catchall_33

    goto :goto_c8

    :catch_c6
    move-exception p1

    goto :goto_cc

    :cond_c8
    :goto_c8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3c

    .line 966
    :goto_cc
    :try_start_cc
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "File may be corrupt due to invalid data index size"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_7c
    .catchall {:try_start_cc .. :try_end_d4} :catchall_33

    :cond_d4
    move-object p1, p2

    .line 985
    :goto_d5
    monitor-exit p0

    return-object p1

    .line 976
    :goto_d7
    :try_start_d7
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Seek data from a corrupt file"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 927
    :cond_df
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " out of range[0, "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, p3, p1

    .line 928
    # getter for: Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 924
    :cond_10c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Kind "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range[0, "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 921
    :cond_133
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Get data from a corrupt file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 924
    :goto_13b
    monitor-exit p0
    :try_end_13c
    .catchall {:try_start_d7 .. :try_end_13c} :catchall_33

    throw p1

    nop

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_9f
        :pswitch_94
        :pswitch_89
        :pswitch_7e
    .end packed-switch
.end method
