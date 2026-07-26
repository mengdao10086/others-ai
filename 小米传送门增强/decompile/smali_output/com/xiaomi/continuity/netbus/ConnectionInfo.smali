.class public final Lcom/xiaomi/continuity/netbus/ConnectionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/netbus/ConnectionInfo$MacAddress;,
        Lcom/xiaomi/continuity/netbus/ConnectionInfo$IpAddress;,
        Lcom/xiaomi/continuity/netbus/ConnectionInfo$ConnectionAddress;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Lcom/xiaomi/continuity/netbus/ConnectionInfo$ConnectionAddress;

.field private mComparisonNumber:Ljava/lang/String;

.field private mConnectionId:Ljava/lang/String;

.field private mDeviceInfo:Lcom/xiaomi/continuity/netbus/DeviceInfo;

.field private mMediumType:I

.field private mPrivateData:[B

.field private mTrustLevel:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/netbus/ConnectionInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/ConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    const-class v0, Lcom/xiaomi/continuity/netbus/DeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/netbus/DeviceInfo;

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mDeviceInfo:Lcom/xiaomi/continuity/netbus/DeviceInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mMediumType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mConnectionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mTrustLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mComparisonNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mPrivateData:[B

    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->initAddress(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/continuity/netbus/ConnectionInfo$1;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/netbus/ConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private initAddress(Landroid/os/Parcel;)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mMediumType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/16 v1, 0x20

    if-eq v0, v1, :cond_11

    const/16 v1, 0x80

    if-eq v0, v1, :cond_11

    goto :goto_1f

    :cond_11
    new-instance v0, Lcom/xiaomi/continuity/netbus/ConnectionInfo$IpAddress;

    invoke-direct {v0, p1}, Lcom/xiaomi/continuity/netbus/ConnectionInfo$IpAddress;-><init>(Landroid/os/Parcel;)V

    :goto_16
    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mAddress:Lcom/xiaomi/continuity/netbus/ConnectionInfo$ConnectionAddress;

    goto :goto_1f

    :cond_19
    new-instance v0, Lcom/xiaomi/continuity/netbus/ConnectionInfo$MacAddress;

    invoke-direct {v0, p1}, Lcom/xiaomi/continuity/netbus/ConnectionInfo$MacAddress;-><init>(Landroid/os/Parcel;)V

    goto :goto_16

    :goto_1f
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
    const-string v0, "ConnectionInfo{mDeviceInfo="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mDeviceInfo:Lcom/xiaomi/continuity/netbus/DeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMediumType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mMediumType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mTrustLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mTrustLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mComparisonNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mComparisonNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrivateData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mPrivateData:[B

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
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mDeviceInfo:Lcom/xiaomi/continuity/netbus/DeviceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mMediumType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mConnectionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mTrustLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mComparisonNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mPrivateData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionInfo;->mAddress:Lcom/xiaomi/continuity/netbus/ConnectionInfo$ConnectionAddress;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/continuity/netbus/ConnectionInfo$ConnectionAddress;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
