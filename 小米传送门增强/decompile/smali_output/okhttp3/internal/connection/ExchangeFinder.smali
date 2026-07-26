.class final Lokhttp3/internal/connection/ExchangeFinder;
.super Ljava/lang/Object;
.source "ExchangeFinder.java"


# instance fields
.field private final address:Lokhttp3/Address;

.field private final call:Lokhttp3/Call;

.field private connectingConnection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final eventListener:Lokhttp3/EventListener;

.field private hasStreamFailure:Z

.field private nextRouteToTry:Lokhttp3/Route;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;

.field private final transmitter:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor <init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    .line 71
    iput-object p2, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 72
    iput-object p3, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    .line 73
    iput-object p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    .line 74
    iput-object p5, p0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    .line 75
    new-instance p1, Lokhttp3/internal/connection/RouteSelector;

    iget-object p2, p2, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {p1, p3, p2, p4, p5}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    return-void
.end method

.method private findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 140
    iget-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v2

    .line 141
    :try_start_5
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_134

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    .line 146
    iget-object v3, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v4, v3, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v5, 0x0

    if-eqz v4, :cond_23

    .line 147
    iget-boolean v6, v4, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    if-eqz v6, :cond_23

    .line 148
    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->releaseConnectionNoEvents()Ljava/net/Socket;

    move-result-object v3

    goto :goto_24

    :catchall_20
    move-exception v0

    goto/16 :goto_13c

    :cond_23
    move-object v3, v5

    .line 151
    :goto_24
    iget-object v6, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v7, v6, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v7, :cond_2c

    move-object v4, v5

    goto :goto_2d

    :cond_2c
    move-object v7, v5

    :goto_2d
    const/4 v8, 0x1

    if-nez v7, :cond_58

    .line 159
    iget-object v9, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v10, v1, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    invoke-virtual {v9, v10, v6, v5, v0}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 161
    iget-object v6, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v7, v6, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v6, v5

    move v9, v8

    goto :goto_5a

    .line 162
    :cond_41
    iget-object v6, v1, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    if-eqz v6, :cond_49

    .line 164
    iput-object v5, v1, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    :goto_47
    move v9, v0

    goto :goto_5a

    .line 165
    :cond_49
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/connection/ExchangeFinder;->retryCurrentRoute()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 166
    iget-object v6, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v6, v6, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v6

    goto :goto_47

    :cond_58
    move v9, v0

    move-object v6, v5

    .line 169
    :goto_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_20

    .line 170
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v4, :cond_67

    .line 173
    iget-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    iget-object v3, v1, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    invoke-virtual {v2, v3, v4}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_67
    if-eqz v9, :cond_70

    .line 176
    iget-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    iget-object v3, v1, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    invoke-virtual {v2, v3, v7}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_70
    if-eqz v7, :cond_73

    return-object v7

    :cond_73
    if-nez v6, :cond_89

    .line 185
    iget-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v2

    if-nez v2, :cond_89

    .line 187
    :cond_7f
    iget-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    move v2, v8

    goto :goto_8a

    :cond_89
    move v2, v0

    .line 191
    :goto_8a
    iget-object v3, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v3

    .line 192
    :try_start_8d
    iget-object v4, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v4}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_12a

    if-eqz v2, :cond_b2

    .line 197
    iget-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v2

    .line 198
    iget-object v4, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v10, v1, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iget-object v11, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v4, v10, v11, v2, v0}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 201
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v7, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    move v9, v8

    goto :goto_b3

    :catchall_af
    move-exception v0

    goto/16 :goto_132

    :cond_b2
    move-object v2, v5

    :cond_b3
    :goto_b3
    if-nez v9, :cond_c6

    if-nez v6, :cond_bd

    .line 207
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    move-result-object v6

    .line 212
    :cond_bd
    new-instance v7, Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-direct {v7, v0, v6}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V

    .line 213
    iput-object v7, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    .line 215
    :cond_c6
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_8d .. :try_end_c7} :catchall_af

    if-eqz v9, :cond_d1

    .line 219
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    iget-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    invoke-virtual {v0, v2, v7}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-object v7

    .line 224
    :cond_d1
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    iget-object v3, v1, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    move-object v10, v7

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lokhttp3/internal/connection/RealConnection;->connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V

    .line 226
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v7}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    .line 229
    iget-object v4, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v4

    .line 230
    :try_start_f5
    iput-object v5, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    .line 233
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v3, v1, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iget-object v9, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0, v3, v9, v2, v8}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 235
    iput-boolean v8, v7, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 236
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v5

    .line 237
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v7, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 241
    iput-object v6, v1, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    goto :goto_11c

    :catchall_110
    move-exception v0

    goto :goto_128

    .line 243
    :cond_112
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/RealConnectionPool;->put(Lokhttp3/internal/connection/RealConnection;)V

    .line 244
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/Transmitter;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V

    .line 246
    :goto_11c
    monitor-exit v4
    :try_end_11d
    .catchall {:try_start_f5 .. :try_end_11d} :catchall_110

    .line 247
    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 249
    iget-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    iget-object v2, v1, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    invoke-virtual {v0, v2, v7}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-object v7

    .line 246
    :goto_128
    :try_start_128
    monitor-exit v4
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_110

    throw v0

    .line 192
    :cond_12a
    :try_start_12a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :goto_132
    monitor-exit v3
    :try_end_133
    .catchall {:try_start_12a .. :try_end_133} :catchall_af

    throw v0

    .line 141
    :cond_134
    :try_start_134
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :goto_13c
    monitor-exit v2
    :try_end_13d
    .catchall {:try_start_134 .. :try_end_13d} :catchall_20

    throw v0
.end method

.method private findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/ExchangeFinder;->findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    .line 113
    :try_start_7
    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_15

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-nez v2, :cond_15

    .line 114
    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception p1

    goto :goto_21

    .line 116
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_13

    .line 120
    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_20

    .line 121
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    goto :goto_0

    :cond_20
    return-object v0

    .line 116
    :goto_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_13

    throw p1
.end method

.method private retryCurrentRoute()Z
    .registers 3

    .line 294
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v0, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_24

    iget v1, v0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    if-nez v1, :cond_24

    .line 296
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method


# virtual methods
.method connectingConnection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    .line 255
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public find(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;
    .registers 11

    .line 81
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    .line 82
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    .line 83
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    .line 84
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v4

    .line 85
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    .line 88
    :try_start_16
    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/connection/ExchangeFinder;->findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object p3

    .line 90
    invoke-virtual {p3, p1, p2}, Lokhttp3/internal/connection/RealConnection;->newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/internal/http/ExchangeCodec;

    move-result-object p1
    :try_end_1e
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_16 .. :try_end_1e} :catch_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    goto :goto_23

    :catch_21
    move-exception p1

    goto :goto_2c

    .line 95
    :goto_23
    invoke-virtual {p0}, Lokhttp3/internal/connection/ExchangeFinder;->trackFailure()V

    .line 96
    new-instance p2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 92
    :goto_2c
    invoke-virtual {p0}, Lokhttp3/internal/connection/ExchangeFinder;->trackFailure()V

    .line 93
    throw p1
.end method

.method hasRouteToTry()Z
    .registers 4

    .line 274
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 276
    monitor-exit v0

    return v2

    :catchall_a
    move-exception v1

    goto :goto_34

    .line 278
    :cond_c
    invoke-direct {p0}, Lokhttp3/internal/connection/ExchangeFinder;->retryCurrentRoute()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 280
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v1, v1, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    .line 281
    monitor-exit v0

    return v2

    .line 283
    :cond_1e
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v1

    if-nez v1, :cond_32

    :cond_28
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 284
    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :cond_32
    :goto_32
    monitor-exit v0

    return v2

    .line 285
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_a

    throw v1
.end method

.method hasStreamFailure()Z
    .registers 3

    .line 267
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 269
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method trackFailure()V
    .registers 3

    .line 260
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 261
    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    .line 262
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method
