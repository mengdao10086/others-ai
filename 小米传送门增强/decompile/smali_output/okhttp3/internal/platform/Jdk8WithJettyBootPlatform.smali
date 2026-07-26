.class Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "Jdk8WithJettyBootPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;
    }
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 38
    iput-object p1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 39
    iput-object p2, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 40
    iput-object p3, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    .line 41
    iput-object p4, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 42
    iput-object p5, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .registers 13

    .line 84
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    const-class v1, Ljavax/net/ssl/SSLSocket;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 85
    :try_start_6
    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$Provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$ClientProvider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$ServerProvider"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 89
    const-string v0, "put"

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 90
    const-string v0, "get"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 91
    const-string v0, "remove"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 92
    new-instance v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_6d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6d} :catch_6e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6d} :catch_6e

    return-object v0

    :catch_6e
    return-object v2
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 4

    .line 60
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    goto :goto_e

    :catch_d
    move-exception p1

    .line 62
    :goto_e
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "failed to remove ALPN"

    invoke-direct {v0, v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

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

    .line 47
    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 50
    :try_start_4
    const-class p3, Lokhttp3/internal/platform/Platform;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iget-object v0, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    iget-object v1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;

    invoke-direct {v1, p2}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;-><init>(Ljava/util/List;)V

    invoke-static {p3, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 52
    iget-object p3, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_25} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    goto :goto_29

    :catch_28
    move-exception p1

    .line 54
    :goto_29
    new-instance p2, Ljava/lang/AssertionError;

    const-string p3, "failed to set ALPN"

    invoke-direct {p2, p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;

    .line 70
    iget-boolean v0, p1, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->unsupported:Z

    if-nez v0, :cond_28

    iget-object v2, p1, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    if-nez v2, :cond_28

    .line 71
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object p1

    const-string v0, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_24
    move-exception p1

    goto :goto_2e

    :catch_26
    move-exception p1

    goto :goto_2e

    :cond_28
    if-eqz v0, :cond_2b

    goto :goto_2d

    .line 75
    :cond_2b
    iget-object v1, p1, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2d} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2d} :catch_24

    :goto_2d
    return-object v1

    .line 77
    :goto_2e
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "failed to get ALPN selected protocol"

    invoke-direct {v0, v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
