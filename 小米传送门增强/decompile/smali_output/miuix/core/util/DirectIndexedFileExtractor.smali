.class public Lmiuix/core/util/DirectIndexedFileExtractor;
.super Ljava/lang/Object;
.source "DirectIndexedFileExtractor.java"


# static fields
.field public static IDF_FILES_PATH:Ljava/lang/String;


# direct methods
.method private static ensureIdfPath(Landroid/content/Context;)V
    .registers 4

    .line 37
    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 40
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 39
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_20

    .line 45
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 46
    const-string v1, "createDeviceProtectedStorageContext"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_1e} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_1e} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_1e} :catch_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1e} :catch_20

    move-object p0, v0

    goto :goto_22

    :catch_20
    move-exception p0

    goto :goto_49

    .line 58
    :catch_22
    :goto_22
    :try_start_22
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "idf"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_48} :catch_20

    goto :goto_4c

    .line 63
    :goto_49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :cond_4c
    :goto_4c
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-eqz p0, :cond_70

    .line 68
    new-instance p0, Ljava/io/File;

    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_77

    .line 72
    :try_start_63
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V
    :try_end_6a
    .catch Landroid/system/ErrnoException; {:try_start_63 .. :try_end_6a} :catch_6b

    goto :goto_77

    :catch_6b
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_77

    .line 79
    :cond_70
    const-string p0, "DirectIndexedFileExt"

    const-string v0, "Error: Cannot locate IDF_FILES_PATH"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    :goto_77
    return-void
.end method

.method public static getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 118
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFileExtractor;->ensureIdfPath(Landroid/content/Context;)V

    .line 119
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
