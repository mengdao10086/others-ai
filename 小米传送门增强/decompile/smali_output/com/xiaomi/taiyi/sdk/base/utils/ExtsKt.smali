.class public final Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MY_PID$delegate:Lkotlin/Lazy;

.field private static final MY_PROCESS_NAME$delegate:Lkotlin/Lazy;

.field private static final MY_UID$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$ormaqo_ahUttpa9jkJgnn24Dlfk()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_PROCESS_NAME_delegate$lambda$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$u4XZ61Cwm1cwbezKt1lH3mCoMdw()I
    .registers 1

    .line 0
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_PID_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$y22y52e76gPEXvrEoBfDWrQ3ZkQ()I
    .registers 1

    .line 0
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_UID_delegate$lambda$1()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_PID$delegate:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_UID$delegate:Lkotlin/Lazy;

    .line 17
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_PROCESS_NAME$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final MY_PID_delegate$lambda$0()I
    .registers 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method private static final MY_PROCESS_NAME_delegate$lambda$2()Ljava/lang/String;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_b
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final MY_UID_delegate$lambda$1()I
    .registers 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0
.end method

.method public static final bootMills()J
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final formatTime()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getMY_PID()I
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_PID$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getMY_PROCESS_NAME()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_PROCESS_NAME$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final getMY_TID()J
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getMY_UID()I
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->MY_UID$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final isMainThread()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final timestamp()J
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
