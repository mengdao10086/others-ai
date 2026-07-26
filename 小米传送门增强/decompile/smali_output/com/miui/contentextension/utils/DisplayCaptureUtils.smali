.class public Lcom/miui/contentextension/utils/DisplayCaptureUtils;
.super Ljava/lang/Object;
.source "DisplayCaptureUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayCaptureUtils"

.field private static mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 2

    .line 53
    sget-object v0, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_e

    .line 54
    const-string v0, "display"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    sput-object p0, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 57
    :cond_e
    sget-object p0, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getFullScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    invoke-static {p0, v2, v0, v0, v1}, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->getFullScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getFullScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;
    .registers 9

    .line 36
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "UpsideDownCake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v0, v3, :cond_13

    goto :goto_3e

    .line 40
    :cond_13
    sget-object v0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/PackageHelper;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    .line 42
    invoke-static {p0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->getScreenWH(Landroid/content/Context;)[I

    move-result-object p0

    .line 43
    new-instance p2, Landroid/graphics/Rect;

    aget p3, p0, v2

    aget p0, p0, v1

    invoke-direct {p2, v2, v2, p3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->getScreenshot(Landroid/graphics/Rect;Landroid/view/Display;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 47
    :cond_35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 37
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    .line 38
    invoke-static {p0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->getScreenWH(Landroid/content/Context;)[I

    move-result-object p0

    .line 39
    new-instance p2, Landroid/graphics/Rect;

    aget p3, p0, v2

    aget p0, p0, v1

    invoke-direct {p2, v2, v2, p3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->getScreenshotForU(Landroid/graphics/Rect;Landroid/view/Display;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenWH(Landroid/content/Context;)[I
    .registers 6

    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [I

    .line 62
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2c

    .line 64
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 65
    invoke-static {p0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    aput v1, v0, v4

    .line 66
    invoke-static {p0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    aput p0, v0, v3

    goto :goto_40

    .line 68
    :cond_2c
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput p0, v0, v4

    .line 71
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput p0, v0, v3

    .line 73
    :goto_40
    sget-object p0, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenWH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getScreenshot(Landroid/graphics/Rect;Landroid/view/Display;)Landroid/graphics/Bitmap;
    .registers 10

    .line 78
    const-string v0, "android.view.SurfaceControl"

    .line 79
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    .line 82
    :try_start_b
    const-string v4, "getAddress"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 83
    invoke-static {p1, v4, v3, v6}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/DisplayAddress;

    .line 84
    instance-of v6, v4, Landroid/view/DisplayAddress$Physical;

    if-nez v6, :cond_35

    .line 85
    sget-object p0, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping Screenshot - Default display does not have a physical address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_db

    :catch_32
    move-exception p0

    goto/16 :goto_d8

    .line 89
    :cond_35
    check-cast v4, Landroid/view/DisplayAddress$Physical;

    .line 91
    const-string p1, "getPhysicalDisplayId"

    new-array v6, v5, [Ljava/lang/Object;

    .line 92
    invoke-static {v4, p1, v3, v6}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getPhysicalDisplayToken"

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    .line 98
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 95
    invoke-static {v4, v6, v7, p1}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    .line 99
    const-string v4, "android.view.SurfaceControl$DisplayCaptureArgs$Builder"

    .line 101
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v6, Landroid/os/IBinder;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 100
    invoke-static {v4, v6, p1}, Lcom/miui/contentextension/utils/ReflectUtil;->newObject(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 104
    const-string v4, "setSourceCrop"

    const-class v6, Landroid/graphics/Rect;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v4, v6, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string p0, "setSize"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-static {p1, p0, v4, v1}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string p0, "build"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p0, v3, v1}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 113
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "android.view.SurfaceControl$ScreenshotHardwareBuffer"

    .line 114
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "captureDisplay"

    const-string v2, "android.view.SurfaceControl$DisplayCaptureArgs"

    .line 116
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 112
    invoke-static {p1, v0, v1, v2, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_bd

    goto :goto_c8

    .line 120
    :cond_bd
    const-string p1, "asBitmap"

    new-array v0, v5, [Ljava/lang/Object;

    .line 121
    invoke-static {p0, p1, v3, v0}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    move-object v3, p0

    :goto_c8
    if-eqz v3, :cond_db

    .line 125
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, p0, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d0} :catch_32

    .line 126
    :try_start_d0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d5

    move-object v3, p0

    goto :goto_db

    :catch_d5
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    .line 130
    :goto_d8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_db
    :goto_db
    return-object v3
.end method

.method public static getScreenshotForU(Landroid/graphics/Rect;Landroid/view/Display;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v0, 0x0

    .line 138
    :try_start_1
    const-string v1, "getAddress"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 139
    invoke-static {p1, v1, v3, v0}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DisplayAddress;

    .line 141
    instance-of v1, v1, Landroid/view/DisplayAddress$Physical;

    if-nez v1, :cond_2b

    .line 142
    sget-object p0, Lcom/miui/contentextension/utils/DisplayCaptureUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping Screenshot - Default display does not have a physical address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    :catch_28
    move-exception p0

    goto/16 :goto_c3

    .line 146
    :cond_2b
    const-string p1, "android.window.ScreenCapture$CaptureArgs$Builder"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 147
    const-string v1, "android.window.ScreenCapture$CaptureArgs"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 148
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/miui/contentextension/utils/ReflectUtil;->newObject(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 149
    const-string v3, "setSourceCrop"

    const-class v4, Landroid/graphics/Rect;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 150
    const-string p1, "build"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v3}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 151
    const-string p1, "android.window.ScreenCapture"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 152
    const-string v3, "createSyncCaptureListener"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v0, v4}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 153
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 154
    const-string v4, "android.window.ScreenCapture$ScreenCaptureListener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 155
    const-string v5, "captureDisplay"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v1, v4}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v5, v1, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string p0, "getBuffer"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v1}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_92

    move-object p1, v0

    goto :goto_9c

    .line 157
    :cond_92
    const-string p1, "asBitmap"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9c} :catch_28

    :goto_9c
    if-eqz p1, :cond_c1

    .line 162
    :try_start_9e
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a4} :catch_be

    .line 163
    :try_start_a4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    const-string p1, "getHardwareBuffer"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v3}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_bc

    .line 167
    const-string p1, "close"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v2}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b8} :catch_b9

    goto :goto_bc

    :catch_b9
    move-exception p0

    move-object v0, v1

    goto :goto_c3

    :cond_bc
    :goto_bc
    move-object v0, v1

    goto :goto_c6

    :catch_be
    move-exception p0

    move-object v0, p1

    goto :goto_c3

    :cond_c1
    move-object v0, p1

    goto :goto_c6

    .line 172
    :goto_c3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c6
    return-object v0
.end method
