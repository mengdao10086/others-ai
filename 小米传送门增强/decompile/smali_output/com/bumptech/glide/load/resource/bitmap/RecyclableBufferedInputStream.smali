.class public Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# instance fields
.field private volatile buf:[B

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eqz p2, :cond_e

    .line 71
    array-length p1, p2

    if-eqz p1, :cond_e

    .line 74
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    return-void

    .line 72
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_67

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-lt v3, v4, :cond_e

    goto :goto_67

    :cond_e
    if-nez v0, :cond_46

    .line 145
    array-length v2, p2

    if-le v4, v2, :cond_46

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    array-length v3, p2

    if-ne v2, v3, :cond_46

    .line 147
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v4, v0

    :goto_1f
    const/4 v0, 0x3

    .line 151
    const-string v2, "BufferedIs"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocate buffer of length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3c
    new-array v0, v4, [B

    .line 155
    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object p2, v0

    goto :goto_4d

    :cond_46
    if-lez v0, :cond_4d

    .line 160
    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-static {p2, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :cond_4d
    :goto_4d
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 165
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 166
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 167
    iget p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    if-gtz p1, :cond_63

    goto :goto_64

    :cond_63
    add-int/2addr p2, p1

    :goto_64
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    return p1

    .line 132
    :cond_67
    :goto_67
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_73

    .line 134
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 135
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 136
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    :cond_73
    return p1
.end method

.method private static streamClosed()Ljava/io/IOException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 90
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    .line 93
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :catchall_15
    move-exception v0

    goto :goto_1c

    .line 91
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_15

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 121
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 122
    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_c

    .line 124
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void
.end method

.method public declared-synchronized fixMarkLimit()V
    .registers 2

    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 109
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    .line 190
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 191
    iget p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 192
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 223
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    .line 229
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_1a

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    if-ne v1, v4, :cond_1a

    .line 231
    monitor-exit p0

    return v4

    :catchall_18
    move-exception v0

    goto :goto_40

    .line 234
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v1, :cond_28

    .line 235
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_23

    goto :goto_28

    .line 237
    :cond_23
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 242
    :cond_28
    :goto_28
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_39

    add-int/lit8 v1, v2, 0x1

    .line 243
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    aget-byte v0, v0, v2
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_18

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 245
    :cond_39
    monitor-exit p0

    return v4

    .line 225
    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_18

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-eqz v0, :cond_8d

    if-nez p3, :cond_a

    .line 277
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_a
    :try_start_a
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_88

    .line 285
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v2, v3, :cond_34

    sub-int v4, v3, v2

    if-lt v4, p3, :cond_1a

    move v3, p3

    goto :goto_1b

    :cond_1a
    sub-int/2addr v3, v2

    .line 288
    :goto_1b
    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    if-eq v3, p3, :cond_32

    .line 290
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_30

    if-nez v2, :cond_2c

    goto :goto_32

    :cond_2c
    add-int/2addr p2, v3

    sub-int v2, p3, v3

    goto :goto_35

    :catchall_30
    move-exception p1

    goto :goto_92

    .line 291
    :cond_32
    :goto_32
    monitor-exit p0

    return v3

    :cond_34
    move v2, p3

    .line 303
    :goto_35
    :try_start_35
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4a

    array-length v3, v0

    if-lt v2, v3, :cond_4a

    .line 304
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_30

    if-ne v3, v4, :cond_78

    if-ne v2, p3, :cond_46

    goto :goto_48

    :cond_46
    sub-int v4, p3, v2

    .line 306
    :goto_48
    monitor-exit p0

    return v4

    .line 309
    :cond_4a
    :try_start_4a
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_30

    if-ne v3, v4, :cond_57

    if-ne v2, p3, :cond_53

    goto :goto_55

    :cond_53
    sub-int v4, p3, v2

    .line 310
    :goto_55
    monitor-exit p0

    return v4

    .line 313
    :cond_57
    :try_start_57
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_65

    .line 314
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_60

    goto :goto_65

    .line 316
    :cond_60
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 320
    :cond_65
    :goto_65
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v5, v3, v4

    if-lt v5, v2, :cond_6f

    move v3, v2

    goto :goto_70

    :cond_6f
    sub-int/2addr v3, v4

    .line 321
    :goto_70
    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_78
    .catchall {:try_start_57 .. :try_end_78} :catchall_30

    :cond_78
    sub-int/2addr v2, v3

    if-nez v2, :cond_7d

    .line 326
    monitor-exit p0

    return p3

    .line 328
    :cond_7d
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_30

    if-nez v4, :cond_86

    sub-int/2addr p3, v2

    .line 329
    monitor-exit p0

    return p3

    :cond_86
    add-int/2addr p2, v3

    goto :goto_35

    .line 281
    :cond_88
    :try_start_88
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 273
    :cond_8d
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 332
    :goto_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_30

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_18

    .line 349
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_10

    .line 352
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 353
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    goto :goto_20

    .line 350
    :cond_10
    :try_start_10
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    const-string v1, "Mark has been invalidated"

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_e

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 370
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 371
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-eqz v0, :cond_69

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_11

    .line 376
    monitor-exit p0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_11
    if-eqz v1, :cond_64

    .line 382
    :try_start_13
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v4, v2, v3

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_27

    int-to-long v0, v3

    add-long/2addr v0, p1

    long-to-int v0, v0

    .line 383
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    .line 384
    monitor-exit p0

    return-wide p1

    :catchall_25
    move-exception p1

    goto :goto_6e

    :cond_27
    sub-int v3, v2, v3

    int-to-long v3, v3

    .line 387
    :try_start_2a
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 389
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5c

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    int-to-long v6, v2

    cmp-long v2, p1, v6

    if-gtz v2, :cond_5c

    .line 390
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_25

    if-ne v0, v5, :cond_40

    .line 391
    monitor-exit p0

    return-wide v3

    .line 393
    :cond_40
    :try_start_40
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v2, v0, v1

    int-to-long v5, v2

    sub-long v7, p1, v3

    cmp-long v2, v5, v7

    if-ltz v2, :cond_54

    int-to-long v0, v1

    add-long/2addr v0, v7

    long-to-int v0, v0

    .line 394
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_52
    .catchall {:try_start_40 .. :try_end_52} :catchall_25

    .line 395
    monitor-exit p0

    return-wide p1

    :cond_54
    int-to-long p1, v0

    add-long/2addr v3, p1

    int-to-long p1, v1

    sub-long/2addr v3, p1

    .line 399
    :try_start_58
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_25

    .line 400
    monitor-exit p0

    return-wide v3

    :cond_5c
    sub-long/2addr p1, v3

    .line 402
    :try_start_5d
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_25

    add-long/2addr v3, p1

    monitor-exit p0

    return-wide v3

    .line 379
    :cond_64
    :try_start_64
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 373
    :cond_69
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 402
    :goto_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_25

    throw p1
.end method
