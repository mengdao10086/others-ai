.class public final Lcom/xiaomi/continuity/netbus/DiscoveryData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/DiscoveryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:[B

.field private mDataType:I

.field private mExtendData:[B

.field private mMediumType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/netbus/DiscoveryData$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/DiscoveryData$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mMediumType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mDataType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1c

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_29

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mExtendData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_29
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/continuity/netbus/DiscoveryData$1;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/netbus/DiscoveryData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "DiscoveryData{mMediumType="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mMediumType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtendData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mExtendData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 0
    iget p2, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mMediumType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mDataType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mData:[B

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1c

    :cond_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c
    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mExtendData:[B

    if-eqz p2, :cond_2a

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/DiscoveryData;->mExtendData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2d
    return-void
.end method
