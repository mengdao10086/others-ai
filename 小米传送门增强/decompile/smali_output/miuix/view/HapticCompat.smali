.class public Lmiuix/view/HapticCompat;
.super Ljava/lang/Object;
.source "HapticCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/view/HapticCompat$WeakReferenceHandler;
    }
.end annotation


# static fields
.field public static CURRENT_HAPTIC_VERSION:Ljava/lang/String;

.field private static sProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/HapticFeedbackProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSingleThread:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    const-string v0, "sys.haptic.version"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmiuix/view/HapticCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 187
    const-string v0, "miuix.view.LinearVibrator"

    const-string v1, "miuix.view.ExtendedVibrator"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/view/HapticCompat;->loadProviders([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkHapticVersion1FeedBackConstant(I)Z
    .registers 3

    .line 83
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_START:I

    if-lt p0, v0, :cond_b

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    if-le p0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    return p0

    .line 84
    :cond_b
    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Illegal haptic version 1 feedback constant, should be in range [0x%08x..0x%08x]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HapticCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static checkHapticVersion2FeedBackConstant(I)Z
    .registers 3

    .line 75
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_START:I

    if-lt p0, v0, :cond_b

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    if-le p0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    return p0

    .line 76
    :cond_b
    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Illegal haptic version 2 feedback constant, should be in range [0x%08x..0x%08x]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HapticCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static doesSupportHaptic(Ljava/lang/String;)Z
    .registers 2

    .line 194
    sget-object v0, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static varargs loadProviders([Ljava/lang/String;)V
    .registers 7

    .line 176
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_38

    aget-object v2, p0, v1

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HapticCompat"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_1c
    const-class v3, Lmiuix/view/HapticCompat;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v2, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_35

    :catch_27
    move-exception v3

    .line 181
    const-string v5, "load provider %s failed."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    return-void
.end method

.method public static performHapticFeedback(Landroid/view/View;I)Z
    .registers 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 32
    const-string v1, "HapticCompat"

    if-nez p0, :cond_b

    .line 33
    const-string p0, "performHapticFeedback: view is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    const/high16 v2, 0x10000000

    if-ge p1, v2, :cond_41

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "perform haptic: 0x%08x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performHapticFeedback view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackConstant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/HapticLog;->printTrace(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p0

    return p0

    .line 42
    :cond_41
    sget v3, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_END:I

    if-le p1, v3, :cond_5b

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "illegal feedback constant, should be in range [0x%08x..0x%08x]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 47
    :cond_5b
    sget-object v1, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/view/HapticFeedbackProvider;

    .line 48
    invoke-interface {v2, p0, p1}, Lmiuix/view/HapticFeedbackProvider;->performHapticFeedback(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 p0, 0x1

    return p0

    :cond_75
    return v0
.end method

.method public static performHapticFeedback(Landroid/view/View;II)Z
    .registers 5

    .line 56
    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 57
    invoke-static {p1}, Lmiuix/view/HapticCompat;->checkHapticVersion2FeedBackConstant(I)Z

    move-result p2

    if-nez p2, :cond_10

    return v1

    .line 60
    :cond_10
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 63
    :cond_15
    const-string p1, "1.0"

    invoke-static {p1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 64
    invoke-static {p2}, Lmiuix/view/HapticCompat;->checkHapticVersion1FeedBackConstant(I)Z

    move-result p1

    if-nez p1, :cond_24

    return v1

    .line 67
    :cond_24
    invoke-static {p0, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 70
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected haptic version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HapticCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static performHapticFeedbackAsync(Landroid/view/View;I)V
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 118
    sget-object v0, Lmiuix/view/HapticCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lmiuix/view/HapticCompat$WeakReferenceHandler;

    invoke-direct {v1, p0, p1}, Lmiuix/view/HapticCompat$WeakReferenceHandler;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    .line 116
    :cond_15
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_18
    return-void
.end method

.method public static performHapticFeedbackAsync(Landroid/view/View;II)V
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 124
    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 125
    invoke-static {p1}, Lmiuix/view/HapticCompat;->checkHapticVersion2FeedBackConstant(I)Z

    move-result p2

    if-nez p2, :cond_f

    return-void

    .line 128
    :cond_f
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void

    .line 131
    :cond_13
    const-string p1, "1.0"

    invoke-static {p1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 132
    invoke-static {p2}, Lmiuix/view/HapticCompat;->checkHapticVersion1FeedBackConstant(I)Z

    move-result p1

    if-nez p1, :cond_22

    return-void

    .line 135
    :cond_22
    invoke-static {p0, p2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void

    .line 138
    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected haptic version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HapticCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static registerProvider(Lmiuix/view/HapticFeedbackProvider;)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 172
    sget-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
