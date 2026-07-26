.class final Lokhttp3/internal/connection/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .line 45
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 4

    .line 132
    iget v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    :goto_2
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 133
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/ConnectionSpec;

    invoke-virtual {v1, p1}, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    iget-object v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_20

    .line 57
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/ConnectionSpec;

    .line 58
    invoke-virtual {v2, p1}, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_1d

    add-int/lit8 v0, v0, 0x1

    .line 60
    iput v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    goto :goto_21

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    const/4 v2, 0x0

    :goto_21
    if-eqz v2, :cond_31

    .line 75
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 77
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-boolean v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v0, v2, p1, v1}, Lokhttp3/internal/Internal;->apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    return-object v2

    .line 69
    :cond_31
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method connectionFailed(Ljava/io/IOException;)Z
    .registers 4

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    .line 93
    iget-boolean v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    .line 98
    :cond_9
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_e

    return v1

    .line 105
    :cond_e
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_13

    return v1

    .line 111
    :cond_13
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_20

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_20

    return v1

    .line 117
    :cond_20
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_25

    return v1

    .line 123
    :cond_25
    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    return p1
.end method
