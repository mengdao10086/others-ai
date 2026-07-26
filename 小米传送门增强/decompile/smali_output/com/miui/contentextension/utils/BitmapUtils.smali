.class public Lcom/miui/contentextension/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static compressBitmapToByteArray(Landroid/graphics/Bitmap;I)[B
    .registers 7

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 61
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    :cond_15
    if-le v3, p1, :cond_2b

    .line 64
    :try_start_17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v4, v4, -0xa

    .line 66
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 67
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    if-nez v4, :cond_15

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_4c

    .line 72
    :cond_2b
    :goto_2b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_29

    .line 75
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :goto_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Taplus.BitmapUtils"

    const-string v1, "compress cost time = %d ms"

    invoke-static {v0, v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 75
    :goto_4c
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :goto_54
    throw p0
.end method

.method public static getBitmapWithBorderAndRadius(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .registers 12

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 100
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 101
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 104
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, p0, v7, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 106
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, p0, v0

    mul-float/2addr v6, p1

    .line 108
    new-instance p1, Landroid/graphics/RectF;

    int-to-float v1, v1

    const/4 v7, 0x0

    invoke-direct {p1, v7, v7, p0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, p1, v6, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 110
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 111
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 114
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-float/2addr p2, v0

    .line 117
    new-instance p3, Landroid/graphics/RectF;

    sub-float/2addr p0, p2

    sub-float/2addr v1, p2

    invoke-direct {p3, p2, p2, p0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, p3, v6, v6, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public static saveBitmapToStorage(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 127
    :cond_4
    invoke-static {p1}, Lcom/miui/contentextension/utils/FileUtils;->cacheBitmap(Landroid/graphics/Bitmap;)I

    move-result p1

    if-eqz p1, :cond_1a

    .line 129
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "tmp.png"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/FileUtils;->saveFileToStorage(Landroid/content/Context;Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_1a
    return v0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 10

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 90
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 91
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    .line 93
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
