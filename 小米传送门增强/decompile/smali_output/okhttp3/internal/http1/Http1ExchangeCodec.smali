.class public final Lokhttp3/internal/http1/Http1ExchangeCodec;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.java"

# interfaces
.implements Lokhttp3/internal/http/ExchangeCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;
    }
.end annotation


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private headerLimit:J

.field private final realConnection:Lokhttp3/internal/connection/RealConnection;

.field private final sink:Lokio/BufferedSink;

.field private final source:Lokio/BufferedSource;

.field private state:I

.field private trailers:Lokhttp3/Headers;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .registers 7

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const-wide/32 v0, 0x40000

    .line 85
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    .line 95
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    .line 96
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    .line 97
    iput-object p3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    .line 98
    iput-object p4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    return-void
.end method

.method static synthetic access$1000(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/OkHttpClient;
    .registers 1

    .line 66
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$200(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSink;
    .registers 1

    .line 66
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    return-object p0
.end method

.method static synthetic access$300(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokio/ForwardingTimeout;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->detachTimeout(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic access$400(Lokhttp3/internal/http1/Http1ExchangeCodec;)I
    .registers 1

    .line 66
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return p0
.end method

.method static synthetic access$402(Lokhttp3/internal/http1/Http1ExchangeCodec;I)I
    .registers 2

    .line 66
    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return p1
.end method

.method static synthetic access$500(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;
    .registers 1

    .line 66
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    return-object p0
.end method

.method static synthetic access$600(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/connection/RealConnection;
    .registers 1

    .line 66
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    return-object p0
.end method

.method static synthetic access$800(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/Headers;
    .registers 1

    .line 66
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    return-object p0
.end method

.method static synthetic access$802(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 2

    .line 66
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    return-object p1
.end method

.method static synthetic access$900(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/Headers;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaders()Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method private detachTimeout(Lokio/ForwardingTimeout;)V
    .registers 4

    .line 294
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    .line 295
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 296
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 297
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method

.method private newChunkedSink()Lokio/Sink;
    .registers 4

    .line 258
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    .line 259
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 260
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    return-object v0

    .line 258
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;
    .registers 4

    .line 276
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    .line 277
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 278
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    return-object v0

    .line 276
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private newFixedLengthSource(J)Lokio/Source;
    .registers 5

    .line 270
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    .line 271
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 272
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V

    return-object v0

    .line 270
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private newKnownLengthSink()Lokio/Sink;
    .registers 4

    .line 264
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x2

    .line 265
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 266
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/internal/http1/Http1ExchangeCodec$1;)V

    return-object v0

    .line 264
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newUnknownLengthSource()Lokio/Source;
    .registers 4

    .line 282
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    const/4 v0, 0x5

    .line 283
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 284
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 285
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/internal/http1/Http1ExchangeCodec$1;)V

    return-object v0

    .line 282
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readHeaderLine()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    iget-wide v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    return-object v0
.end method

.method private readHeaders()Lokhttp3/Headers;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 251
    :goto_5
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 252
    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    .line 254
    :cond_15
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 125
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    :cond_7
    return-void
.end method

.method public connection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    .line 102
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 107
    :cond_11
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_19
    :goto_19
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 112
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newChunkedSink()Lokio/Sink;

    move-result-object p1

    return-object p1

    :cond_2c
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_37

    .line 117
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newKnownLengthSink()Lokio/Sink;

    move-result-object p1

    return-object p1

    .line 120
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public flushRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public openResponseBodySource(Lokhttp3/Response;)Lokio/Source;
    .registers 6

    .line 157
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object p1

    return-object p1

    .line 161
    :cond_d
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 162
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;

    move-result-object p1

    return-object p1

    .line 165
    :cond_28
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_37

    .line 167
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object p1

    return-object p1

    .line 170
    :cond_37
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newUnknownLengthSource()Lokio/Source;

    move-result-object p1

    return-object p1
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_22

    if-ne v0, v2, :cond_9

    goto :goto_22

    .line 209
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_22
    :goto_22
    :try_start_22
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 215
    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v3, v0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    .line 216
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget v3, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 217
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v3, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 218
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 219
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaders()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v1

    const/16 v3, 0x64

    if-eqz p1, :cond_55

    .line 221
    iget p1, v0, Lokhttp3/internal/http/StatusLine;->code:I

    if-ne p1, v3, :cond_55

    const/4 p1, 0x0

    return-object p1

    :catch_53
    move-exception p1

    goto :goto_60

    .line 223
    :cond_55
    iget p1, v0, Lokhttp3/internal/http/StatusLine;->code:I

    if-ne p1, v3, :cond_5c

    .line 224
    iput v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return-object v1

    :cond_5c
    const/4 p1, 0x4

    .line 228
    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    :try_end_5f
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_5f} :catch_53

    return-object v1

    .line 233
    :goto_60
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_75

    .line 234
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    .line 233
    :cond_75
    const-string v0, "unknown"

    .line 236
    :goto_77
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reportedContentLength(Lokhttp3/Response;)J
    .registers 4

    .line 145
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    .line 149
    :cond_9
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, -0x1

    return-wide v0

    .line 153
    :cond_1a
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    return-wide v0
.end method

.method public skipConnectBody(Lokhttp3/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    return-void

    .line 307
    :cond_b
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object p1

    const v0, 0x7fffffff

    .line 308
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 309
    invoke-interface {p1}, Lokio/Source;->close()V

    return-void
.end method

.method public writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    if-nez v0, :cond_3d

    .line 196
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 197
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_14
    if-ge v1, p2, :cond_34

    .line 198
    iget-object v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 199
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 200
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 201
    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 203
    :cond_34
    iget-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p1, 0x1

    .line 204
    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return-void

    .line 195
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    .line 140
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 139
    invoke-static {p1, v0}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method
