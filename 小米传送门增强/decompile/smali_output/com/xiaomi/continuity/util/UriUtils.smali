.class public Lcom/xiaomi/continuity/util/UriUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method private static getCurApplication()Landroid/content/Context;
    .registers 6

    const-string v0, "UriUtils"

    sget-object v1, Lcom/xiaomi/continuity/util/UriUtils;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_9
    const-string v3, "android.app.ActivityThread"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "currentApplication"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_35

    :catch_1f
    move-exception v3

    .line 1
    const-string v4, "getCurApplication reflect ActivityThread exception : "

    invoke-static {v4}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    :goto_35
    if-eqz v3, :cond_3f

    sput-object v3, Lcom/xiaomi/continuity/util/UriUtils;->sContext:Landroid/content/Context;

    const-string v1, "application from ActivityThread"

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3f
    :try_start_3f
    const-string v4, "android.app.AppGlobals"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getInitialApplication"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_54} :catch_56

    move-object v3, v1

    goto :goto_6b

    :catch_56
    move-exception v1

    .line 3
    const-string v2, "getCurApplication reflect AppGlobals exception : "

    invoke-static {v2}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    sput-object v3, Lcom/xiaomi/continuity/util/UriUtils;->sContext:Landroid/content/Context;

    const-string v1, "application from AppGlobals"

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 2

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static parseFileNameByUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_44

    const-string v0, "_display_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    :try_start_15
    invoke-static {}, Lcom/xiaomi/continuity/util/UriUtils;->getCurApplication()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_38

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_36

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_3e

    :cond_38
    :goto_38
    if-eqz v8, :cond_44

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_44

    :goto_3e
    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_43
    throw p0

    :cond_44
    :goto_44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 1
    :cond_4e
    const-string v0, "parseFileNameByUri:scheme = "

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,result = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UriUtils"

    invoke-static {v0, p0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static parseMimeTypeByUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/xiaomi/continuity/util/UriUtils;->getCurApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_1b
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_48

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_48
    move-object v0, v1

    .line 1
    :goto_49
    const-string v2, "parseMimeTypeByUri:scheme = "

    invoke-static {v2}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,mimeType = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UriUtils"

    invoke-static {v2, p0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6e

    move-object v1, v0

    :cond_6e
    return-object v1
.end method

.method public static uriToInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 2

    .line 0
    invoke-static {}, Lcom/xiaomi/continuity/util/UriUtils;->getCurApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/xiaomi/continuity/util/UriUtils;->getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
