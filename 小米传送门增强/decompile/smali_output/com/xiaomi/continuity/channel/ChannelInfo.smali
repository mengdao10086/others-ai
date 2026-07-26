.class public Lcom/xiaomi/continuity/channel/ChannelInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/channel/ChannelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private channelId:I

.field private channelRole:I

.field private deviceId:Ljava/lang/String;

.field private isSdkSocket:Z

.field private localAddress:Ljava/lang/String;

.field private peerChannelId:I

.field private port:I

.field private serviceName:Lcom/xiaomi/continuity/ServiceName;

.field private transKey:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/channel/ChannelInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/channel/ChannelInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/channel/ChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->peerChannelId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->deviceId:Ljava/lang/String;

    const-class v0, Lcom/xiaomi/continuity/ServiceName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/ServiceName;

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->serviceName:Lcom/xiaomi/continuity/ServiceName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->port:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelRole:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    move v0, v1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x1

    :goto_3f
    iput-boolean v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->isSdkSocket:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->localAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_57

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->transKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_5b

    :cond_57
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->transKey:[B

    :goto_5b
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/continuity/channel/ChannelInfo$1;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/channel/ChannelInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/continuity/channel/ChannelInfo$1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ChannelInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$1002(Lcom/xiaomi/continuity/channel/ChannelInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->localAddress:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/xiaomi/continuity/channel/ChannelInfo;[B)[B
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->transKey:[B

    return-object p1
.end method

.method public static synthetic access$202(Lcom/xiaomi/continuity/channel/ChannelInfo;I)I
    .registers 2

    .line 0
    iput p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelId:I

    return p1
.end method

.method public static synthetic access$302(Lcom/xiaomi/continuity/channel/ChannelInfo;I)I
    .registers 2

    .line 0
    iput p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->peerChannelId:I

    return p1
.end method

.method public static synthetic access$402(Lcom/xiaomi/continuity/channel/ChannelInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/xiaomi/continuity/channel/ChannelInfo;Lcom/xiaomi/continuity/ServiceName;)Lcom/xiaomi/continuity/ServiceName;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->serviceName:Lcom/xiaomi/continuity/ServiceName;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/xiaomi/continuity/channel/ChannelInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->address:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/xiaomi/continuity/channel/ChannelInfo;I)I
    .registers 2

    .line 0
    iput p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->port:I

    return p1
.end method

.method public static synthetic access$802(Lcom/xiaomi/continuity/channel/ChannelInfo;I)I
    .registers 2

    .line 0
    iput p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelRole:I

    return p1
.end method

.method public static synthetic access$902(Lcom/xiaomi/continuity/channel/ChannelInfo;Z)Z
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->isSdkSocket:Z

    return p1
.end method


# virtual methods
.method public WipeTransKey()V
    .registers 5

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->transKey:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelId:I

    return v0
.end method

.method public getChannelRole()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelRole:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->localAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerChannelId()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->peerChannelId:I

    return v0
.end method

.method public getPort()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->port:I

    return v0
.end method

.method public getServiceName()Lcom/xiaomi/continuity/ServiceName;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->serviceName:Lcom/xiaomi/continuity/ServiceName;

    return-object v0
.end method

.method public getTransKey()[B
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->transKey:[B

    return-object v0
.end method

.method public isSdkSocket()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->isSdkSocket:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "ChannelInfo{channelId="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->peerChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->serviceName:Lcom/xiaomi/continuity/ServiceName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSdkSocket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->isSdkSocket:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->peerChannelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->serviceName:Lcom/xiaomi/continuity/ServiceName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->channelRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->isSdkSocket:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->localAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->transKey:[B

    if-nez p2, :cond_37

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    :cond_37
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/channel/ChannelInfo;->transKey:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_40
    return-void
.end method
