.class public Lcom/xiaomi/continuity/netbus/LinkAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mMediumType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/netbus/LinkAddress$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/LinkAddress$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/continuity/netbus/LinkAddress;->mMediumType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getMediumType()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/netbus/LinkAddress;->mMediumType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "LinkAddress{mMediumType="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/xiaomi/continuity/netbus/LinkAddress;->mMediumType:I

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
    iget p2, p0, Lcom/xiaomi/continuity/netbus/LinkAddress;->mMediumType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
