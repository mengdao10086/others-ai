.class final Lokhttp3/internal/http2/Http2Stream$FramingSink;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramingSink"
.end annotation


# instance fields
.field closed:Z

.field finished:Z

.field private final sendBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;

.field private trailers:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    return-void
.end method

.method private emitFrame(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_79

    .line 568
    :goto_a
    :try_start_a
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_26

    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v2, :cond_26

    iget-object v2, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v2, :cond_26

    .line 569
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_24

    goto :goto_a

    :catchall_24
    move-exception p1

    goto :goto_7b

    .line 572
    :cond_26
    :try_start_26
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 575
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V

    .line 576
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v1, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 577
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 578
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_79

    .line 580
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    if-eqz p1, :cond_5c

    .line 582
    :try_start_4d
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_5c

    const/4 p1, 0x1

    :goto_58
    move v7, p1

    goto :goto_5e

    :catchall_5a
    move-exception p1

    goto :goto_71

    :cond_5c
    const/4 p1, 0x0

    goto :goto_58

    .line 583
    :goto_5e
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, p1, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v6, p1, Lokhttp3/internal/http2/Http2Stream;->id:I

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/http2/Http2Connection;->writeData(IZLokio/Buffer;J)V
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_5a

    .line 585
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void

    :goto_71
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_79
    move-exception p1

    goto :goto_83

    .line 572
    :goto_7b
    :try_start_7b
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    .line 578
    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_79

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 607
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v1, :cond_c

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    goto/16 :goto_7b

    .line 608
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_9

    .line 609
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_65

    .line 613
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-lez v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    .line 614
    :goto_26
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->trailers:Lokhttp3/Headers;

    if-eqz v3, :cond_48

    .line 616
    :goto_2a
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_38

    .line 617
    invoke-direct {p0, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_2a

    .line 619
    :cond_38
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v0, v0, Lokhttp3/internal/http2/Http2Stream;->id:I

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->trailers:Lokhttp3/Headers;

    invoke-static {v3}, Lokhttp3/internal/Util;->toHeaderBlock(Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lokhttp3/internal/http2/Http2Connection;->writeHeaders(IZLjava/util/List;)V

    goto :goto_65

    :cond_48
    if-eqz v0, :cond_58

    .line 621
    :goto_4a
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_65

    .line 622
    invoke-direct {p0, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_4a

    .line 625
    :cond_58
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v3, v0, Lokhttp3/internal/http2/Http2Stream;->id:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/http2/Http2Connection;->writeData(IZLokio/Buffer;J)V

    .line 628
    :cond_65
    :goto_65
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 629
    :try_start_68
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    .line 630
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_78

    .line 631
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    .line 632
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    return-void

    :catchall_78
    move-exception v0

    .line 630
    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    .line 608
    :goto_7b
    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_9

    throw v1
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 592
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V

    .line 593
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 594
    :goto_9
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    const/4 v0, 0x0

    .line 595
    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    .line 596
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_9

    :cond_21
    return-void

    :catchall_22
    move-exception v1

    .line 593
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 601
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 554
    :goto_5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_16

    const/4 p1, 0x0

    .line 555
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_5

    :cond_16
    return-void
.end method
