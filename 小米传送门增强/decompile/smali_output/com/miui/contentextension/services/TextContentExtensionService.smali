.class public Lcom/miui/contentextension/services/TextContentExtensionService;
.super Landroid/app/Service;
.source "TextContentExtensionService.java"

# interfaces
.implements Lcom/miui/contentextension/data/common/ContentExtensionConfig$ContentExtensionConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;,
        Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;,
        Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;,
        Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;
    }
.end annotation


# static fields
.field private static mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult; = null

.field private static sBackupBitmap:Landroid/graphics/Bitmap; = null

.field private static sBitmap:Landroid/graphics/Bitmap; = null

.field private static sClipboardContent:Ljava/lang/String; = null

.field private static sContent:Ljava/lang/String; = null

.field private static sContentRect:Landroid/graphics/Rect; = null

.field private static sFirstTouchPoint:Landroid/graphics/PointF; = null

.field private static sInjectorActivity:Ljava/lang/String; = null

.field private static sInjectorPackage:Ljava/lang/String; = null

.field private static sInjectorPoint:Landroid/graphics/Point; = null

.field private static sIsClipboardViewShowing:Z = false

.field private static sIsMainFloatViewShowing:Z = false

.field private static sIsOtherMode:Z = false

.field private static sIsTaskFinished:Z = true

.field private static sIsTextMode:Z = true

.field private static sKeyboardIsShowing:Z = false

.field private static final sLock:Ljava/lang/Object;

.field private static sSecondTouchPoint:Landroid/graphics/PointF;


# instance fields
.field private final mCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

.field private final mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

.field private mHomeKeyReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;

.field private mIsInit:Z

.field private mIsTesting:Z

.field private mKeyboardReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;

.field private mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

.field private mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field private mUserChangedReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;

.field private mWatchedActivityObserver:Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;

.field private final message:Ljava/lang/Runnable;

.field private sIsForGuide:Z

.field private sPresentationType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-YwO2BhijerlVbpycye_jmnZshY(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->startPickTextTask()V

    return-void
.end method

.method public static synthetic $r8$lambda$TnOVtPiZLy4XsTrJTF-0zXkfNus(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->lambda$onStartCommand$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTesting(Lcom/miui/contentextension/services/TextContentExtensionService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsTesting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misCommerceString(Lcom/miui/contentextension/services/TextContentExtensionService;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/services/TextContentExtensionService;->isCommerceString(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDisable(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->onDisable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartPick(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->onStartPick()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mquitMainFloatView(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitMainFloatView(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mquitSplashFloatView(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitSplashFloatView(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsIsMainFloatViewShowing()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsMainFloatViewShowing:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsIsTaskFinished()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsKeyboardIsShowing()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sKeyboardIsShowing:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmCatcherResult(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsKeyboardIsShowing(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sKeyboardIsShowing:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsTesting:Z

    .line 123
    iput-boolean v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsInit:Z

    .line 141
    const-string v1, "forbidden"

    iput-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sPresentationType:Ljava/lang/String;

    .line 143
    iput-boolean v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsForGuide:Z

    .line 148
    new-instance v0, Lmiui/contentcatcher/sdk/ClientToken;

    const-string v1, "com.miui.contentextension"

    invoke-direct {v0, v1}, Lmiui/contentcatcher/sdk/ClientToken;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

    .line 150
    new-instance v0, Lcom/miui/contentextension/services/TextContentExtensionService$1;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/services/TextContentExtensionService$1;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    iput-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    .line 1006
    new-instance v0, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda0;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    iput-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->message:Ljava/lang/Runnable;

    return-void
.end method

.method private QJtoBJ(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 583
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 584
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    .line 585
    :goto_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 586
    aget-char v3, v1, v2

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_27

    .line 587
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 589
    :cond_27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 592
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cancelStopSelfJob()V
    .registers 4

    .line 1009
    const-string v0, "cancelStopSelf"

    const-string v1, "Taplus.TextContentExtensionService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->message:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/miui/contentextension/setting/TaplusWorker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1011
    invoke-static {}, Lcom/miui/contentextension/App;->getHandler()Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1012
    const-string v0, "removeMessages"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-static {}, Lcom/miui/contentextension/App;->getHandler()Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_27
    return-void
.end method

.method public static clearResult()V
    .registers 1

    const/4 v0, 0x0

    .line 322
    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    return-void
.end method

.method private createFloatView()V
    .registers 5

    .line 908
    const-string v0, "Taplus.TextContentExtensionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create float view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_1b
    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    if-nez v1, :cond_31

    .line 911
    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;-><init>(Landroid/content/Context;Lcom/miui/contentextension/services/TextContentExtensionService;Z)V

    iput-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    .line 912
    invoke-virtual {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->createFloatView()V

    goto :goto_31

    :catchall_2f
    move-exception v1

    goto :goto_48

    .line 914
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    if-nez v1, :cond_43

    .line 915
    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;-><init>(Landroid/content/Context;Lcom/miui/contentextension/services/TextContentExtensionService;)V

    iput-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    .line 916
    invoke-virtual {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->createFloatView()V

    .line 918
    :cond_43
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->cancelStopSelfJob()V

    .line 919
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_2f

    throw v1
.end method

.method private createSplashFloatView()V
    .registers 5

    .line 923
    const-string v0, "Taplus.TextContentExtensionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create clipboard float view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_1b
    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    if-nez v1, :cond_31

    .line 926
    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;-><init>(Landroid/content/Context;Lcom/miui/contentextension/services/TextContentExtensionService;Z)V

    iput-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    .line 927
    invoke-virtual {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->createFloatView()V

    goto :goto_31

    :catchall_2f
    move-exception v1

    goto :goto_36

    .line 929
    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->cancelStopSelfJob()V

    .line 930
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_2f

    throw v1
.end method

.method private destroyFloatView()V
    .registers 3

    .line 872
    const-string v0, "Taplus.TextContentExtensionService"

    const-string v1, "destroy float view"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 875
    invoke-virtual {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->onDestroy()V

    .line 876
    iput-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    .line 878
    :cond_11
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    if-eqz v0, :cond_1a

    .line 879
    invoke-virtual {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->onDestroy()V

    .line 880
    iput-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    :cond_1a
    return-void
.end method

.method private endMonitor()V
    .registers 3

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mHomeKeyReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;

    if-eqz v0, :cond_7

    .line 258
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    .line 263
    :catch_7
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mWatchedActivityObserver:Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;

    if-eqz v0, :cond_19

    .line 264
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mWatchedActivityObserver:Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method

.method public static getBackupBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 828
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sBackupBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 829
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sBackupBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 817
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 818
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getClipboardContent()Ljava/lang/String;
    .registers 1

    .line 839
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sClipboardContent:Ljava/lang/String;

    return-object v0
.end method

.method public static getInjectorActivity()Ljava/lang/String;
    .registers 1

    .line 983
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    return-object v0
.end method

.method public static getInjectorPackage()Ljava/lang/String;
    .registers 1

    .line 979
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static getInjectorPoint()Landroid/graphics/Point;
    .registers 1

    .line 963
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private getPrivacyUpdateInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 399
    const-string v0, "taplus"

    invoke-static {p1}, Lcom/miui/contentextension/utils/DeviceUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/privacypolicy/PrivacyManager;->requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPrivacyUpdate result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.TextContentExtensionService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 403
    :try_start_2e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 404
    const-string p1, "translation"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 406
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 410
    const-string v0, "\n"

    const-string v2, "<br>"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_71} :catch_72

    return-object p1

    :catch_72
    move-exception p1

    .line 414
    const-string v0, "checkPrivacyUpdate error"

    invoke-static {v1, v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    :cond_78
    const-string p1, ""

    return-object p1
.end method

.method private getPropertyConfig(Ljava/util/Map;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 723
    const-string v0, "1"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 725
    invoke-static {p2}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getPropertyConfig(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11
    const/16 p1, 0x100

    return p1
.end method

.method private initPresentationType(Lmiui/contentcatcher/sdk/ClientCatcherResult;)Z
    .registers 8

    .line 677
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getPropertyMap()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_bb

    .line 679
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_bb

    .line 680
    const-string v2, "ismultiscreen"

    invoke-direct {p0, p1, v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->getPropertyConfig(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initPresentationType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "--propertyMap:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Taplus.TextContentExtensionService"

    invoke-static {v4, v3}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v3, "isfullscreen"

    invoke-direct {p0, p1, v3}, Lcom/miui/contentextension/services/TextContentExtensionService;->getPropertyConfig(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    or-int/lit16 v3, v3, 0x100

    .line 688
    const-string v5, "isedittext"

    invoke-direct {p0, p1, v5}, Lcom/miui/contentextension/services/TextContentExtensionService;->getPropertyConfig(Ljava/util/Map;Ljava/lang/String;)I

    move-result v5

    or-int/2addr v3, v5

    .line 689
    const-string v5, "actionbarvisible"

    invoke-direct {p0, p1, v5}, Lcom/miui/contentextension/services/TextContentExtensionService;->getPropertyConfig(Ljava/util/Map;Ljava/lang/String;)I

    move-result v5

    or-int/2addr v3, v5

    .line 690
    invoke-direct {p0, p1, v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->getPropertyConfig(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v3

    .line 691
    sget-boolean v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTextMode:Z

    if-eqz v3, :cond_5a

    and-int/2addr v2, v1

    if-eqz v2, :cond_5a

    .line 692
    const-string p1, "otherforbidden"

    invoke-static {p1}, Lcom/miui/contentextension/analy/Analy;->trackStartFailedEvent(Ljava/lang/String;)V

    return v0

    .line 696
    :cond_5a
    :try_start_5a
    const-string v2, "coordinate"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bb

    .line 698
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 699
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 700
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 701
    new-instance v3, Landroid/graphics/Point;

    float-to-int v2, v2

    float-to-int p1, p1

    invoke-direct {v3, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPoint:Landroid/graphics/Point;

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 parseCoordinate: injector Point = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_a1} :catch_a2

    goto :goto_bb

    :catch_a2
    move-exception p1

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "propertyMap get  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_bb
    :goto_bb
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    sget-object v4, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    sget-object v5, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getConfigWithUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sPresentationType:Ljava/lang/String;

    .line 713
    const-string v2, "forbidden"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 714
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isForbiddenByUser()Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 715
    const-string p1, "userforbidden"

    goto :goto_e6

    .line 716
    :cond_e4
    const-string p1, "cmsforbidden"

    .line 714
    :goto_e6
    invoke-static {p1}, Lcom/miui/contentextension/analy/Analy;->trackStartFailedEvent(Ljava/lang/String;)V

    return v0

    :cond_ea
    return v1
.end method

.method private initSettings()V
    .registers 3

    .line 296
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/services/TextContentExtensionService$2;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/services/TextContentExtensionService$2;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isCommerceString(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 526
    invoke-static {p1}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->getCommerceRulesFromCloudOrAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_26

    .line 530
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    invoke-virtual {p0, p2, v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->isMatchCommerce(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_26
    :goto_26
    return v0
.end method

.method public static isOtherMode()Z
    .registers 1

    .line 958
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsOtherMode:Z

    if-eqz v0, :cond_10

    .line 959
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    .line 958
    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isTextMode()Z
    .registers 1

    .line 954
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTextMode:Z

    return v0
.end method

.method private judgeIsOtherMode(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .registers 3

    .line 596
    const-string v0, "image_pick"

    invoke-virtual {p1, v0}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 600
    :cond_9
    const-string v0, "image_pick_mode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_30

    .line 603
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "imgUrl"

    .line 604
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "viewBitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    const/4 p1, 0x1

    .line 605
    sput-boolean p1, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsOtherMode:Z

    :cond_30
    return-void
.end method

.method private synthetic lambda$onStartCommand$0(Ljava/lang/String;)V
    .registers 2

    .line 287
    invoke-direct {p0, p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->startClipboardTask(Ljava/lang/String;)V

    return-void
.end method

.method private onDisable()V
    .registers 3

    .line 305
    const-string v0, "Taplus.TextContentExtensionService"

    const-string v1, "onDisable"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 307
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->cancelJob(Landroid/content/Context;)V

    return-void
.end method

.method private onInit()V
    .registers 11

    .line 183
    const-string v0, "Taplus.TextContentExtensionService"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsInit:Z

    .line 184
    new-instance v2, Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;Lcom/miui/contentextension/services/TextContentExtensionService-IA;)V

    iput-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mWatchedActivityObserver:Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;

    .line 185
    new-instance v2, Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    iput-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mUserChangedReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;

    .line 186
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mUserChangedReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v2, v5}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 189
    new-instance v2, Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    iput-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mHomeKeyReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;

    .line 190
    new-instance v6, Landroid/content/IntentFilter;

    const-string v2, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v5, Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;

    invoke-direct {v5, p0}, Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    iput-object v5, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mKeyboardReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 192
    const-string v7, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 193
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->init(Lcom/miui/contentextension/data/common/ContentExtensionConfig$ContentExtensionConfigListener;)V

    .line 195
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->startMonitor()V

    .line 196
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->initSettings()V

    .line 197
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->scheduleJob(Landroid/content/Context;)V

    .line 200
    :try_start_52
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_81

    .line 202
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "getInputMethodWindowVisibleHeight"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v3, v6}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_81

    .line 205
    sput-boolean v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sKeyboardIsShowing:Z

    .line 206
    const-string v1, "onInit sKeyboardIsShowing: true"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7a} :catch_7b

    goto :goto_81

    :catch_7b
    move-exception v1

    .line 210
    const-string v2, "keyBoardIsShowing"

    invoke-static {v0, v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :cond_81
    :goto_81
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->registerContentListener()V

    .line 214
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 215
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_95
    return-void
.end method

.method private onPickImage(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .registers 6

    .line 612
    invoke-direct {p0, p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->initPresentationType(Lmiui/contentcatcher/sdk/ClientCatcherResult;)Z

    move-result v0

    const-string v1, "Taplus.TextContentExtensionService"

    if-nez v0, :cond_e

    .line 613
    const-string p1, "not presentation case"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 617
    :cond_e
    const-string v0, "image_pick"

    invoke-virtual {p1, v0}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 619
    const-string p1, "content_empty"

    invoke-static {p1}, Lcom/miui/contentextension/analy/Analy;->trackStartFailedEvent(Ljava/lang/String;)V

    return-void

    .line 623
    :cond_1c
    const-string v0, "image_pick_mode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 624
    const-string v0, "imgUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 625
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    return-void

    .line 629
    :cond_37
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_50
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 633
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/IconManager;->loadImageSync(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sBitmap:Landroid/graphics/Bitmap;

    .line 634
    const-string v2, "onPickImage: get bitmap from url"

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imgUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 637
    :cond_7c
    const-string v0, "viewBitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 638
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sBitmap:Landroid/graphics/Bitmap;

    .line 639
    const-string v0, "onPickImage: get bitmap from viewBitmap"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_91
    :goto_91
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 643
    :cond_9b
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 644
    const-string p1, "image_null"

    invoke-static {p1}, Lcom/miui/contentextension/analy/Analy;->trackStartFailedEvent(Ljava/lang/String;)V

    return-void

    .line 647
    :cond_ab
    const-string v0, "onPickImage: bitmap is null"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_b0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->parseTouchPointsAndViewRect(Landroid/os/Bundle;)V

    .line 651
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda3;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/setting/TaplusWorker;->postToMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStartPick()V
    .registers 6

    .line 326
    invoke-static {p0}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Taplus.TextContentExtensionService"

    if-eqz v0, :cond_e

    .line 327
    const-string v0, "onPickModeStart: J18 PC mode"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 330
    :cond_e
    iget-boolean v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsTesting:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_fa

    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    if-eqz v0, :cond_fa

    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    if-eqz v0, :cond_fa

    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sKeyboardIsShowing:Z

    if-eqz v0, :cond_22

    goto/16 :goto_fa

    .line 336
    :cond_22
    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 337
    const-string v0, "press operation, but is flip device\uff0creturn false"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_36
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 341
    const-string v0, "onPickModeStart mEnabled = false"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_46
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    invoke-virtual {v0}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    const-string v4, "observe_control_event"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 345
    const-string v0, "contains observe_control_event return"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_5a
    invoke-direct {p0, p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->getPrivacyUpdateInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 350
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/services/TextContentExtensionService$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/contentextension/services/TextContentExtensionService$3;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/miui/contentextension/setting/TaplusWorker;->postToMain(Ljava/lang/Runnable;)V

    return-void

    .line 359
    :cond_71
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->isShowPrivacyDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7c

    return-void

    .line 363
    :cond_7c
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    invoke-direct {p0, v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->parseInjectorToken(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V

    .line 365
    sput-boolean v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsOtherMode:Z

    .line 366
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    const-string v4, "text_pick"

    invoke-virtual {v0, v4}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 367
    sput-boolean v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTextMode:Z

    .line 368
    const-string v0, "callback get pick content as TEXT"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->shouldShowPrivacyPage(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "text"

    if-eqz v0, :cond_a4

    .line 370
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    sget-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/miui/contentextension/utils/IntentUtils;->startPrivacyActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    .line 372
    :cond_a4
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    sget-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/miui/contentextension/analy/Analy;->trackStartEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    invoke-virtual {p0, v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->onPickText(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V

    goto :goto_f9

    .line 375
    :cond_b1
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    const-string v2, "image_pick"

    invoke-virtual {v0, v2}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 376
    sput-boolean v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTextMode:Z

    .line 377
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    invoke-direct {p0, v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->judgeIsOtherMode(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V

    .line 378
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsOtherMode:Z

    if-eqz v0, :cond_cc

    .line 379
    const-string v0, "callback get pick content as OTHER"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 381
    :cond_cc
    const-string v0, "callback get pick content as IMAGE"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_d1
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->shouldShowPrivacyPage(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "image"

    const-string v2, "other"

    if-eqz v0, :cond_e8

    .line 384
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsOtherMode:Z

    if-eqz v0, :cond_e0

    move-object v1, v2

    :cond_e0
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    sget-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/miui/contentextension/utils/IntentUtils;->startPrivacyActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    .line 386
    :cond_e8
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsOtherMode:Z

    if-eqz v0, :cond_ed

    move-object v1, v2

    :cond_ed
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    sget-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/miui/contentextension/analy/Analy;->trackStartEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    invoke-direct {p0, v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->onPickImage(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V

    :cond_f9
    :goto_f9
    return-void

    .line 331
    :cond_fa
    :goto_fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPickModeStart return -- isTesting:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsTesting:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "--result:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/contentextension/services/TextContentExtensionService;->mCatcherResult:Lmiui/contentcatcher/sdk/ClientCatcherResult;

    if-nez v4, :cond_113

    goto :goto_114

    :cond_113
    move v2, v3

    :goto_114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--isTaskFinished:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--sKeyboardIsShowing\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sKeyboardIsShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseInjectorToken(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .registers 4

    .line 655
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getInjectorToken()Lmiui/contentcatcher/sdk/Token;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 656
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getInjectorToken()Lmiui/contentcatcher/sdk/Token;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    .line 657
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getInjectorToken()Lmiui/contentcatcher/sdk/Token;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    .line 658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1 sInjectorActivity:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.TextContentExtensionService"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sput-object v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPoint:Landroid/graphics/Point;

    goto :goto_38

    .line 661
    :cond_36
    sput-object v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    :goto_38
    return-void
.end method

.method private parseTouchPointsAndViewRect(Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x0

    .line 553
    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContentRect:Landroid/graphics/Rect;

    .line 554
    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sFirstTouchPoint:Landroid/graphics/PointF;

    .line 555
    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sSecondTouchPoint:Landroid/graphics/PointF;

    .line 556
    const-string v0, "touch_points"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Taplus.TextContentExtensionService"

    if-eqz v1, :cond_5f

    .line 557
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 559
    array-length v1, v0

    if-lez v1, :cond_3b

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v3, v1, Landroid/graphics/PointF;

    if-eqz v3, :cond_3b

    .line 560
    check-cast v1, Landroid/graphics/PointF;

    sput-object v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sFirstTouchPoint:Landroid/graphics/PointF;

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2 parseTouchPointsAndViewRect: first point = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sFirstTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_3b
    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_5f

    aget-object v0, v0, v3

    instance-of v1, v0, Landroid/graphics/PointF;

    if-eqz v1, :cond_5f

    .line 564
    check-cast v0, Landroid/graphics/PointF;

    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sSecondTouchPoint:Landroid/graphics/PointF;

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2 parseTouchPointsAndViewRect: second point = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sSecondTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_5f
    const-string v0, "view_rect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 570
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_8d

    .line 571
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    sput-object p1, Lcom/miui/contentextension/services/TextContentExtensionService;->sContentRect:Landroid/graphics/Rect;

    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2 parseTouchPointsAndViewRect: view rect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    return-void
.end method

.method private quitMainFloatView(Ljava/lang/String;Z)V
    .registers 4

    .line 1074
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    if-eqz v0, :cond_1e

    .line 1075
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->trackQuitByDefault(Ljava/lang/String;)V

    .line 1076
    const-string p1, "Taplus.TextContentExtensionService"

    if-eqz p2, :cond_16

    .line 1077
    const-string p2, "quitMainFloatView -> hideMainFloatView"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->hideMainFloatView()V

    return-void

    .line 1081
    :cond_16
    const-string p2, "service cancel task from quitMainFloatView"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->cancelTask()V

    :cond_1e
    return-void
.end method

.method private quitSplashFloatView(Ljava/lang/String;Z)V
    .registers 4

    .line 1061
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    if-eqz v0, :cond_1f

    .line 1062
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->trackQuitByDefault(Ljava/lang/String;)V

    .line 1063
    const-string p1, "Taplus.TextContentExtensionService"

    if-eqz p2, :cond_17

    .line 1064
    const-string p2, "quitSplashFloatView -> hideSplashFloatView"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    return-void

    .line 1068
    :cond_17
    const-string p2, "service cancel task from quitSplashFloatView"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->cancelTask()V

    :cond_1f
    return-void
.end method

.method private registerContentListener()V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

    const-string v1, "text_pick"

    invoke-virtual {v0, v1}, Lmiui/contentcatcher/sdk/ClientToken;->setJobTag(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

    invoke-virtual {v0}, Lmiui/contentcatcher/sdk/ClientToken;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "observe_control_event"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

    iget-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    invoke-virtual {v0, v1, v2}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V

    return-void
.end method

.method private scheduleStopSelfJob()V
    .registers 5

    .line 999
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    if-nez v0, :cond_5

    return-void

    .line 1002
    :cond_5
    const-string v0, "Taplus.TextContentExtensionService"

    const-string v1, "scheduleStopSelf"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->message:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/contentextension/setting/TaplusWorker;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static setBackupBitmap(Landroid/graphics/Bitmap;)V
    .registers 1

    .line 835
    sput-object p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sBackupBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setBitmap(Landroid/graphics/Bitmap;)V
    .registers 1

    .line 824
    sput-object p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setIsTaskFinished(Z)V
    .registers 1

    .line 967
    sput-boolean p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    return-void
.end method

.method private startClipboardTask(Ljava/lang/String;)V
    .registers 4

    .line 502
    const-string v0, "startClipboardTask"

    const-string v1, "Taplus.TextContentExtensionService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsClipboardViewShowing:Z

    if-eqz v0, :cond_11

    .line 504
    const-string p1, "startClipboardTask, but clipboard is showing now"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 507
    :cond_11
    invoke-static {p0}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->getCommerceRulesIfNeed(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 508
    sput-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    const/4 v0, 0x1

    .line 509
    sput-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsClipboardViewShowing:Z

    .line 510
    invoke-virtual {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->destroySplashFloatView()V

    .line 511
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->createSplashFloatView()V

    .line 512
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/services/TextContentExtensionService$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/contentextension/services/TextContentExtensionService$4;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startMonitor()V
    .registers 4

    .line 243
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mHomeKeyReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    .line 248
    :catch_d
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mWatchedActivityObserver:Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method private startPickTextTask()V
    .registers 4

    .line 487
    invoke-static {}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->clearContents()V

    const/4 v0, 0x0

    .line 488
    sput-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    .line 489
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->destroyFloatView()V

    .line 490
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->createFloatView()V

    .line 491
    const-string v0, "Taplus.TextContentExtensionService"

    const-string v1, "startPickTask"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 493
    invoke-static {v0}, Lcom/miui/contentextension/data/http/HostConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    .line 492
    invoke-static {p0, v1, v2}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->tryToGetRecommendation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->getTextSegmentResponse(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 495
    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->getInstance()Lcom/miui/contentextension/data/cms/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->tryToUpdateConfig()V

    return-void
.end method

.method private stopSelfProcess()V
    .registers 4

    .line 1018
    invoke-static {p0}, Lcom/miui/contentextension/utils/Utilities;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSelfProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.TextContentExtensionService"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2f

    .line 1020
    const-string v1, "com.miui.contentextension"

    .line 1021
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1022
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .registers 4

    .line 848
    const-string v0, "Taplus.TextContentExtensionService"

    const-string v1, "cancelTask"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 849
    sput-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    const/4 v0, 0x0

    .line 850
    sput-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsMainFloatViewShowing:Z

    .line 851
    iput-boolean v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsForGuide:Z

    const/4 v1, 0x0

    .line 852
    sput-object v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    .line 853
    sput-object v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sBitmap:Landroid/graphics/Bitmap;

    .line 854
    invoke-static {p0}, Lcom/miui/contentextension/utils/SaveImageUtils;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 855
    sput-object v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sBackupBitmap:Landroid/graphics/Bitmap;

    .line 857
    :cond_1c
    invoke-static {}, Lcom/miui/contentextension/utils/ToastUtils;->cancel()V

    .line 858
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->destroyFloatView()V

    .line 859
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->scheduleStopSelfJob()V

    .line 860
    sput-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsClipboardViewShowing:Z

    return-void
.end method

.method public destroySplashFloatView()V
    .registers 3

    .line 864
    const-string v0, "Taplus.TextContentExtensionService"

    const-string v1, "destroy clipboard float view"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    if-eqz v0, :cond_11

    .line 866
    invoke-virtual {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->onDestroy()V

    const/4 v0, 0x0

    .line 867
    iput-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mSplashFloatView:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    :cond_11
    return-void
.end method

.method public getContentRect()Landroid/graphics/Rect;
    .registers 2

    .line 987
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFirstTouchPoint()Landroid/graphics/PointF;
    .registers 2

    .line 991
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sFirstTouchPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getSecondTouchPoint()Landroid/graphics/PointF;
    .registers 2

    .line 995
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sSecondTouchPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public isMatchCommerce(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 540
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 541
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMatchCommerce error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Taplus.TextContentExtensionService"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigLoadFinished()V
    .registers 6

    .line 944
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPackage:Ljava/lang/String;

    sget-object v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorActivity:Ljava/lang/String;

    sget-object v4, Lcom/miui/contentextension/services/TextContentExtensionService;->sInjectorPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getConfigWithUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->sPresentationType:Ljava/lang/String;

    .line 946
    const-string v1, "forbidden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    if-nez v0, :cond_31

    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsClipboardViewShowing:Z

    if-nez v0, :cond_31

    .line 948
    const-string v0, "Taplus.TextContentExtensionService"

    const-string v1, "quitByDefault from config forbidden"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v0, "other"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V

    :cond_31
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 230
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    iget-boolean p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsInit:Z

    if-nez p1, :cond_8

    return-void

    .line 234
    :cond_8
    sget-boolean p1, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    if-nez p1, :cond_19

    .line 235
    const-string p1, "Taplus.TextContentExtensionService"

    const-string v0, "quitByDefault from onConfigurationChanged"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string p1, "other"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V

    .line 238
    :cond_19
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/DeviceConfig;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 176
    invoke-static {p0}, Lcom/miui/contentextension/utils/AdaptUtils$AdaptO;->startForeground(Landroid/app/Service;)V

    .line 177
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 178
    const-string v0, "Taplus.TextContentExtensionService"

    const-string v1, "service on create "

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->onInit()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 886
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 887
    const-string v0, "service on destroy"

    const-string v1, "Taplus.TextContentExtensionService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-boolean v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsInit:Z

    if-nez v0, :cond_f

    return-void

    .line 893
    :cond_f
    :try_start_f
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 894
    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

    invoke-virtual {v0, v2}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V

    .line 895
    invoke-static {}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->onDestroy()V

    .line 896
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->onDestroy()V

    .line 897
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mUserChangedReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 898
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mKeyboardReceiver:Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 899
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->endMonitor()V

    .line 900
    invoke-static {}, Lcom/miui/contentextension/utils/DisposableHelper;->getInstance()Lcom/miui/contentextension/utils/DisposableHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/DisposableHelper;->clear()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception v0

    .line 902
    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    :goto_40
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->stopSelfProcess()V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/contentextension/setting/cta/CtaEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 315
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventMainThread ctaEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/cta/CtaEvent;->isAgree()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.TextContentExtensionService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p1}, Lcom/miui/contentextension/setting/cta/CtaEvent;->isAgree()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 317
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->reloadAllConfigsIfNeed()V

    :cond_2a
    return-void
.end method

.method public onPickText(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .registers 10

    .line 421
    const-string v0, "viewContent"

    const-string v1, "Taplus.TextContentExtensionService"

    const-string v2, "text_pick"

    invoke-virtual {p1, v2}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_147

    .line 422
    const-string v3, "pick_mode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_147

    .line 424
    :try_start_14
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 425
    instance-of v5, v4, Ljava/lang/CharSequence;

    if-eqz v5, :cond_29

    .line 426
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    goto/16 :goto_fe

    :catch_26
    move-exception v0

    goto/16 :goto_e6

    .line 427
    :cond_29
    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_fe

    .line 428
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 429
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 430
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onPickText sContent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e1

    .line 433
    :cond_57
    const-string v0, "apkName"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    const-string v3, "apkVersion"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 435
    const-string v5, "apkParamList"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onPickModeStart  Bundle packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " version:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_e5

    .line 438
    array-length v0, v5

    if-nez v0, :cond_8c

    goto :goto_e5

    .line 440
    :cond_8c
    :goto_8c
    array-length v0, v5

    if-ge v4, v0, :cond_e1

    .line 442
    aget-object v0, v5, v4

    if-eqz v0, :cond_de

    const-string v3, "miui"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    aget-object v0, v5, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-le v0, v3, :cond_de

    .line 443
    aget-object v0, v5, v4

    const-string v6, "miuiCE_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 444
    aget-object v0, v5, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cekey:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sContent:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 454
    :cond_e1
    :goto_e1
    invoke-direct {p0, v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->parseTouchPointsAndViewRect(Landroid/os/Bundle;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_e4} :catch_26

    goto :goto_fe

    :cond_e5
    :goto_e5
    return-void

    .line 457
    :goto_e6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onPickModeStart  e :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_fe
    :goto_fe
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 460
    const-string p1, "sContent isEmpty"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string p1, "content_empty"

    invoke-static {p1}, Lcom/miui/contentextension/analy/Analy;->trackStartFailedEvent(Ljava/lang/String;)V

    return-void

    .line 464
    :cond_111
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    .line 466
    invoke-direct {p0, v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->QJtoBJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 468
    const-string p1, "content_trim_empty"

    invoke-static {p1}, Lcom/miui/contentextension/analy/Analy;->trackStartFailedEvent(Ljava/lang/String;)V

    return-void

    .line 471
    :cond_12b
    sget-object v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sContent:Ljava/lang/String;

    const-string v2, "\u56fe\u7247"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 472
    const-string p1, "equals_image"

    invoke-static {p1}, Lcom/miui/contentextension/analy/Analy;->trackStartFailedEvent(Ljava/lang/String;)V

    return-void

    .line 476
    :cond_13b
    invoke-direct {p0, p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->initPresentationType(Lmiui/contentcatcher/sdk/ClientCatcherResult;)Z

    move-result p1

    if-nez p1, :cond_147

    .line 478
    const-string p1, "not presentation case"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_147
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda2;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/setting/TaplusWorker;->postToMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    const/4 p2, 0x2

    if-nez p1, :cond_4

    return p2

    .line 278
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartCommand: mIsInit:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsInit:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Taplus.TextContentExtensionService"

    invoke-static {v0, p3}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean p3, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mIsInit:Z

    if-nez p3, :cond_28

    .line 280
    const-string p3, " onStartCommand without onCreate"

    invoke-static {v0, p3}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->onInit()V

    .line 283
    :cond_28
    const-string p3, "clipboard_data"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4c

    .line 285
    sput-object p1, Lcom/miui/contentextension/services/TextContentExtensionService;->sClipboardContent:Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object p3

    new-instance v0, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda1;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;)V

    .line 288
    sget-boolean p1, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    if-eqz p1, :cond_46

    const-wide/16 v1, 0x0

    goto :goto_48

    :cond_46
    const-wide/16 v1, 0xc8

    .line 286
    :goto_48
    invoke-virtual {p3, v0, v1, v2}, Lcom/miui/contentextension/setting/TaplusWorker;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_4f

    .line 290
    :cond_4c
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->registerContentListener()V

    :goto_4f
    return p2
.end method

.method public quitByDefault(Ljava/lang/String;ZZ)V
    .registers 6

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quitByDefault() called with: quitWay = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], useAnimation = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], isOnlyStart = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.TextContentExtensionService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sget-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    if-eqz v0, :cond_30

    return-void

    :cond_30
    const/4 v0, 0x1

    .line 1039
    sput-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    .line 1041
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/services/TextContentExtensionService$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/miui/contentextension/services/TextContentExtensionService$5;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;ZLjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/TaplusWorker;->postToMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMainFloatView(Z)V
    .registers 4

    .line 934
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 938
    sput-boolean v1, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsMainFloatViewShowing:Z

    .line 939
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->showMainFloat(Z)V

    return-void
.end method

.method public startPickImageTask()V
    .registers 2

    .line 666
    invoke-static {}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->clearContents()V

    const/4 v0, 0x0

    .line 667
    sput-boolean v0, Lcom/miui/contentextension/services/TextContentExtensionService;->sIsTaskFinished:Z

    .line 668
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->destroyFloatView()V

    .line 669
    invoke-direct {p0}, Lcom/miui/contentextension/services/TextContentExtensionService;->createFloatView()V

    .line 670
    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->getInstance()Lcom/miui/contentextension/data/cms/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->tryToUpdateConfig()V

    return-void
.end method
