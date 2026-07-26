.class public final Lokhttp3/internal/connection/Transmitter;
.super Ljava/lang/Object;
.source "Transmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Transmitter$TransmitterReference;
    }
.end annotation


# instance fields
.field private final call:Lokhttp3/Call;

.field private callStackTrace:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field public connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final eventListener:Lokhttp3/EventListener;

.field private exchange:Lokhttp3/internal/connection/Exchange;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

.field private exchangeRequestDone:Z

.field private exchangeResponseDone:Z

.field private noMoreExchanges:Z

.field private request:Lokhttp3/Request;

.field private final timeout:Lokio/AsyncTimeout;

.field private timeoutEarlyExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lokhttp3/internal/connection/Transmitter$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/Transmitter$1;-><init>(Lokhttp3/internal/connection/Transmitter;)V

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    .line 80
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    .line 81
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/Internal;->realConnectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RealConnectionPool;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 82
    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    .line 83
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v1

    invoke-interface {v1, p2}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    .line 84
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result p1

    int-to-long p1, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .registers 16

    .line 146
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 147
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    goto :goto_20

    :cond_1c
    const/4 v0, 0x0

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    .line 152
    :goto_20
    new-instance v0, Lokhttp3/Address;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v3

    iget-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v4

    iget-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    iget-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    .line 153
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v9

    iget-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    .line 154
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v10

    iget-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v11

    iget-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v12

    iget-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v13

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method private maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;
    .registers 8
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 283
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    if-eqz p2, :cond_14

    .line 284
    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v1, :cond_a

    goto :goto_14

    .line 285
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot release connection while it is in use"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_12
    move-exception p1

    goto :goto_63

    .line 287
    :cond_14
    :goto_14
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 288
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v3, :cond_28

    if-nez p2, :cond_23

    iget-boolean p2, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-eqz p2, :cond_28

    .line 289
    :cond_23
    invoke-virtual {p0}, Lokhttp3/internal/connection/Transmitter;->releaseConnectionNoEvents()Ljava/net/Socket;

    move-result-object p2

    goto :goto_29

    :cond_28
    move-object p2, v2

    .line 291
    :goto_29
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_2e

    move-object v1, v2

    .line 292
    :cond_2e
    iget-boolean v2, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v2, :cond_3a

    move v2, v4

    goto :goto_3b

    :cond_3a
    move v2, v3

    .line 293
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_12

    .line 294
    invoke-static {p2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v1, :cond_48

    .line 297
    iget-object p2, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {p2, v0, v1}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_48
    if-eqz v2, :cond_62

    if-eqz p1, :cond_4d

    move v3, v4

    .line 302
    :cond_4d
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Transmitter;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    if-eqz v3, :cond_5b

    .line 304
    iget-object p2, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {p2, v0, p1}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_62

    .line 306
    :cond_5b
    iget-object p2, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {p2, v0}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    :cond_62
    :goto_62
    return-object p1

    .line 293
    :goto_63
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_12

    throw p1
.end method

.method private timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    if-eqz v0, :cond_5

    return-object p1

    .line 107
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    .line 109
    :cond_e
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1a
    return-object v0
.end method


# virtual methods
.method acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    .registers 4

    .line 183
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_13

    .line 184
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 185
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    new-instance v0, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/connection/Transmitter$TransmitterReference;-><init>(Lokhttp3/internal/connection/Transmitter;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 183
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public callStart()V
    .registers 3

    .line 116
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    return-void
.end method

.method public canRetry()Z
    .registers 2

    .line 313
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasRouteToTry()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public cancel()V
    .registers 4

    .line 334
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 335
    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->canceled:Z

    .line 336
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 337
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 338
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v2}, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    goto :goto_1d

    :catchall_19
    move-exception v1

    goto :goto_2a

    .line 339
    :cond_1b
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 340
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_19

    if-eqz v1, :cond_24

    .line 342
    invoke-virtual {v1}, Lokhttp3/internal/connection/Exchange;->cancel()V

    goto :goto_29

    :cond_24
    if-eqz v2, :cond_29

    .line 344
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    :cond_29
    :goto_29
    return-void

    .line 340
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_19

    throw v1
.end method

.method public exchangeDoneDueToException()V
    .registers 3

    .line 221
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 224
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    goto :goto_14

    .line 222
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 224
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_c

    throw v1
.end method

.method exchangeMessageDone(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;
    .registers 8
    .param p4    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 238
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eq p1, v1, :cond_b

    .line 240
    monitor-exit v0

    return-object p4

    :catchall_9
    move-exception p1

    goto :goto_3f

    :cond_b
    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_15

    .line 244
    iget-boolean p2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    xor-int/2addr p2, p1

    .line 245
    iput-boolean p1, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    goto :goto_16

    :cond_15
    move p2, v2

    :goto_16
    if-eqz p3, :cond_1f

    .line 248
    iget-boolean p3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    if-nez p3, :cond_1d

    move p2, p1

    .line 249
    :cond_1d
    iput-boolean p1, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    .line 251
    :cond_1f
    iget-boolean p3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    if-eqz p3, :cond_36

    iget-boolean p3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    if-eqz p3, :cond_36

    if-eqz p2, :cond_36

    .line 253
    invoke-virtual {v1}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object p2

    iget p3, p2, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/2addr p3, p1

    iput p3, p2, Lokhttp3/internal/connection/RealConnection;->successCount:I

    const/4 p2, 0x0

    .line 254
    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    goto :goto_37

    :cond_36
    move p1, v2

    .line 256
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_9

    if-eqz p1, :cond_3e

    .line 258
    invoke-direct {p0, p4, v2}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p4

    :cond_3e
    return-object p4

    .line 256
    :goto_3f
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_9

    throw p1
.end method

.method public hasExchange()Z
    .registers 3

    .line 317
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 319
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isCanceled()Z
    .registers 3

    .line 349
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->canceled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 351
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method newExchange(Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/connection/Exchange;
    .registers 11

    .line 159
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-nez v1, :cond_3a

    .line 163
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v1, :cond_32

    .line 167
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_30

    .line 169
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/connection/ExchangeFinder;->find(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;

    move-result-object v7

    .line 170
    new-instance p1, Lokhttp3/internal/connection/Exchange;

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v6, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/Exchange;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/Call;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 172
    iget-object p2, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter p2

    .line 173
    :try_start_24
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    .line 175
    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    .line 176
    monitor-exit p2

    return-object p1

    :catchall_2d
    move-exception p1

    .line 177
    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw p1

    :catchall_30
    move-exception p1

    goto :goto_42

    .line 164
    :cond_32
    :try_start_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot make a new request because the previous response is still open: please call response.close()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_30

    throw p1
.end method

.method public noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 264
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 265
    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    .line 266
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :catchall_d
    move-exception p1

    .line 266
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public prepareToConnect(Lokhttp3/Request;)V
    .registers 9

    .line 125
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    if-eqz v0, :cond_31

    .line 126
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasRouteToTry()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 129
    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_2b

    .line 131
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, v1, v0}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    .line 133
    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    goto :goto_31

    .line 129
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 137
    :cond_31
    :goto_31
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    .line 138
    new-instance v6, Lokhttp3/internal/connection/ExchangeFinder;

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Transmitter;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/ExchangeFinder;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v6, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    return-void
.end method

.method releaseConnectionNoEvents()Ljava/net/Socket;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 196
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    const/4 v2, -0x1

    if-ge v1, v0, :cond_20

    .line 197
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v3, v3, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 198
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    goto :goto_21

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    move v1, v2

    :goto_21
    if-eq v1, v2, :cond_49

    .line 206
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 207
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 210
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 211
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 212
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/RealConnectionPool;->connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 213
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_48
    return-object v1

    .line 204
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public timeoutEarlyExit()V
    .registers 2

    .line 100
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    .line 102
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 100
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public timeoutEnter()V
    .registers 2

    .line 92
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    return-void
.end method
