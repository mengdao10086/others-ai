.class Lcom/xiaomi/continuity/netbus/DeviceManager$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic val$method:Ljava/lang/String;


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-nez p1, :cond_10

    const-string p2, ""

    goto :goto_16

    :cond_10
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_16
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/DeviceManager$1;->val$method:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "NetBusDeviceManager"

    const-string v1, "%s result code:%s,message:%s"

    invoke-static {v0, v1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    throw p2
.end method
