.class public Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;
.super Ljava/lang/Object;
.source "MemoryFileUtil.java"


# direct methods
.method public static readBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .registers 6

    .line 125
    const-string v0, "parcelFile"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 126
    const-string v1, "parcelFileLength"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    const-string v2, "key_width"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 128
    const-string v3, "key_height"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 129
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;->readFromMemory(Ljava/util/HashMap;I)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    const-string v3, "MemoryFileUtil"

    if-eqz v0, :cond_41

    .line 133
    :try_start_23
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_30} :catch_33
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_30} :catch_31

    goto :goto_40

    :catch_31
    move-exception p0

    goto :goto_35

    :catch_33
    move-exception p0

    goto :goto_3b

    .line 138
    :goto_35
    const-string v0, "catch oom exception"

    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 136
    :goto_3b
    const-string v0, "catch illegal argument exception"

    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-object v1

    .line 142
    :cond_41
    const-string p0, "getSnapShot with data is null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static readFromMemory(Ljava/util/HashMap;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;I)[B"
        }
    .end annotation

    .line 96
    const-string v0, "catch close fd error"

    const-string v1, "catch close FileInputStream error"

    const-string v2, "MemoryFileUtil"

    const-string v3, "parcelFile"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    if-eqz p0, :cond_64

    .line 98
    new-array p1, p1, [B

    .line 101
    :try_start_13
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_37
    .catchall {:try_start_13 .. :try_end_1c} :catchall_35

    .line 102
    :try_start_1c
    invoke-virtual {v4, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_33
    .catchall {:try_start_1c .. :try_end_1f} :catchall_30

    .line 109
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v3

    .line 111
    invoke-static {v2, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_27
    :try_start_27
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p0

    .line 116
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-object p1

    :catchall_30
    move-exception p1

    move-object v3, v4

    goto :goto_51

    :catch_33
    move-exception p1

    goto :goto_39

    :catchall_35
    move-exception p1

    goto :goto_51

    :catch_37
    move-exception p1

    move-object v4, v3

    .line 105
    :goto_39
    :try_start_39
    const-string v5, "catch read from memory error"

    invoke-static {v2, v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_30

    if-eqz v4, :cond_64

    .line 109
    :try_start_40
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    .line 111
    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_64

    :catch_4c
    move-exception p0

    .line 116
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :goto_51
    if-eqz v3, :cond_63

    .line 109
    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v3

    .line 111
    invoke-static {v2, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    .line 116
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_63
    :goto_63
    throw p1

    :cond_64
    :goto_64
    return-object v3
.end method

.method public static sendToFdServer(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;[BIIILjava/lang/String;I)V
    .registers 9

    .line 69
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;->writeToMemory([BI)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 70
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 71
    const-string v1, "parcelFile"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 73
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    const-string v0, "parcelFileLength"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string p2, "key_width"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string p2, "key_height"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string p2, "key_task_id"

    invoke-virtual {p1, p2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string p2, "key_request_identity"

    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3f

    const/4 p2, 0x7

    .line 81
    :try_start_33
    invoke-interface {p0, p2, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p0

    .line 84
    const-string p1, "MemoryFileUtil"

    const-string p2, "catch stash snapshot to service error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static writeToMemory([BI)Landroid/os/ParcelFileDescriptor;
    .registers 5

    const/4 v0, 0x0

    .line 43
    :try_start_1
    new-instance v1, Landroid/os/MemoryFile;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_2d
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    const/4 v2, 0x0

    .line 44
    :try_start_9
    invoke-virtual {v1, p0, v2, v2, p1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 46
    const-class p0, Landroid/os/MemoryFile;

    const-string p1, "getFileDescriptor"

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 48
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    .line 49
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_29
    .catchall {:try_start_9 .. :try_end_22} :catchall_26

    .line 54
    :goto_22
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    goto :goto_39

    :catchall_26
    move-exception p0

    move-object v0, v1

    goto :goto_3a

    :catch_29
    move-exception p0

    goto :goto_2f

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    move-object v1, v0

    .line 51
    :goto_2f
    :try_start_2f
    const-string p1, "MemoryFileUtil"

    const-string v2, "catch write to memory error"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_26

    if-eqz v1, :cond_39

    goto :goto_22

    :cond_39
    :goto_39
    return-object v0

    :goto_3a
    if-eqz v0, :cond_3f

    .line 54
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 56
    :cond_3f
    throw p0
.end method
