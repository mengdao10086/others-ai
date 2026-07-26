.class Lcom/bumptech/glide/disklrucache/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    .line 93
    sget-object v0, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 98
    iput-object p3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 99
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    return-void

    .line 94
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const/4 p1, 0x0

    .line 88
    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    .line 72
    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private fillBuf()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 192
    iput v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 193
    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    return-void

    .line 190
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 112
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_12

    :catchall_10
    move-exception v1

    goto :goto_14

    .line 114
    :cond_12
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_10

    throw v1
.end method

.method public hasUnterminatedLine()Z
    .registers 3

    .line 180
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    if-eqz v1, :cond_83

    .line 134
    iget v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-lt v1, v2, :cond_14

    .line 135
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    goto :goto_14

    :catchall_11
    move-exception v1

    goto/16 :goto_8b

    .line 138
    :cond_14
    :goto_14
    iget v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    :goto_16
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_45

    .line 139
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_42

    .line 140
    iget v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    if-eq v1, v3, :cond_2f

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2f

    goto :goto_30

    :cond_2f
    move v4, v1

    .line 141
    :goto_30
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 142
    iput v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 143
    monitor-exit v0

    return-object v5

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 148
    :cond_45
    new-instance v1, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;

    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;-><init>(Lcom/bumptech/glide/disklrucache/StrictLineReader;I)V

    .line 161
    :cond_51
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 163
    iput v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 164
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    .line 166
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    :goto_63
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-eq v2, v4, :cond_51

    .line 167
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_80

    .line 168
    iget v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    if-eq v2, v3, :cond_76

    sub-int v5, v2, v3

    .line 169
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_76
    add-int/lit8 v2, v2, 0x1

    .line 171
    iput v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 172
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 128
    :cond_83
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :goto_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_3 .. :try_end_8c} :catchall_11

    throw v1
.end method
