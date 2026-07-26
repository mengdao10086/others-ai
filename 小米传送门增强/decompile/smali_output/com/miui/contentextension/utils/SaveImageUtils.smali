.class public Lcom/miui/contentextension/utils/SaveImageUtils;
.super Ljava/lang/Object;
.source "SaveImageUtils.java"


# direct methods
.method static bridge synthetic -$$Nest$smgetBitmapHeight(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/utils/SaveImageUtils;->getBitmapHeight(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetBitmapWidth(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/utils/SaveImageUtils;->getBitmapWidth(I)I

    move-result p0

    return p0
.end method

.method private static getBitmapHeight(I)I
    .registers 1

    if-eqz p0, :cond_3

    return p0

    .line 143
    :cond_3
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 146
    :cond_b
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method private static getBitmapWidth(I)I
    .registers 1

    if-eqz p0, :cond_3

    return p0

    .line 133
    :cond_3
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_b
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public static hasStoragePermission(Landroid/content/Context;)Z
    .registers 3

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 34
    :cond_8
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static saveNormalImage(Landroid/content/Context;II)V
    .registers 11

    .line 38
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 39
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBackupBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_f
    if-nez v0, :cond_12

    return-void

    .line 43
    :cond_12
    invoke-static {p0}, Lcom/miui/contentextension/utils/SaveImageUtils;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 44
    invoke-static {v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->setBackupBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/contentextension/utils/IntentUtils;->startPermissionActivity(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void

    .line 48
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    new-instance v1, Lcom/miui/contentextension/utils/SaveImageUtils$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/contentextension/utils/SaveImageUtils$2;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 50
    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 60
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 61
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/utils/SaveImageUtils$1;

    move-object v2, v1

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/contentextension/utils/SaveImageUtils$1;-><init>(Landroid/content/Context;JII)V

    .line 62
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static saveSuperImage(Landroid/content/Context;II)V
    .registers 6

    .line 106
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 107
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBackupBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_f
    if-nez v0, :cond_12

    return-void

    .line 111
    :cond_12
    invoke-static {p0}, Lcom/miui/contentextension/utils/SaveImageUtils;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 112
    invoke-static {v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->setBackupBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/contentextension/utils/IntentUtils;->startPermissionActivity(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void

    .line 116
    :cond_22
    invoke-static {v0}, Lcom/miui/contentextension/utils/SuperImageUtils;->isBitmapSupportSuperImage(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 117
    const-string v1, "Taplus.SaveImageUtils"

    const-string v2, "saveSuperImage: beyond super image limit [%d,%d], use normal mode"

    invoke-static {v1, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/utils/SaveImageUtils;->saveNormalImage(Landroid/content/Context;II)V

    return-void

    .line 122
    :cond_47
    new-instance p1, Lcom/miui/contentextension/services/SuperImageService;

    invoke-direct {p1}, Lcom/miui/contentextension/services/SuperImageService;-><init>()V

    invoke-virtual {p1, p0}, Lcom/miui/contentextension/services/SuperImageService;->startService(Landroid/content/Context;)V

    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-string v0, "save_image,image_SR"

    const-string v1, "newimage"

    const/4 v2, 0x1

    invoke-direct {p2, v2, p0, v0, v1}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
