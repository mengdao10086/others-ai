.class Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkController"
.end annotation


# instance fields
.field private mIsCmwap:Z

.field private mIsConnected:Z

.field private mIsWifi:Z

.field private mNetworkClass:Ljava/lang/String;

.field private mSubtypeName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNetworkClass(Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->update(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkClass(Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->updateNetworkClass(I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsConnected:Z

    .line 305
    iput-boolean v0, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsWifi:Z

    const/4 v1, 0x0

    .line 306
    iput-object v1, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    .line 307
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mSubtypeName:Ljava/lang/String;

    .line 308
    iput-boolean v0, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsCmwap:Z

    .line 311
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->update(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/contentextension/utils/DeviceUtils-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private update(Landroid/content/Context;)V
    .registers 2

    .line 315
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->updateNetwork(Landroid/content/Context;)V

    return-void
.end method

.method private updateNetwork(Landroid/content/Context;)V
    .registers 12

    .line 319
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 320
    const-string v2, "unconnected"

    const/4 v3, 0x0

    if-nez v1, :cond_16

    .line 321
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsConnected:Z

    .line 322
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsWifi:Z

    .line 323
    iput-object v2, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    .line 324
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsCmwap:Z

    return-void

    .line 327
    :cond_16
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_25

    .line 329
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsConnected:Z

    .line 330
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsWifi:Z

    .line 331
    iput-object v2, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    .line 332
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsCmwap:Z

    return-void

    .line 335
    :cond_25
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_37

    goto :goto_49

    .line 339
    :cond_37
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v5, -0x3

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v5, 0x1

    const-string v7, "wap"

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsCmwap:Z

    goto :goto_4b

    .line 337
    :cond_49
    :goto_49
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsCmwap:Z

    .line 341
    :goto_4b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_58

    .line 342
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsConnected:Z

    .line 343
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsWifi:Z

    .line 344
    iput-object v2, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    return-void

    .line 347
    :cond_58
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 349
    iput-object v2, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mSubtypeName:Ljava/lang/String;

    :cond_64
    const/4 v2, 0x1

    .line 351
    iput-boolean v2, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsConnected:Z

    .line 352
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_74

    .line 354
    iput-boolean v2, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsWifi:Z

    .line 355
    const-string p1, "wifi"

    iput-object p1, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    return-void

    :cond_74
    const/16 v4, 0x9

    if-eq v1, v4, :cond_7f

    const/4 v4, 0x7

    if-ne v1, v4, :cond_7c

    goto :goto_7f

    .line 361
    :cond_7c
    iput-boolean v3, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsWifi:Z

    goto :goto_81

    .line 359
    :cond_7f
    :goto_7f
    iput-boolean v2, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mIsWifi:Z

    .line 364
    :goto_81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 365
    const-string v0, "unknown"

    if-nez p1, :cond_8e

    .line 366
    iput-object v0, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    return-void

    .line 369
    :cond_8e
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_97

    .line 371
    iput-object v0, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    return-void

    .line 374
    :cond_97
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->updateNetworkClass(I)V

    return-void
.end method

.method private updateNetworkClass(I)V
    .registers 2

    packed-switch p1, :pswitch_data_18

    .line 401
    const-string p1, "unknown"

    iput-object p1, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    goto :goto_16

    .line 398
    :pswitch_8
    const-string p1, "4g"

    iput-object p1, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    goto :goto_16

    .line 395
    :pswitch_d
    const-string p1, "3g"

    iput-object p1, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    goto :goto_16

    .line 384
    :pswitch_12
    const-string p1, "2g"

    iput-object p1, p0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->mNetworkClass:Ljava/lang/String;

    :goto_16
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_d
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_12
        :pswitch_d
        :pswitch_8
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method
