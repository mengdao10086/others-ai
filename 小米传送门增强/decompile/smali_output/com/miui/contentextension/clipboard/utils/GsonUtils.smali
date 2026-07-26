.class public Lcom/miui/contentextension/clipboard/utils/GsonUtils;
.super Ljava/lang/Object;
.source "GsonUtils.java"


# static fields
.field private static final sGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/miui/contentextension/clipboard/utils/GsonUtils;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static gsonString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 36
    :try_start_0
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/GsonUtils;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception p0

    .line 38
    const-string v0, "GsonUtils"

    const-string v1, "gsonString: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static parseJsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 25
    :try_start_0
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/GsonUtils;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_13

    :catch_7
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    const-string p1, "GsonUtils"

    const-string v0, "parseJsonToBean: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method

.method public static parseJsonToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3e

    .line 48
    :cond_e
    :try_start_e
    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 49
    sget-object v1, Lcom/miui/contentextension/clipboard/utils/GsonUtils;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseJsonToList: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsonUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    return-object v0
.end method
