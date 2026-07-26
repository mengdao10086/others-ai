.class Lcom/xiaomi/continuity/netbus/NetBusManager$3;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4

    .line 0
    const-string p1, "versionCode"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "versionName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "service versionCode:%s, versionName:%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetBusManager"

    invoke-static {p2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
