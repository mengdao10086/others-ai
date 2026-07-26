.class public final Lkotlinx/coroutines/scheduling/DefaultScheduler;
.super Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;
.source "Dispatcher.kt"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field private static final IO:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/DefaultScheduler;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 17
    new-instance v1, Lkotlinx/coroutines/scheduling/LimitingDispatcher;

    const/16 v2, 0x40

    .line 19
    invoke-static {}, Lkotlinx/coroutines/internal/SystemPropsKt;->getAVAILABLE_PROCESSORS()I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v4, "kotlinx.coroutines.io.parallelism"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v2

    .line 20
    const-string v3, "Dispatchers.IO"

    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v0, v2, v3, v4}, Lkotlinx/coroutines/scheduling/LimitingDispatcher;-><init>(Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;ILjava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/scheduling/DefaultScheduler;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;-><init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIO()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 17
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 28
    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
