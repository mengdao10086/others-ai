.class abstract Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

.field protected final timeout:Lokio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V
    .registers 3

    .line 379
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Lokio/ForwardingTimeout;

    # getter for: Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;
    invoke-static {p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$500(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/internal/http1/Http1ExchangeCodec$1;)V
    .registers 3

    .line 379
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    # getter for: Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;
    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$500(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide p1

    :catch_b
    move-exception p1

    .line 391
    iget-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    # getter for: Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;
    invoke-static {p2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$600(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/connection/RealConnection;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 392
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->responseBodyComplete()V

    .line 393
    throw p1
.end method

.method final responseBodyComplete()V
    .registers 4

    .line 402
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    # getter for: Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$400(Lokhttp3/internal/http1/Http1ExchangeCodec;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    return-void

    .line 403
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    # getter for: Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$400(Lokhttp3/internal/http1/Http1ExchangeCodec;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_20

    .line 405
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    iget-object v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    # invokes: Lokhttp3/internal/http1/Http1ExchangeCodec;->detachTimeout(Lokio/ForwardingTimeout;)V
    invoke-static {v0, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$300(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokio/ForwardingTimeout;)V

    .line 407
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    # setter for: Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    invoke-static {v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$402(Lokhttp3/internal/http1/Http1ExchangeCodec;I)I

    return-void

    .line 403
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    # getter for: Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    invoke-static {v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$400(Lokhttp3/internal/http1/Http1ExchangeCodec;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 384
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    return-object v0
.end method
