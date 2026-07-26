.class public Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:I

.field private mMediumTypes:I

.field private mTrustedTypes:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3d

    :cond_12
    check-cast p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;

    iget v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    iget v3, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    iget v3, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    iget v3, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v1

    :goto_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    iget v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "TrustedDeviceInfo{mDeviceId=\'"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMediumTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTrustedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

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
    iget-object p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
