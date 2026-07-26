.class public Lcom/miui/contentextension/utils/SystemPropertiesUtils;
.super Ljava/lang/Object;
.source "SystemPropertiesUtils.java"


# direct methods
.method public static getInt(Ljava/lang/String;I)I
    .registers 6

    .line 23
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getInt"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_2c

    :catch_23
    move-exception p0

    .line 25
    const-string p1, "SystemPropertiesUtils"

    const-string v0, "SystemPropertiesUtils getInt: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 11
    const-class v0, Ljava/lang/String;

    .line 13
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v3

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, v2, v3, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_23

    :catch_19
    move-exception p0

    .line 15
    const-string p1, "SystemPropertiesUtils"

    const-string v0, "SystemPropertiesUtils getString: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    :goto_23
    return-object p0
.end method
