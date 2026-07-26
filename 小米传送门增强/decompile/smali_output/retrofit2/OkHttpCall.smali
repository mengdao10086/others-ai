.class final Lretrofit2/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/OkHttpCall$NoContentResponseBody;,
        Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private volatile canceled:Z

.field private creationFailure:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private executed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private rawCall:Lokhttp3/Call;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final requestFactory:Lretrofit2/RequestFactory;

.field private final responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "[",
            "Ljava/lang/Object;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    .line 56
    iput-object p2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    .line 57
    iput-object p3, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/Call$Factory;

    .line 58
    iput-object p4, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    return-void
.end method

.method private createRawCall()Lokhttp3/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/Call$Factory;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lretrofit2/RequestFactory;->create([Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 210
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRawCall()Lokhttp3/Call;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 91
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    if-eqz v0, :cond_5

    return-object v0

    .line 95
    :cond_5
    iget-object v0, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v0, :cond_1a

    .line 96
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_17

    .line 98
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_14

    .line 99
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 101
    :cond_14
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 97
    :cond_17
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 107
    :cond_1a
    :try_start_1a
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_20} :catch_25
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_20} :catch_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    goto :goto_26

    :catch_23
    move-exception v0

    goto :goto_26

    :catch_25
    move-exception v0

    .line 109
    :goto_26
    invoke-static {v0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 110
    iput-object v0, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 111
    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->canceled:Z

    .line 258
    monitor-enter p0

    .line 259
    :try_start_4
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 260
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    if-eqz v0, :cond_c

    .line 262
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    .line 260
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lretrofit2/Call;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit2/OkHttpCall;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/OkHttpCall<",
            "TT;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/Call$Factory;

    iget-object v4, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 117
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    monitor-enter p0

    .line 123
    :try_start_6
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 126
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 127
    iget-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v0, :cond_26

    if-nez v1, :cond_26

    .line 130
    :try_start_15
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1d

    move-object v0, v2

    goto :goto_26

    :catchall_1d
    move-exception v1

    .line 132
    :try_start_1e
    invoke-static {v1}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 133
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_45

    .line 136
    :cond_26
    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_24

    if-eqz v1, :cond_2d

    .line 139
    invoke-interface {p1, p0, v1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void

    .line 143
    :cond_2d
    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_34

    .line 144
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 147
    :cond_34
    new-instance v1, Lretrofit2/OkHttpCall$1;

    invoke-direct {v1, p0, p1}, Lretrofit2/OkHttpCall$1;-><init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 123
    :cond_3d
    :try_start_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :goto_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_24

    throw p1
.end method

.method public execute()Lretrofit2/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    monitor-enter p0

    .line 194
    :try_start_1
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 197
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->getRawCall()Lokhttp3/Call;

    move-result-object v0

    .line 198
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1d

    .line 200
    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_14

    .line 201
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 204
    :cond_14
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v0

    return-object v0

    :catchall_1d
    move-exception v0

    goto :goto_27

    .line 194
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_1d

    throw v0
.end method

.method public isCanceled()Z
    .registers 3

    .line 268
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->canceled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 271
    :cond_6
    monitor-enter p0

    .line 272
    :try_start_7
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :catchall_12
    move-exception v0

    goto :goto_17

    :cond_14
    const/4 v1, 0x0

    :goto_15
    monitor-exit p0

    return v1

    .line 273
    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_12

    throw v0
.end method

.method parseResponse(Lokhttp3/Response;)Lretrofit2/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    new-instance v1, Lretrofit2/OkHttpCall$NoContentResponseBody;

    .line 222
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_51

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_2a

    goto :goto_51

    :cond_2a
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_48

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_33

    goto :goto_48

    .line 241
    :cond_33
    new-instance v1, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {v1, v0}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lokhttp3/ResponseBody;)V

    .line 243
    :try_start_38
    iget-object v0, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    invoke-interface {v0, v1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    invoke-static {v0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    move-exception p1

    .line 248
    invoke-virtual {v1}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->throwIfCaught()V

    .line 249
    throw p1

    .line 237
    :cond_48
    :goto_48
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    const/4 v0, 0x0

    .line 238
    invoke-static {v0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1

    return-object p1

    .line 229
    :cond_51
    :goto_51
    :try_start_51
    invoke-static {v0}, Lretrofit2/Utils;->buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v1

    .line 230
    invoke-static {v1, p1}, Lretrofit2/Response;->error(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_5d

    .line 232
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-object p1

    :catchall_5d
    move-exception p1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 233
    throw p1
.end method

.method public declared-synchronized request()Lokhttp3/Request;
    .registers 4

    monitor-enter p0

    .line 70
    :try_start_1
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->getRawCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_d
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    goto :goto_16

    :catch_d
    move-exception v0

    .line 72
    :try_start_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_b

    throw v0
.end method
