.class public Lokhttp3/internal/platform/ConscryptPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "ConscryptPlatform.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;
    .registers 2

    const/4 v0, 0x0

    .line 107
    :try_start_1
    const-string v1, "org.conscrypt.Conscrypt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 109
    invoke-static {}, Lorg/conscrypt/Conscrypt;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    .line 113
    :cond_d
    new-instance v1, Lokhttp3/internal/platform/ConscryptPlatform;

    invoke-direct {v1}, Lokhttp3/internal/platform/ConscryptPlatform;-><init>()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    return-object v0
.end method

.method private getProvider()Ljava/security/Provider;
    .registers 2

    .line 42
    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProviderBuilder()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->build()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .line 121
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 122
    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    :cond_a
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    .line 71
    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 72
    invoke-static {p1, p2}, Lorg/conscrypt/Conscrypt;->setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 76
    :cond_f
    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    .line 77
    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V

    goto :goto_23

    .line 79
    :cond_20
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :goto_23
    return-void
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 4

    .line 93
    :try_start_0
    const-string v0, "TLSv1.3"

    invoke-direct {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 97
    :try_start_c
    const-string v1, "TLS"

    invoke-direct {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_16} :catch_17

    return-object v0

    .line 99
    :catch_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 84
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_b
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
