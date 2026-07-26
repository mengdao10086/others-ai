.class public Lcom/miui/contentextension/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;,
        Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;
    }
.end annotation


# static fields
.field private static sAppInfo:Lcom/miui/contentextension/utils/DeviceUtils$AppInfo; = null

.field private static sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController; = null

.field private static sOaid:Ljava/lang/String; = null

.field private static sSettingsInitialized:Z = false


# direct methods
.method static bridge synthetic -$$Nest$sfgetsOaid()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sOaid:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsOaid(Ljava/lang/String;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/miui/contentextension/utils/DeviceUtils;->sOaid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetOAIDIntenernal(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getOAIDIntenernal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static MD5_32(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 120
    :cond_4
    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_a} :catch_33

    .line 124
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 127
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 129
    :goto_1f
    array-length v0, p0

    if-ge v3, v0, :cond_2e

    .line 130
    aget-byte v0, p0, v3

    invoke-static {v0}, Lcom/miui/contentextension/utils/DeviceUtils;->byte2Hex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 132
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_33
    return-object v0
.end method

.method private static byte2Hex(B)Ljava/lang/String;
    .registers 3

    and-int/lit8 v0, p0, 0x7f

    if-gez p0, :cond_7

    const/16 p0, 0x80

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    add-int/2addr v0, p0

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    if-ge v0, v1, :cond_15

    const-string v1, "0"

    goto :goto_17

    :cond_15
    const-string v1, ""

    :goto_17
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createSessionId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 71
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppInfo(Landroid/content/Context;)Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;
    .registers 5

    .line 235
    sget-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sAppInfo:Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    if-nez v0, :cond_62

    .line 236
    new-instance v0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;-><init>(Lcom/miui/contentextension/utils/DeviceUtils-IA;)V

    sput-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sAppInfo:Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->packageName:Ljava/lang/String;

    .line 240
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_29

    .line 242
    :catch_20
    sget-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sAppInfo:Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    const-string v2, "1.0.0"

    iput-object v2, v0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->versionName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 243
    iput v2, v0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->versionCode:I

    .line 246
    :goto_29
    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 246
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 248
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "CHANNEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 250
    sget-object v2, Lcom/miui/contentextension/utils/DeviceUtils;->sAppInfo:Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->channel:Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4e
    :goto_4e
    if-eqz v1, :cond_62

    .line 256
    sget-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sAppInfo:Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->versionCode:I

    .line 257
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->versionName:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p0, v0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->targetSdkVersion:I

    .line 261
    :cond_62
    sget-object p0, Lcom/miui/contentextension/utils/DeviceUtils;->sAppInfo:Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    return-object p0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 1

    .line 231
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getAppInfo(Landroid/content/Context;)Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->versionCode:I

    return p0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 227
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getAppInfo(Landroid/content/Context;)Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method private static getBuildType()Ljava/lang/String;
    .registers 1

    .line 195
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_7

    .line 196
    const-string v0, "alpha"

    goto :goto_17

    .line 197
    :cond_7
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_e

    .line 198
    const-string v0, "dev"

    goto :goto_17

    .line 199
    :cond_e
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_15

    .line 200
    const-string v0, "stable"

    goto :goto_17

    .line 199
    :cond_15
    const-string v0, "custom"

    :goto_17
    return-object v0
.end method

.method public static getDeviceDensity(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v0, 0x78

    if-eq p0, v0, :cond_34

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_31

    const/16 v0, 0x140

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x1b8

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_28

    const/16 v0, 0x280

    if-eq p0, v0, :cond_25

    .line 281
    const-string p0, "mdpi"

    return-object p0

    .line 279
    :cond_25
    const-string p0, "xxxhdpi"

    return-object p0

    .line 275
    :cond_28
    const-string p0, "xxhdpi"

    return-object p0

    .line 277
    :cond_2b
    const-string p0, "nxhdpi"

    return-object p0

    .line 273
    :cond_2e
    const-string p0, "xhdpi"

    return-object p0

    .line 271
    :cond_31
    const-string p0, "hdpi"

    return-object p0

    .line 267
    :cond_34
    const-string p0, "ldpi"

    return-object p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 5

    .line 166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/DeviceUtils;->useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/16 v3, 0x2d

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLanguage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", result: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.DeviceUtil"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiVersion()I
    .registers 3

    .line 214
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->getMiuiVersionName()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_1a
    const/16 v1, 0x2e

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2c

    .line 218
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 220
    :cond_2c
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public static getMiuiVersionName()Ljava/lang/String;
    .registers 2

    .line 210
    const-string v0, "ro.miui.ui.version.name"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkClass(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 438
    sget-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    if-nez v0, :cond_c

    .line 439
    new-instance v0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;-><init>(Landroid/content/Context;Lcom/miui/contentextension/utils/DeviceUtils-IA;)V

    sput-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    .line 441
    :cond_c
    sget-object p0, Lcom/miui/contentextension/utils/DeviceUtils;->sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->-$$Nest$fgetmNetworkClass(Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 82
    sget-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sOaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 83
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/utils/DeviceUtils$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/utils/DeviceUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->runInBackgroud(Ljava/lang/Runnable;)V

    .line 94
    const-string v0, "deviceutil_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "device_oaid"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/contentextension/utils/DeviceUtils;->sOaid:Ljava/lang/String;

    .line 96
    :cond_25
    sget-object p0, Lcom/miui/contentextension/utils/DeviceUtils;->sOaid:Ljava/lang/String;

    return-object p0
.end method

.method private static getOAIDIntenernal(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 101
    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 103
    const-string v2, "getOAID"

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 106
    check-cast p0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    .line 109
    const-string v0, "Taplus.DeviceUtil"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2d
    const-string p0, ""

    return-object p0
.end method

.method public static getParams(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 144
    :try_start_5
    const-string v1, "oaid"

    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "rg"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v1, "hl"

    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v1, "se"

    invoke-static {}, Lcom/miui/contentextension/analy/Analy;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "dm"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v1, "di"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v1, "dp"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v1, "vs"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    const-string v1, "vr"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v1, "sv"

    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v1, "mv"

    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->getMiuiVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v1, "cv"

    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string v1, "cn"

    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v1, "sd"

    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getDeviceDensity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string p0, "wo"

    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->isWifiOnly()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_82} :catch_83

    goto :goto_87

    :catch_83
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_87
    return-object v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .registers 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v2, "-internal"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->getBuildType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 3

    .line 58
    sget-boolean v0, Lcom/miui/contentextension/utils/DeviceUtils;->sSettingsInitialized:Z

    if-nez v0, :cond_15

    .line 59
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getAppInfo(Landroid/content/Context;)Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;

    .line 60
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;-><init>(Landroid/content/Context;Lcom/miui/contentextension/utils/DeviceUtils-IA;)V

    sput-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    const/4 p0, 0x1

    .line 62
    sput-boolean p0, Lcom/miui/contentextension/utils/DeviceUtils;->sSettingsInitialized:Z

    :cond_15
    return-void
.end method

.method public static isAboveOS3Version()Z
    .registers 3

    const/4 v0, 0x0

    .line 465
    :try_start_1
    const-string v1, "ro.mi.os.version.code"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/SystemPropertiesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_12

    const/4 v2, 0x3

    if-lt v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    :catch_12
    move-exception v1

    .line 468
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isWifiOnly()Z
    .registers 2

    .line 67
    const-string v0, "ro.radio.noril"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateNetwork(Landroid/content/Context;)V
    .registers 3

    .line 408
    sget-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    if-nez v0, :cond_d

    .line 409
    new-instance v0, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;-><init>(Landroid/content/Context;Lcom/miui/contentextension/utils/DeviceUtils-IA;)V

    sput-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    goto :goto_10

    .line 411
    :cond_d
    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->-$$Nest$mupdate(Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;Landroid/content/Context;)V

    :goto_10
    return-void
.end method

.method public static updateNetworkClass(Landroid/content/Context;I)V
    .registers 3

    .line 416
    sget-object v0, Lcom/miui/contentextension/utils/DeviceUtils;->sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    if-nez v0, :cond_d

    .line 417
    new-instance p1, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;-><init>(Landroid/content/Context;Lcom/miui/contentextension/utils/DeviceUtils-IA;)V

    sput-object p1, Lcom/miui/contentextension/utils/DeviceUtils;->sNetworkController:Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;

    goto :goto_10

    .line 419
    :cond_d
    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;->-$$Nest$mupdateNetworkClass(Lcom/miui/contentextension/utils/DeviceUtils$NetworkController;I)V

    :goto_10
    return-void
.end method

.method private static useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 182
    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    const-string p0, "GB"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 184
    :cond_f
    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 185
    const-string p0, "CN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "TW"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :cond_2b
    :goto_2b
    return v1

    .line 186
    :cond_2c
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 187
    const-string p0, "BR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    const-string p0, "PT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    :cond_46
    :goto_46
    return v1

    :cond_47
    return v2
.end method
