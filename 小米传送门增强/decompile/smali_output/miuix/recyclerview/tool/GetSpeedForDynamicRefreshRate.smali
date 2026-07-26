.class public Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;
.super Ljava/lang/Object;
.source "GetSpeedForDynamicRefreshRate.java"


# static fields
.field private static sControlViewHashCode:I = 0x0

.field private static sHasGetProperty:Z = false

.field private static sRefreshRateList:[I

.field private static sRefreshRateSpeedLimits:[I


# instance fields
.field private mCountIndex:I

.field private mCurrentRefreshRate:I

.field private final mDisplay:Landroid/view/Display;

.field private mHasFocus:Z

.field private final mIsEnable:Z

.field private volatile mIsTouch:Z

.field private mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

.field private mNeedAbandon:Z

.field private mOldScrollState:I

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mRefreshRate:I

.field private mStartTime:J

.field private mTotalDistance:J

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;)V
    .registers 8

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    .line 39
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    .line 42
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    const-wide/16 v1, -0x1

    .line 43
    iput-wide v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    const-wide/16 v1, 0x0

    .line 45
    iput-wide v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    .line 47
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    .line 48
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mRefreshRate:I

    .line 55
    iput-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 57
    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v3

    goto :goto_2c

    :cond_2b
    move-object v3, v2

    :goto_2c
    iput-object v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_35

    .line 58
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_36

    :cond_35
    move-object v1, v2

    :goto_36
    iput-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    .line 60
    invoke-static {}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->getParam()Z

    move-result v4

    if-eqz v4, :cond_44

    if-eqz v3, :cond_44

    if-eqz v1, :cond_44

    const/4 v4, 0x1

    goto :goto_45

    :cond_44
    move v4, v0

    :goto_45
    iput-boolean v4, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-nez v4, :cond_50

    .line 62
    const-string v4, "DynamicRefreshRate recy"

    const-string v5, "dynamic is not enable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    if-eqz v3, :cond_75

    if-nez v1, :cond_55

    goto :goto_75

    .line 69
    :cond_55
    invoke-static {}, Lmiuix/mimotion/MiMotionHelper;->isSupportMiMotion()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 70
    new-instance v1, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    invoke-direct {v1}, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;-><init>()V

    iput-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    .line 71
    invoke-virtual {v1, p1}, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;->initMiMotion(Lmiuix/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 72
    iput-object v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    .line 77
    :cond_6a
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz p1, :cond_75

    array-length v1, p1

    if-lez v1, :cond_75

    .line 78
    aget p1, p1, v0

    iput p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    :cond_75
    :goto_75
    return-void
.end method

.method private calculateRefreshRate(I)I
    .registers 9

    .line 225
    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 227
    iget-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_74

    iget-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    if-eqz v1, :cond_11

    goto :goto_74

    :cond_11
    if-nez p1, :cond_14

    return v0

    .line 235
    :cond_14
    iget v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    if-nez v1, :cond_22

    const-wide/16 v3, 0x0

    .line 236
    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    .line 239
    :cond_22
    iget v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 240
    iget-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    const/4 p1, 0x3

    if-ge v1, p1, :cond_32

    return v2

    .line 245
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 246
    iget-wide v5, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-float p1, v3

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    .line 247
    iget-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    long-to-float v1, v3

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v1, 0x0

    .line 248
    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    move v3, v1

    .line 251
    :goto_4d
    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5e

    .line 252
    aget v4, v4, v3

    if-le p1, v4, :cond_5b

    .line 253
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    aget v0, p1, v3

    goto :goto_5e

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 258
    :cond_5e
    :goto_5e
    iget p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    if-lt v0, p1, :cond_71

    sget-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    if-ne p1, v4, :cond_70

    aget p1, v3, v1

    if-ne v0, p1, :cond_70

    goto :goto_71

    :cond_70
    return v2

    .line 260
    :cond_71
    :goto_71
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    return v0

    :cond_74
    :goto_74
    return v2
.end method

.method private checkMiMotionRecyclerViewHelper()V
    .registers 4

    .line 134
    invoke-static {}, Lmiuix/mimotion/MiMotionHelper;->isSupportMiMotion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 135
    invoke-static {}, Lmiuix/mimotion/MiMotionHelper;->getInstance()Lmiuix/mimotion/MiMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/mimotion/MiMotionHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 136
    iget-object v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    if-nez v0, :cond_26

    .line 137
    new-instance v0, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    invoke-direct {v0}, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    .line 138
    iget-object v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;->initMiMotion(Lmiuix/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 139
    iput-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    :cond_26
    return-void

    .line 145
    :cond_27
    iput-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    return-void
.end method

.method private static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 319
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    .line 320
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 321
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 323
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getParam()Z
    .registers 10

    .line 272
    const-string v0, ","

    const-string v1, "dynamic params is "

    const-string v2, "DynamicRefreshRate recy"

    sget-boolean v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_16

    .line 273
    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v0, :cond_15

    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v0, :cond_15

    move v4, v5

    :cond_15
    return v4

    :cond_16
    const/4 v3, 0x0

    .line 277
    :try_start_17
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 278
    const-string v7, "get"

    const-class v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 280
    const-string v7, "ro.vendor.display.dynamic_refresh_rate"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_c9
    .catchall {:try_start_17 .. :try_end_35} :catchall_c7

    if-nez v6, :cond_57

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v1, :cond_49

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v1, :cond_49

    move v1, v5

    goto :goto_4a

    :cond_49
    move v1, v4

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    return v4

    .line 285
    :cond_57
    :try_start_57
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 286
    array-length v7, v6
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_c9
    .catchall {:try_start_57 .. :try_end_5e} :catchall_c7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_81

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v1, :cond_73

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v1, :cond_73

    move v1, v5

    goto :goto_74

    :cond_73
    move v1, v4

    :goto_74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    return v4

    .line 290
    :cond_81
    :try_start_81
    aget-object v7, v6, v4

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 291
    aget-object v6, v6, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 292
    array-length v6, v0

    array-length v8, v7
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8f} :catch_c9
    .catchall {:try_start_81 .. :try_end_8f} :catchall_c7

    sub-int/2addr v8, v5

    if-eq v6, v8, :cond_b2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v1, :cond_a4

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v1, :cond_a4

    move v1, v5

    goto :goto_a5

    :cond_a4
    move v1, v4

    :goto_a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    return v4

    .line 296
    :cond_b2
    :try_start_b2
    array-length v6, v7

    new-array v6, v6, [I

    sput-object v6, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    move v6, v4

    .line 297
    :goto_b8
    array-length v8, v7

    if-ge v6, v8, :cond_cb

    .line 298
    sget-object v8, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    aget-object v9, v7, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v6

    add-int/2addr v6, v5

    goto :goto_b8

    :catchall_c7
    move-exception v0

    goto :goto_125

    :catch_c9
    move-exception v0

    goto :goto_fe

    .line 301
    :cond_cb
    array-length v6, v0

    new-array v6, v6, [I

    sput-object v6, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    move v6, v4

    .line 302
    :goto_d1
    array-length v7, v0

    if-ge v6, v7, :cond_e0

    .line 303
    sget-object v7, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    aget-object v8, v0, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_de} :catch_c9
    .catchall {:try_start_b2 .. :try_end_de} :catchall_c7

    add-int/2addr v6, v5

    goto :goto_d1

    .line 310
    :cond_e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v1, :cond_f1

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v1, :cond_f1

    move v4, v5

    :cond_f1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    return v5

    .line 308
    :goto_fe
    :try_start_fe
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_c7

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v1, :cond_113

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v1, :cond_113

    move v1, v5

    goto :goto_114

    :cond_113
    move v1, v4

    :goto_114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 313
    sput-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 314
    sput-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    return v4

    .line 310
    :goto_125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    if-eqz v1, :cond_136

    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    if-eqz v1, :cond_136

    move v4, v5

    :cond_136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 312
    throw v0
.end method

.method private setRefreshRate(IZ)V
    .registers 10

    .line 196
    iget-object v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 199
    iget v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mRefreshRate:I

    if-eq p1, v2, :cond_7b

    if-nez v0, :cond_13

    goto :goto_7b

    .line 202
    :cond_13
    iput p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mRefreshRate:I

    .line 204
    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_7b

    aget-object v4, v0, v3

    .line 205
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    int-to-float v6, p1

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2e

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2e
    if-nez p2, :cond_43

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sget v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    if-eq p2, v0, :cond_43

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p2

    iget v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mRefreshRate:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_7b

    .line 210
    :cond_43
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sput p2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " set Refresh rate to: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode is: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicRefreshRate recy"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 213
    iget-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method public calculateSpeed(IIII)V
    .registers 6

    .line 89
    iget-object v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    if-eqz v0, :cond_8

    .line 90
    invoke-virtual {v0, p3, p4, p1, p2}, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;->calculateSpeed(IIII)V

    return-void

    .line 93
    :cond_8
    iget-boolean p3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-eqz p3, :cond_2c

    if-nez p1, :cond_10

    if-eqz p2, :cond_2c

    :cond_10
    iget-boolean p3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    if-nez p3, :cond_2c

    .line 94
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->calculateRefreshRate(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_28

    return-void

    :cond_28
    const/4 p2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    :cond_2c
    return-void
.end method

.method public onFocusChange(Z)V
    .registers 3

    .line 178
    iget-object v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    if-eqz v0, :cond_8

    .line 179
    invoke-virtual {v0, p1}, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;->onFocusChange(Z)V

    return-void

    .line 182
    :cond_8
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-nez v0, :cond_d

    return-void

    .line 185
    :cond_d
    iput-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    .line 187
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    return-void
.end method

.method public scrollState(Lmiuix/recyclerview/widget/RecyclerView;I)V
    .registers 5

    .line 153
    iget-object v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    if-eqz v0, :cond_8

    .line 154
    invoke-virtual {v0, p1, p2}, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;->scrollState(Lmiuix/recyclerview/widget/RecyclerView;I)V

    return-void

    .line 157
    :cond_8
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-nez v0, :cond_d

    return-void

    .line 161
    :cond_d
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    if-nez v0, :cond_42

    iget v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    goto :goto_42

    .line 165
    :cond_1b
    iput p2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    const/4 p2, -0x1

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 168
    :cond_2b
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_41

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 169
    :cond_37
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    array-length p2, p1

    sub-int/2addr p2, v1

    aget p1, p1, p2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    :cond_41
    return-void

    .line 162
    :cond_42
    :goto_42
    iput p2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 113
    invoke-direct {p0}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->checkMiMotionRecyclerViewHelper()V

    .line 114
    iget-object v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mMiMotionRecyclerViewHelper:Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;

    if-eqz v0, :cond_b

    .line 115
    invoke-virtual {v0, p1}, Lmiuix/recyclerview/tool/MiMotionRecyclerViewHelper;->touchEvent(Landroid/view/MotionEvent;)V

    return-void

    .line 118
    :cond_b
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    if-nez v0, :cond_10

    return-void

    .line 121
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2a

    .line 122
    iput-boolean v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    .line 123
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    aget p1, p1, v1

    iput p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    .line 124
    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 125
    invoke-direct {p0, p1, v2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    .line 126
    iput-boolean v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    .line 127
    iput-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    goto :goto_32

    .line 128
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_32

    .line 129
    iput-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    :cond_32
    :goto_32
    return-void
.end method
