.class public Lcom/miui/contentextension/services/SuperImageService;
.super Ljava/lang/Object;
.source "SuperImageService.java"


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mImageService:Laidl/com/miui/mediafeature/superimage/ISuperImageService;

.field private mStartTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmBitmapHeight(Lcom/miui/contentextension/services/SuperImageService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/miui/contentextension/services/SuperImageService;->mBitmapHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapWidth(Lcom/miui/contentextension/services/SuperImageService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/miui/contentextension/services/SuperImageService;->mBitmapWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/ServiceConnection;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/services/SuperImageService;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/services/SuperImageService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageService(Lcom/miui/contentextension/services/SuperImageService;)Laidl/com/miui/mediafeature/superimage/ISuperImageService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/services/SuperImageService;->mImageService:Laidl/com/miui/mediafeature/superimage/ISuperImageService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Lcom/miui/contentextension/services/SuperImageService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/miui/contentextension/services/SuperImageService;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmImageService(Lcom/miui/contentextension/services/SuperImageService;Laidl/com/miui/mediafeature/superimage/ISuperImageService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/services/SuperImageService;->mImageService:Laidl/com/miui/mediafeature/superimage/ISuperImageService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSuperImage(Lcom/miui/contentextension/services/SuperImageService;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/services/SuperImageService;->doSuperImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/miui/contentextension/services/SuperImageService$1;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/services/SuperImageService$1;-><init>(Lcom/miui/contentextension/services/SuperImageService;)V

    iput-object v0, p0, Lcom/miui/contentextension/services/SuperImageService;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private doSuperImage(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/miui/contentextension/services/SuperImageService;->mImageService:Laidl/com/miui/mediafeature/superimage/ISuperImageService;

    if-nez v0, :cond_c

    .line 94
    const-string p1, "Taplus.SuperImageService"

    const-string v0, "doSuperImage: super image service is null"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/services/SuperImageService;->mBitmapHeight:I

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/services/SuperImageService;->mBitmapWidth:I

    .line 99
    new-instance v0, Lcom/miui/contentextension/services/SuperImageService$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/contentextension/services/SuperImageService$5;-><init>(Lcom/miui/contentextension/services/SuperImageService;Landroid/graphics/Bitmap;)V

    .line 100
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 117
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/services/SuperImageService$4;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/services/SuperImageService$4;-><init>(Lcom/miui/contentextension/services/SuperImageService;)V

    .line 118
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 125
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/services/SuperImageService$3;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/services/SuperImageService$3;-><init>(Lcom/miui/contentextension/services/SuperImageService;)V

    .line 126
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public startService(Landroid/content/Context;)V
    .registers 4

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/contentextension/services/SuperImageService;->mStartTime:J

    .line 78
    iput-object p1, p0, Lcom/miui/contentextension/services/SuperImageService;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/services/SuperImageService$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/contentextension/services/SuperImageService$2;-><init>(Lcom/miui/contentextension/services/SuperImageService;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method
