.class public Lcom/xiaomi/onetrack/g/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "NetworkUtil"

.field private static final b:I = 0x10

.field private static final c:I = 0x11

.field private static final d:I = 0x12

.field private static final e:I = 0x13

.field private static final f:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    .registers 4

    .line 51
    const-string v0, "NetworkUtil"

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 52
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 53
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 55
    :cond_11
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 60
    :cond_14
    :try_start_14
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 61
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 62
    const-string v1, "execute getActiveNetworkInfo()"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_61

    .line 63
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_61

    .line 67
    :cond_2e
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 68
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    :catch_38
    move-exception p0

    goto :goto_64

    .line 69
    :cond_3a
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_56

    .line 70
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_6c

    .line 97
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 95
    :pswitch_4a
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 93
    :pswitch_4d
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 89
    :pswitch_50
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 78
    :pswitch_53
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 99
    :cond_56
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_69

    .line 100
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 64
    :cond_61
    :goto_61
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_63} :catch_38

    return-object p0

    .line 103
    :goto_64
    const-string v1, "getNetworkState error"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_69
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_53
        :pswitch_53
        :pswitch_50
        :pswitch_53
        :pswitch_50
        :pswitch_50
        :pswitch_53
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_50
        :pswitch_50
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4d
        :pswitch_4a
    .end packed-switch
.end method

.method public static a()Z
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result v0

    return v0

    .line 30
    :cond_b
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .registers 4

    .line 34
    const-string v0, "NetworkUtil"

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 37
    :try_start_8
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 38
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 39
    const-string v2, "execute getActiveNetworkInfo()"

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_39

    .line 41
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    return v0

    :catch_20
    move-exception v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkConnected exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    const/4 v0, 0x0

    return v0
.end method
