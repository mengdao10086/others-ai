.class public Lcom/miui/contentextension/utils/Network;
.super Ljava/lang/Object;
.source "Network.java"


# direct methods
.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .registers 2

    .line 16
    const-string v0, "connectivity"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 19
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .registers 2

    .line 26
    const-string v0, "connectivity"

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 28
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    if-nez p0, :cond_1c

    if-eqz v0, :cond_1c

    .line 30
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method
