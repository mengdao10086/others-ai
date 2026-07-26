.class Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;
    .registers 4

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;-><init>(Landroid/os/Parcel;Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;
    .registers 2

    .line 0
    new-array p1, p1, [Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions$1;->newArray(I)[Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;

    move-result-object p1

    return-object p1
.end method
