.class public final Lcom/xiaomi/continuity/netbus/utils/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsDebug:Z = false


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1, p0, p2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 0
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    if-eqz p1, :cond_f

    array-length v0, p1

    if-nez v0, :cond_b

    goto :goto_f

    :cond_b
    :try_start_b
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/util/IllegalFormatException; {:try_start_b .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    :goto_f
    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 0
    sget-boolean v0, Lcom/xiaomi/continuity/netbus/utils/Log;->sIsDebug:Z

    const/4 v1, 0x4

    if-nez v0, :cond_8

    if-ge p0, v1, :cond_8

    return-void

    :cond_8
    if-nez p1, :cond_c

    const-string p1, ""

    :cond_c
    invoke-static {p3, p4}, Lcom/xiaomi/continuity/netbus/utils/Log;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    if-eq p0, p4, :cond_47

    const/4 p4, 0x3

    if-eq p0, p4, :cond_3d

    if-eq p0, v1, :cond_33

    const/4 p4, 0x5

    if-eq p0, p4, :cond_29

    const/4 p4, 0x6

    if-eq p0, p4, :cond_1f

    goto :goto_50

    :cond_1f
    if-nez p2, :cond_25

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_25
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :cond_29
    if-nez p2, :cond_2f

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_2f
    invoke-static {p1, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :cond_33
    if-nez p2, :cond_39

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_39
    invoke-static {p1, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :cond_3d
    if-nez p2, :cond_43

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_43
    invoke-static {p1, p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :cond_47
    if-nez p2, :cond_4d

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_4d
    invoke-static {p1, p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
