.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lokhttp3/OkHttpClient;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lokhttp3/Request;

.field private transmitter:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method private constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 57
    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    .line 58
    iput-boolean p3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    return-void
.end method

.method static synthetic access$000(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;
    .registers 1

    .line 39
    iget-object p0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    return-object p0
.end method

.method static newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;
    .registers 4

    .line 63
    new-instance v0, Lokhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    .line 64
    new-instance p1, Lokhttp3/internal/connection/Transmitter;

    invoke-direct {p1, p0, v0}, Lokhttp3/internal/connection/Transmitter;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V

    iput-object p1, v0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 97
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/RealCall;
    .registers 4

    .line 114
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .registers 4

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 91
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 92
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    .line 93
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    return-void

    :catchall_1d
    move-exception p1

    goto :goto_27

    .line 89
    :cond_1f
    :try_start_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_1d

    throw p1
.end method

.method public execute()Lokhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_37

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 76
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_35

    .line 77
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->timeoutEnter()V

    .line 78
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    .line 80
    :try_start_13
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    .line 81
    invoke-virtual {p0}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_2a

    .line 83
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    return-object v0

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    throw v0

    :catchall_35
    move-exception v0

    goto :goto_3f

    .line 74
    :cond_37
    :try_start_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_35

    throw v0
.end method

.method getResponseWithInterceptorChain()Lokhttp3/Response;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/cache/InternalCache;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_4b

    .line 219
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    :cond_4b
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v11, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v5, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 224
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v7

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 225
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v8

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;ILokhttp3/Request;Lokhttp3/Call;III)V

    const/4 v0, 0x0

    .line 229
    :try_start_75
    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v11, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v2
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_81} :catch_96
    .catchall {:try_start_75 .. :try_end_81} :catchall_94

    if-nez v2, :cond_89

    .line 240
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0, v10}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v1

    .line 231
    :cond_89
    :try_start_89
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_94} :catch_96
    .catchall {:try_start_89 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception v1

    goto :goto_a3

    :catch_96
    move-exception v0

    const/4 v1, 0x1

    .line 237
    :try_start_98
    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v0

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_a3
    if-nez v0, :cond_aa

    .line 240
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0, v10}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_aa
    throw v1
.end method

.method public isCanceled()Z
    .registers 2

    .line 109
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v0

    return v0
.end method

.method redactedUrl()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .line 69
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-boolean v1, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1a

    const-string v1, "web socket"

    goto :goto_1c

    :cond_1a
    const-string v1, "call"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
