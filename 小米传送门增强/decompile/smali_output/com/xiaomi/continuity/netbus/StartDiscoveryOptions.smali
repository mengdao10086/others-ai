.class public final Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataType:I

.field private mFrequency:I

.field private mMediumType:I

.field private mRealtimeDiscovery:Z

.field private mSameAccount:Z

.field private mSameGroup:Z

.field private mSameNoGroup:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/continuity/netbus/DiscoveryOptions$DiscoveryDataType;->NORMAL:Lcom/xiaomi/continuity/netbus/DiscoveryOptions$DiscoveryDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/continuity/netbus/DiscoveryOptions$DiscoveryDataType;->NORMAL:Lcom/xiaomi/continuity/netbus/DiscoveryOptions$DiscoveryDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mFrequency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameAccount:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameGroup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v2

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameNoGroup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_47

    move v1, v2

    :cond_47
    iput-boolean v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mRealtimeDiscovery:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions$1;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;-><init>(Landroid/os/Parcel;)V

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
    const-string v0, "StartDiscoveryOptions{mMediumType="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSameAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameAccount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mRealtimeDiscovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 0
    iget p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mFrequency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameAccount:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameNoGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mRealtimeDiscovery:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
