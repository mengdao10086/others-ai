.class Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

.field private mDataItems:[[Ljava/lang/Object;

.field private mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

.field private mSizeOfItems:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/core/util/DirectIndexedFile$1;)V
    .registers 2

    .line 839
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    .registers 1

    .line 839
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static synthetic access$1002(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    .registers 2

    .line 839
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    return-object p1
.end method

.method static synthetic access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;
    .registers 1

    .line 839
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;
    .registers 2

    .line 839
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1

    .line 839
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p0
.end method

.method static synthetic access$602(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 2

    .line 839
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method

.method static synthetic access$900(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)I
    .registers 1

    .line 839
    iget p0, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return p0
.end method

.method static synthetic access$902(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;I)I
    .registers 2

    .line 839
    iput p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return p1
.end method

.method static synthetic access$912(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;I)I
    .registers 3

    .line 839
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return v0
.end method
