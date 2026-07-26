.class public Lcom/miui/contentextension/utils/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/contentextension/utils/Utilities;->HANDLER:Landroid/os/Handler;

    .line 55
    const-string v16, "e"

    const-string v17, "f"

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    const-string v9, "7"

    const-string v10, "8"

    const-string v11, "9"

    const-string v12, "a"

    const-string v13, "b"

    const-string v14, "c"

    const-string v15, "d"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/Utilities;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public static VMRuntime_clearGrowthLimit()V
    .registers 5

    .line 420
    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    .line 421
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getRuntime"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 420
    invoke-static {v0, v1, v4, v3}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 422
    const-string v1, "clearGrowthLimit"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v0

    .line 424
    const-string v1, "Taplus.ContentExtension"

    const-string v2, "Invoke | VMRuntime_clearGrowthLimit() "

    invoke-static {v1, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public static closeFileSafely(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 150
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 77
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 81
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_42

    :catch_27
    move-exception p0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "copyToClipboard:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.Utilities"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    return-void
.end method

.method public static cropToSquare(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    .line 232
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    if-eqz p1, :cond_54

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_12

    return-object p1

    .line 237
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 240
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_48

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    :cond_48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-object p0

    :cond_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 128
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p0

    .line 130
    const-string p1, "Taplus.ContentExtension"

    const-string v0, "getApplicationIcon"

    invoke-static {p1, v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 139
    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p0

    .line 142
    const-string p1, "Taplus.ContentExtension"

    const-string v0, "getApplicationLabel"

    invoke-static {p1, v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static getComposedImage(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;
    .registers 13

    .line 254
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    if-eqz p1, :cond_d3

    if-eqz p2, :cond_d3

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 259
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 260
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 262
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    if-eqz p4, :cond_ad

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    int-to-float p1, p5

    .line 267
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float p5, p1, p5

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 268
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr p5, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v2, v4

    invoke-virtual {v0, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 270
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p4, v3, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 273
    :cond_ad
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 274
    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 275
    invoke-virtual {v0, p2, v3, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_c9

    .line 277
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p3, v3, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    :cond_c9
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_d3
    if-nez p1, :cond_d7

    const/4 p0, 0x0

    goto :goto_e1

    .line 282
    :cond_d7
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p0, p2

    :goto_e1
    return-object p0
.end method

.method public static getCurrentPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 224
    invoke-static {p0}, Lcom/miui/contentextension/utils/Utilities;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 226
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 2

    .line 215
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x0

    .line 218
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 105
    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_9} :catch_c

    .line 109
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isForceFullScreenGesture(Landroid/content/Context;)Z
    .registers 3

    .line 410
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 413
    const-string v0, "Taplus.ContentExtension"

    const-string v1, "isForceFullScreenGesture "

    invoke-static {v0, v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 340
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_14

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    :catch_14
    move-exception p0

    .line 342
    const-string p1, "Taplus.ContentExtension"

    const-string v0, "Exception "

    invoke-static {p1, v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static isSupportVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_62

    .line 361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_62

    .line 366
    :cond_10
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/Utilities;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v0

    .line 371
    :cond_1b
    const-string p1, "\\."

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 372
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 375
    :try_start_25
    array-length p2, p0

    array-length v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v1, v0

    :goto_2c
    const/4 v2, 0x1

    if-ge v1, p2, :cond_46

    .line 377
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 378
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_3b} :catch_44

    if-le v3, v4, :cond_3e

    return v2

    :cond_3e
    if-ge v3, v4, :cond_41

    return v0

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :catch_44
    move-exception p0

    goto :goto_48

    :cond_46
    move v0, v2

    goto :goto_62

    .line 388
    :goto_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isSupportVersion:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.ContentExtension"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    return v0
.end method
