.class public Lcom/miui/contentextension/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final DEBUG:Z

.field public static final VERBOSE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ce_internal"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/contentextension/utils/LogUtils;->DEBUG:Z

    .line 10
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ce_verbose"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/contentextension/utils/LogUtils;->VERBOSE:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 52
    sget-boolean v0, Lcom/miui/contentextension/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 66
    sget-boolean v0, Lcom/miui/contentextension/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 67
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 59
    sget-boolean v0, Lcom/miui/contentextension/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 60
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static debugData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Debug_data"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 39
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 48
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 43
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 20
    sget-boolean v0, Lcom/miui/contentextension/utils/LogUtils;->VERBOSE:Z

    if-eqz v0, :cond_9

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
