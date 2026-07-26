.class public Lcom/xiaomi/continuity/netbus/DeviceFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/DeviceFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMediumTypes:I

.field private mSameAccount:Z

.field private mSameGroup:Z

.field private mSameNoGroup:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/netbus/DeviceFilter$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/DeviceFilter$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mMediumTypes:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mMediumTypes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    iput-boolean v1, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameAccount:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    iput-boolean v1, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameGroup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_24

    move v0, v2

    :cond_24
    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameNoGroup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mMediumTypes:I

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
    const-string v0, "DeviceFilter {mMediumTypes="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mMediumTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSameAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameAccount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSameGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSameNoGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameNoGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 0
    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameAccount:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mSameNoGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/DeviceFilter;->mMediumTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
