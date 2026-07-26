.class public Lcom/miui/contentextension/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static cacheBitmap(Landroid/graphics/Bitmap;)I
    .registers 4

    const/4 v0, 0x0

    .line 194
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    .line 195
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 196
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 197
    invoke-static {p0}, Lcom/miui/contentextension/utils/FileUtils;->cacheBitmap([B)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1d

    .line 199
    invoke-static {v1}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-nez p0, :cond_1b

    const/4 p0, 0x0

    goto :goto_1c

    .line 201
    :cond_1b
    array-length p0, p0

    :goto_1c
    return p0

    :catchall_1d
    move-exception p0

    move-object v0, v1

    goto :goto_21

    :catchall_20
    move-exception p0

    .line 199
    :goto_21
    invoke-static {v0}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    throw p0
.end method

.method public static cacheBitmap([B)V
    .registers 4

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 214
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 215
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_2a
    .catchall {:try_start_10 .. :try_end_18} :catchall_28

    .line 216
    :try_start_18
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 217
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_25
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 221
    invoke-static {v2}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_35

    :catchall_22
    move-exception p0

    move-object v1, v2

    goto :goto_36

    :catch_25
    move-exception p0

    move-object v1, v2

    goto :goto_2b

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 219
    :goto_2b
    :try_start_2b
    const-string v0, "Taplus.FileUtils"

    const-string v2, "cacheBitmap"

    invoke-static {v0, v2, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 221
    invoke-static {v1}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_35
    return-void

    :goto_36
    invoke-static {v1}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 222
    throw p0
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 79
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static getConfigInfoPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getListFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :try_start_5
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/FileUtils;->getConfigInfoPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x400

    invoke-direct {p1, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_32

    :catch_16
    move-exception p0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileNotFoundException = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.FileUtils"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_32
    if-eqz p1, :cond_42

    .line 97
    :try_start_34
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_42

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 102
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :catch_42
    :cond_42
    if-eqz p1, :cond_47

    .line 108
    invoke-static {p1}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_47
    return-object v0
.end method

.method public static isFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 273
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 47
    :try_start_4
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 48
    invoke-static {v0}, Lcom/miui/contentextension/utils/FileUtils;->readFileFromReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 50
    const-string p1, "Taplus.FileUtils"

    const-string v0, "IOException"

    invoke-static {p1, v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const-string p0, ""

    return-object p0
.end method

.method public static readFileFromReader(Ljava/io/Reader;)Ljava/lang/String;
    .registers 7

    .line 56
    const-string v0, "Taplus.FileUtils"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 59
    :try_start_8
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_d} :catch_2c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_27
    .catchall {:try_start_8 .. :try_end_d} :catchall_25

    .line 61
    :goto_d
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_1a
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_d

    :catchall_17
    move-exception v0

    move-object v2, v3

    goto :goto_42

    :catch_1a
    move-exception v2

    goto :goto_31

    :catch_1c
    move-exception v2

    goto :goto_37

    .line 69
    :cond_1e
    :goto_1e
    invoke-static {p0}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    invoke-static {v3}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3d

    :catchall_25
    move-exception v0

    goto :goto_42

    :catch_27
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_31

    :catch_2c
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_37

    .line 67
    :goto_31
    :try_start_31
    const-string v4, "IOException"

    invoke-static {v0, v4, v2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 65
    :goto_37
    const-string v4, "FileNotFoundException"

    invoke-static {v0, v4, v2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_17

    goto :goto_1e

    .line 73
    :goto_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :goto_42
    invoke-static {p0}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    invoke-static {v2}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    throw v0
.end method

.method public static saveFileToStorage(Landroid/content/Context;Ljava/io/File;)Z
    .registers 7

    .line 149
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "taplus/taplus_image/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 152
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 153
    const-string v4, "_display_name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "mime_type"

    const-string v4, "image/png"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_50

    .line 156
    const-string v2, "relative_path"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "is_pending"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 159
    :cond_50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a0

    const/4 v2, 0x0

    .line 162
    :try_start_5d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_62} :catch_8c
    .catchall {:try_start_5d .. :try_end_62} :catchall_89

    .line 163
    :try_start_62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    const/16 p0, 0x400

    .line 166
    new-array p0, p0, [B

    .line 168
    :goto_6e
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_81

    .line 169
    invoke-virtual {v2, p0, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_78} :catch_7d
    .catchall {:try_start_62 .. :try_end_78} :catchall_79

    goto :goto_6e

    :catchall_79
    move-exception p0

    move-object p1, v2

    move-object v2, v3

    goto :goto_99

    :catch_7d
    move-exception p0

    move-object p1, v2

    move-object v2, v3

    goto :goto_8e

    .line 176
    :cond_81
    invoke-static {v3}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 177
    invoke-static {v2}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_89
    move-exception p0

    move-object p1, v2

    goto :goto_99

    :catch_8c
    move-exception p0

    move-object p1, v2

    .line 173
    :goto_8e
    :try_start_8e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_98

    .line 176
    invoke-static {v2}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 177
    invoke-static {p1}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_98
    move-exception p0

    .line 176
    :goto_99
    invoke-static {v2}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 177
    invoke-static {p1}, Lcom/miui/contentextension/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 178
    throw p0

    :cond_a0
    return v1
.end method

.method public static writeBlacklistFromUser(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeBlacklistFromUser data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.FileUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->setBlackListData(Ljava/util/List;)V

    .line 116
    const-string v0, "blacklistConfig"

    invoke-static {p0, p1, v0}, Lcom/miui/contentextension/utils/FileUtils;->writeListToFile(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static writeListToFile(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5c

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p2}, Lcom/miui/contentextension/utils/FileUtils;->getConfigInfoPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 128
    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_20

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_1e
    .catchall {:try_start_c .. :try_end_16} :catchall_1c

    if-nez p2, :cond_20

    .line 141
    invoke-static {p0}, Lcom/miui/contentextension/utils/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    return-void

    :catchall_1c
    move-exception p1

    goto :goto_58

    :catch_1e
    move-exception p1

    goto :goto_4d

    .line 133
    :cond_20
    :try_start_20
    new-instance p2, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_1e
    .catchall {:try_start_20 .. :try_end_26} :catchall_1c

    .line 134
    :try_start_26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 p1, 0xa

    .line 136
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_42} :catch_46
    .catchall {:try_start_26 .. :try_end_42} :catchall_43

    goto :goto_2a

    :catchall_43
    move-exception p1

    move-object p0, p2

    goto :goto_58

    :catch_46
    move-exception p1

    move-object p0, p2

    goto :goto_4d

    .line 141
    :cond_49
    invoke-static {p2}, Lcom/miui/contentextension/utils/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_5c

    .line 139
    :goto_4d
    :try_start_4d
    const-string p2, "Taplus.FileUtils"

    const-string v0, "writeBlackListToFile"

    invoke-static {p2, v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_1c

    .line 141
    invoke-static {p0}, Lcom/miui/contentextension/utils/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_5c

    :goto_58
    invoke-static {p0}, Lcom/miui/contentextension/utils/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 142
    throw p1

    :cond_5c
    :goto_5c
    return-void
.end method
