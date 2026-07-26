.class Lcom/xiaomi/continuity/netbus/NetBusManager$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic val$method:Ljava/lang/String;


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .registers 9

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager$1;->val$method:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    filled-new-array {v0, v1, v3, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NetBusManager"

    const-string v3, "%s result code:%s, message:%s, data:%s"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2f

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    throw v0

    :cond_2f
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    throw v0
.end method
