.class final Lokhttp3/internal/connection/Exchange$ResponseBodySource;
.super Lokio/ForwardingSource;
.source "Exchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/Exchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResponseBodySource"
.end annotation


# instance fields
.field private bytesReceived:J

.field private closed:Z

.field private completed:Z

.field private final contentLength:J

.field final synthetic this$0:Lokhttp3/internal/connection/Exchange;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V
    .registers 5

    .line 274
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->this$0:Lokhttp3/internal/connection/Exchange;

    .line 275
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 276
    iput-wide p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_11

    const/4 p1, 0x0

    .line 279
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_11
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    .line 313
    :try_start_8
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 316
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method complete(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 9
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 321
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->completed:Z

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->completed:Z

    .line 323
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->this$0:Lokhttp3/internal/connection/Exchange;

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    if-nez v0, :cond_57

    .line 286
    :try_start_4
    invoke-virtual {p0}, Lokio/ForwardingSource;->delegate()Lokio/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    const/4 v2, 0x0

    if-nez p3, :cond_19

    .line 288
    invoke-virtual {p0, v2}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    return-wide v0

    :catch_17
    move-exception p1

    goto :goto_52

    .line 292
    :cond_19
    iget-wide v3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    add-long/2addr v3, p1

    .line 293
    iget-wide v5, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    cmp-long p3, v5, v0

    if-eqz p3, :cond_48

    cmp-long p3, v3, v5

    if-gtz p3, :cond_27

    goto :goto_48

    .line 294
    :cond_27
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_48
    :goto_48
    iput-wide v3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    cmp-long p3, v3, v5

    if-nez p3, :cond_51

    .line 300
    invoke-virtual {p0, v2}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_51} :catch_17

    :cond_51
    return-wide p1

    .line 305
    :goto_52
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 284
    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
