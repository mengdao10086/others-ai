.class public Lcom/miui/contentextension/clipboard/model/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private deviceCapabilitiesFromMiuiPlus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private devicePcAppVersionFromMiuiPlus:J

.field private deviceSource:I

.field private deviceType:I

.field private idFromMiuiPlus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceName:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceSource:I

    return-void
.end method


# virtual methods
.method public getDeviceCapabilitiesFromMiuiPlus()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceCapabilitiesFromMiuiPlus:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePcAppVersionFromMiuiPlus()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->devicePcAppVersionFromMiuiPlus:J

    return-wide v0
.end method

.method public getDeviceSource()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceSource:I

    return v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceType:I

    return v0
.end method

.method public getIdFromMiuiPlus()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->idFromMiuiPlus:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceCapabilitiesFromMiuiPlus(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceCapabilitiesFromMiuiPlus:Ljava/util/HashMap;

    return-void
.end method

.method public setDevicePcAppVersionFromMiuiPlus(J)V
    .registers 3

    .line 77
    iput-wide p1, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->devicePcAppVersionFromMiuiPlus:J

    return-void
.end method

.method public setDeviceType(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceType:I

    return-void
.end method

.method public setIdFromMiuiPlus(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->idFromMiuiPlus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfo{deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deviceSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceSource:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", idFromMiuiPlus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->idFromMiuiPlus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", deviceCapabilitiesFromMiuiPlus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->deviceCapabilitiesFromMiuiPlus:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", devicePcAppVersionFromMiuiPlus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->devicePcAppVersionFromMiuiPlus:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
