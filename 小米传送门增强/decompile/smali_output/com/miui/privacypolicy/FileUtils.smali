.class public Lcom/miui/privacypolicy/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method protected static closeQuietly(Ljava/io/InputStream;)V
    .registers 3

    if-eqz p0, :cond_1d

    .line 129
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeQuietly InputStream error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Privacy_FileUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method protected static closeQuietly(Ljava/io/OutputStream;)V
    .registers 5

    .line 137
    const-string v0, "closeQuietly OutputStream error "

    const-string v1, "Privacy_FileUtils"

    if-eqz p0, :cond_34

    .line 139
    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_1d

    :catch_a
    move-exception v2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_34

    :catch_21
    move-exception p0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return-void
.end method

.method protected static closeQuietly(Ljava/io/Writer;)V
    .registers 3

    if-eqz p0, :cond_1d

    .line 119
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeQuietly Writer error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Privacy_FileUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method protected static deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "privacypolicy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method protected static isAgreeErrorFileExit(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 112
    const-string v0, "privacy_agree_error"

    invoke-static {p0, v0, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected static isVersionFileExit(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 107
    const-string v0, "privacy_version"

    invoke-static {p0, v0, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected static readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "privacypolicy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_38

    .line 36
    const-string p0, ""

    return-object p0

    :cond_38
    const/4 p1, 0x0

    .line 41
    :try_start_39
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_4d
    .catchall {:try_start_39 .. :try_end_3e} :catchall_4b

    .line 42
    :try_start_3e
    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->readInputStream(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_49
    .catchall {:try_start_3e .. :try_end_42} :catchall_46

    .line 46
    :goto_42
    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_57

    :catchall_46
    move-exception p0

    move-object p1, p2

    goto :goto_58

    :catch_49
    move-exception p0

    goto :goto_4f

    :catchall_4b
    move-exception p0

    goto :goto_58

    :catch_4d
    move-exception p0

    move-object p2, p1

    .line 44
    :goto_4f
    :try_start_4f
    const-string v0, "Privacy_FileUtils"

    const-string v1, "readData fail!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_46

    goto :goto_42

    :goto_57
    return-object p1

    .line 46
    :goto_58
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 47
    throw p0
.end method

.method private static readInputStream(Ljava/io/FileInputStream;)Ljava/lang/String;
    .registers 6

    .line 55
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 57
    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    .line 60
    :try_start_a
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_18

    .line 61
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :catchall_14
    move-exception p0

    goto :goto_2c

    :catch_16
    move-exception p0

    goto :goto_20

    .line 63
    :cond_18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_16
    .catchall {:try_start_a .. :try_end_1c} :catchall_14

    .line 67
    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object p0

    .line 65
    :goto_20
    :try_start_20
    const-string v1, "Privacy_FileUtils"

    const-string v2, "readInputStream fail!"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_14

    .line 67
    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    const/4 p0, 0x0

    return-object p0

    :goto_2c
    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 68
    throw p0
.end method

.method protected static saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 73
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "privacypolicy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_32

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_32
    const/4 p1, 0x0

    .line 80
    :try_start_33
    new-instance p3, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_5e
    .catchall {:try_start_33 .. :try_end_3d} :catchall_5b

    .line 81
    :try_start_3d
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_59
    .catchall {:try_start_3d .. :try_end_47} :catchall_57

    .line 82
    :try_start_47
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_54
    .catchall {:try_start_47 .. :try_end_4a} :catchall_51

    .line 86
    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 87
    :goto_4d
    invoke-static {p3}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_6b

    :catchall_51
    move-exception p0

    move-object p1, p2

    goto :goto_6c

    :catch_54
    move-exception p0

    move-object p1, p2

    goto :goto_60

    :catchall_57
    move-exception p0

    goto :goto_6c

    :catch_59
    move-exception p0

    goto :goto_60

    :catchall_5b
    move-exception p0

    move-object p3, p1

    goto :goto_6c

    :catch_5e
    move-exception p0

    move-object p3, p1

    .line 84
    :goto_60
    :try_start_60
    const-string p2, "Privacy_FileUtils"

    const-string v0, "saveData fail!"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_57

    .line 86
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    goto :goto_4d

    :goto_6b
    return-void

    :goto_6c
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 87
    invoke-static {p3}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 91
    throw p0
.end method
