.class public Lorg/greenrobot/eventbus/Logger$Default;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public static get()Lorg/greenrobot/eventbus/Logger;
    .registers 2

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidLogger;->isAndroidLogAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lorg/greenrobot/eventbus/Logger$Default;->getAndroidMainLooperOrNull()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 69
    new-instance v0, Lorg/greenrobot/eventbus/android/AndroidLogger;

    const-string v1, "EventBus"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/android/AndroidLogger;-><init>(Ljava/lang/String;)V

    goto :goto_19

    .line 70
    :cond_14
    new-instance v0, Lorg/greenrobot/eventbus/Logger$SystemOutLogger;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/Logger$SystemOutLogger;-><init>()V

    :goto_19
    return-object v0
.end method

.method static getAndroidMainLooperOrNull()Ljava/lang/Object;
    .registers 1

    .line 75
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    const/4 v0, 0x0

    return-object v0
.end method
