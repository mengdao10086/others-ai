.class public Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/netbus/P2pLinkAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P2p"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannel:I

.field private final mIp:Ljava/lang/String;

.field private final mMac:Ljava/lang/String;

.field private final mPort:I

.field private final mPwd:Ljava/lang/String;

.field private final mSsid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mMac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mSsid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPwd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mIp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mMac:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mSsid:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPwd:Ljava/lang/String;

    iput p4, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mChannel:I

    iput-object p5, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mIp:Ljava/lang/String;

    iput p6, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPort:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mChannel:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPort:I

    return v0
.end method

.method public getPwd()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "P2p{mMac=\'"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSsid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPsw=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPwd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mChannel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mChannel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 0
    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPwd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mIp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/P2pLinkAddress$P2p;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
