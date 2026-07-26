.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Lokhttp3/internal/http2/Http2Stream$FramingSink;,
        Lokhttp3/internal/http2/Http2Stream$FramingSource;
    }
.end annotation


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Lokhttp3/internal/http2/Http2Connection;

.field errorCode:Lokhttp3/internal/http2/ErrorCode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field errorException:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hasResponseHeaders:Z

.field private final headersQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field final sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    .registers 9
    .param p5    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    .line 69
    new-instance v1, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 70
    new-instance v1, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    if-eqz p2, :cond_6c

    .line 86
    iput p1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    .line 87
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 88
    iget-object p1, p2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 89
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 90
    new-instance p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p2}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp3/internal/http2/Http2Stream;J)V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 91
    new-instance p2, Lokhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {p2, p0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 92
    iput-boolean p4, p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 93
    iput-boolean p3, p2, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz p5, :cond_49

    .line 95
    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_49
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-eqz p1, :cond_5a

    if-nez p5, :cond_52

    goto :goto_5a

    .line 99
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-nez p1, :cond_6b

    if-eqz p5, :cond_63

    goto :goto_6b

    .line 101
    :cond_63
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6b
    :goto_6b
    return-void

    .line 84
    :cond_6c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .registers 5
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 284
    monitor-exit p0

    return v1

    :catchall_8
    move-exception p1

    goto :goto_29

    .line 286
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_18

    .line 287
    monitor-exit p0

    return v1

    .line 289
    :cond_18
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 290
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_8

    .line 293
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget p2, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    const/4 p1, 0x1

    return p1

    .line 292
    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_8

    throw p1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 5

    .line 640
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_e

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method cancelStreamIfNecessary()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    monitor-enter p0

    .line 517
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v1, :cond_1a

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v1, :cond_18

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_1a

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_33

    :cond_18
    :goto_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 518
    :goto_1b
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    .line 519
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_16

    if-eqz v0, :cond_29

    .line 525
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_32

    :cond_29
    if-nez v1, :cond_32

    .line 527
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    :cond_32
    :goto_32
    return-void

    .line 519
    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_16

    throw v0
.end method

.method checkOutNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v1, :cond_24

    .line 647
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1c

    .line 649
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_1b

    .line 650
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_13

    goto :goto_1a

    :cond_13
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_1a
    throw v0

    :cond_1b
    return-void

    .line 648
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .registers 4
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 265
    :cond_7
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p2, v0, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public closeLater(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 4

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 276
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public getId()I
    .registers 2

    .line 106
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getSink()Lokio/Sink;
    .registers 3

    .line 248
    monitor-enter p0

    .line 249
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_16

    .line 250
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 252
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_14

    .line 253
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    return-object v0

    .line 252
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v0
.end method

.method public getSource()Lokio/Source;
    .registers 2

    .line 238
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 5

    .line 134
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 135
    :goto_a
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .registers 4

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 122
    monitor-exit p0

    return v1

    .line 124
    :cond_8
    :try_start_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v2, :cond_15

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_25

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_28

    :cond_15
    :goto_15
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_1f

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_25

    :cond_1f
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_13

    if-eqz v0, :cond_25

    .line 127
    monitor-exit p0

    return v1

    .line 129
    :cond_25
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_13

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .registers 2

    .line 229
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receive(Lokio/BufferedSource;J)V

    return-void
.end method

.method receiveHeaders(Lokhttp3/Headers;Z)V
    .registers 5

    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    if-nez p2, :cond_9

    goto :goto_11

    .line 314
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    # setter for: Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;
    invoke-static {v0, p1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$202(Lokhttp3/internal/http2/Http2Stream$FramingSource;Lokhttp3/Headers;)Lokhttp3/Headers;

    goto :goto_18

    :catchall_f
    move-exception p1

    goto :goto_30

    .line 311
    :cond_11
    :goto_11
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 312
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :goto_18
    if-eqz p2, :cond_1e

    .line 317
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iput-boolean v1, p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 319
    :cond_1e
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result p1

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_f

    if-nez p1, :cond_2f

    .line 323
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget p2, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    :cond_2f
    return-void

    .line 321
    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_f

    throw p1
.end method

.method declared-synchronized receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 3

    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_d

    .line 329
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 332
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method

.method public declared-synchronized takeHeaders()Lokhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f

    .line 150
    :goto_6
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_18

    .line 151
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_6

    :catchall_16
    move-exception v0

    goto :goto_3e

    .line 154
    :cond_18
    :try_start_18
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 156
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 157
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Headers;
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception v0

    goto :goto_44

    .line 159
    :cond_31
    :try_start_31
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_36

    goto :goto_3d

    :cond_36
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_3d
    throw v0

    .line 154
    :goto_3e
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    :goto_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_2f

    throw v0
.end method

.method waitForIo()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 660
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 662
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 663
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public writeTimeout()Lokio/Timeout;
    .registers 2

    .line 233
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
