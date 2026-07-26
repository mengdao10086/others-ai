.class final Lokhttp3/internal/platform/Jdk9Platform;
.super Lokhttp3/internal/platform/Platform;
.source "Jdk9Platform.java"


# instance fields
.field final getProtocolMethod:Ljava/lang/reflect/Method;

.field final setProtocolMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 34
    iput-object p1, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    .line 35
    iput-object p2, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;
    .registers 4

    const/4 v0, 0x0

    .line 92
    :try_start_1
    const-class v1, Ljavax/net/ssl/SSLParameters;

    const-string v2, "setApplicationProtocols"

    const-class v3, [Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    const-class v2, Ljavax/net/ssl/SSLSocket;

    const-string v3, "getApplicationProtocol"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 96
    new-instance v3, Lokhttp3/internal/platform/Jdk9Platform;

    invoke-direct {v3, v1, v2}, Lokhttp3/internal/platform/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v3

    :catch_1d
    return-object v0
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
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

    .line 42
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p2

    .line 44
    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 46
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    .line 47
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 46
    invoke-virtual {v0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1e} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p1

    goto :goto_22

    :catch_21
    move-exception p1

    .line 51
    :goto_22
    new-instance p2, Ljava/lang/AssertionError;

    const-string p3, "failed to set SSL parameters"

    invoke-direct {p2, p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 58
    const-string v0, "failed to get ALPN selected protocol"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1b

    .line 62
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_13} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_13} :catch_17

    if-eqz v0, :cond_16

    goto :goto_1b

    :cond_16
    return-object p1

    :catch_17
    move-exception p1

    goto :goto_1c

    :catch_19
    move-exception p1

    goto :goto_22

    :cond_1b
    :goto_1b
    return-object v1

    .line 76
    :goto_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :goto_22
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_2b

    return-object v1

    .line 74
    :cond_2b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
