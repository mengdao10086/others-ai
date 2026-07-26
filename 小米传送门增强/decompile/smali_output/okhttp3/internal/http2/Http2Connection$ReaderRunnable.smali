.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lokhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .registers 4

    .line 657
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 658
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 1

    .line 0
    return-void
.end method

.method applyAndAckSettings(ZLokhttp3/internal/http2/Settings;)V
    .registers 7

    .line 776
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 777
    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_65

    .line 778
    :try_start_8
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    if-eqz p1, :cond_1d

    .line 779
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->clear()V

    goto :goto_1d

    :catchall_1a
    move-exception p1

    goto/16 :goto_98

    .line 780
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 781
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const/4 p2, -0x1

    const/4 v3, 0x0

    if-eq p1, p2, :cond_58

    if-eq p1, v2, :cond_58

    sub-int/2addr p1, v2

    int-to-long p1, p1

    .line 784
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 785
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Lokhttp3/internal/http2/Http2Stream;

    goto :goto_5a

    :cond_58
    const-wide/16 p1, 0x0

    .line 788
    :cond_5a
    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_1a

    .line 790
    :try_start_5b
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_67
    .catchall {:try_start_5b .. :try_end_64} :catchall_65

    goto :goto_6d

    :catchall_65
    move-exception p1

    goto :goto_9a

    :catch_67
    move-exception v1

    .line 792
    :try_start_68
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # invokes: Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V
    invoke-static {v2, v1}, Lokhttp3/internal/http2/Http2Connection;->access$000(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    .line 794
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_65

    if-eqz v3, :cond_81

    .line 796
    array-length v0, v3

    const/4 v1, 0x0

    :goto_72
    if-ge v1, v0, :cond_81

    aget-object v2, v3, v1

    .line 797
    monitor-enter v2

    .line 798
    :try_start_77
    invoke-virtual {v2, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 799
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :catchall_7e
    move-exception p1

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_7e

    throw p1

    .line 802
    :cond_81
    # getter for: Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v0, "OkHttp %s settings"

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 788
    :goto_98
    :try_start_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_1a

    :try_start_99
    throw p1

    .line 794
    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_65

    throw p1
.end method

.method public data(ZILokio/BufferedSource;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 685
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushDataLater(ILokio/BufferedSource;IZ)V

    return-void

    .line 688
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_27

    .line 690
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 691
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 692
    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return-void

    .line 695
    :cond_27
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V

    if-eqz p1, :cond_32

    .line 697
    sget-object p1, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    :cond_32
    return-void
.end method

.method protected execute()V
    .registers 6

    .line 663
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    .line 667
    :try_start_3
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-virtual {v2, p0}, Lokhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V

    .line 668
    :goto_8
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_8

    .line 670
    :cond_12
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_28
    .catchall {:try_start_3 .. :try_end_14} :catchall_25

    .line 671
    :try_start_14
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_16} :catch_23
    .catchall {:try_start_14 .. :try_end_16} :catchall_21

    .line 677
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 678
    :goto_1b
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_32

    :catchall_21
    move-exception v3

    goto :goto_33

    :catch_23
    move-exception v1

    goto :goto_2a

    :catchall_25
    move-exception v3

    move-object v2, v0

    goto :goto_33

    :catch_28
    move-exception v1

    move-object v2, v0

    .line 674
    :goto_2a
    :try_start_2a
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_21

    .line 677
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v0, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_1b

    :goto_32
    return-void

    :goto_33
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 678
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .registers 7

    .line 836
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 841
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p2

    .line 842
    :try_start_6
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object p3, p3, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lokhttp3/internal/http2/Http2Stream;

    .line 843
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x1

    # setter for: Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->access$302(Lokhttp3/internal/http2/Http2Connection;Z)Z

    .line 844
    monitor-exit p2
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_49

    .line 847
    array-length p2, p3

    const/4 v0, 0x0

    :goto_27
    if-ge v0, p2, :cond_48

    aget-object v1, p3, v0

    .line 848
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v2

    if-le v2, p1, :cond_45

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 849
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 850
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_48
    return-void

    :catchall_49
    move-exception p1

    .line 844
    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public headers(ZIILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 703
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 704
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void

    .line 708
    :cond_e
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p3

    .line 709
    :try_start_11
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_6f

    .line 713
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$300(Lokhttp3/internal/http2/Http2Connection;)Z

    move-result v0

    if-eqz v0, :cond_25

    monitor-exit p3

    return-void

    :catchall_23
    move-exception p1

    goto :goto_78

    .line 716
    :cond_25
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v1, v0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v1, :cond_2d

    monitor-exit p3

    return-void

    .line 719
    :cond_2d
    rem-int/lit8 v1, p2, 0x2

    iget v0, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v1, v0, :cond_37

    monitor-exit p3

    return-void

    .line 722
    :cond_37
    invoke-static {p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v5

    .line 723
    new-instance p4, Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x0

    move-object v0, p4

    move v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 725
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p2, p1, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 726
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    # getter for: Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v1, "OkHttp %s stream %d"

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 728
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2, p4}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Http2Stream;)V

    .line 727
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 742
    monitor-exit p3

    return-void

    .line 744
    :cond_6f
    monitor-exit p3
    :try_end_70
    .catchall {:try_start_11 .. :try_end_70} :catchall_23

    .line 747
    invoke-static {p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    return-void

    .line 744
    :goto_78
    :try_start_78
    monitor-exit p3
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_23

    throw p1
.end method

.method public ping(ZII)V
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    .line 815
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p1

    if-ne p2, v0, :cond_10

    .line 817
    :try_start_8
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # operator++ for: Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J
    invoke-static {p2}, Lokhttp3/internal/http2/Http2Connection;->access$108(Lokhttp3/internal/http2/Http2Connection;)J

    goto :goto_26

    :catchall_e
    move-exception p2

    goto :goto_28

    :cond_10
    const/4 p3, 0x2

    if-ne p2, p3, :cond_19

    .line 819
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # operator++ for: Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J
    invoke-static {p2}, Lokhttp3/internal/http2/Http2Connection;->access$608(Lokhttp3/internal/http2/Http2Connection;)J

    goto :goto_26

    :cond_19
    const/4 p3, 0x3

    if-ne p2, p3, :cond_26

    .line 821
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # operator++ for: Lokhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J
    invoke-static {p2}, Lokhttp3/internal/http2/Http2Connection;->access$708(Lokhttp3/internal/http2/Http2Connection;)J

    .line 822
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 824
    :cond_26
    :goto_26
    monitor-exit p1

    goto :goto_3a

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_e

    throw p2

    .line 828
    :cond_2a
    :try_start_2a
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$500(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$PingRunnable;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {v1, v2, v0, p2, p3}, Lokhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;ZII)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2a .. :try_end_3a} :catch_3a

    :catch_3a
    :goto_3a
    return-void
.end method

.method public priority(IIIZ)V
    .registers 5

    .line 0
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 878
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 4

    .line 751
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 752
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 755
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 757
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_19
    return-void
.end method

.method public settings(ZLokhttp3/internal/http2/Settings;)V
    .registers 11

    .line 763
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$500(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v3, "OkHttp %s ACK Settings"

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;ZLokhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

.method public windowUpdate(IJ)V
    .registers 7

    if-nez p1, :cond_14

    .line 857
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 858
    :try_start_5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v1, p1, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 859
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 860
    monitor-exit v0

    goto :goto_25

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1

    .line 862
    :cond_14
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 864
    monitor-enter p1

    .line 865
    :try_start_1d
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 866
    monitor-exit p1

    goto :goto_25

    :catchall_22
    move-exception p2

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p2

    :cond_25
    :goto_25
    return-void
.end method
