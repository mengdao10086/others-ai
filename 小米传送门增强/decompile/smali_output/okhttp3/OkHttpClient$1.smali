.class Lokhttp3/OkHttpClient$1;
.super Lokhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Lokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
    .registers 3

    .line 133
    invoke-virtual {p1, p2}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 137
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    .line 154
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public code(Lokhttp3/Response$Builder;)I
    .registers 2

    .line 149
    iget p1, p1, Lokhttp3/Response$Builder;->code:I

    return p1
.end method

.method public equalsNonHost(Lokhttp3/Address;Lokhttp3/Address;)Z
    .registers 3

    .line 145
    invoke-virtual {p1, p2}, Lokhttp3/Address;->equalsNonHost(Lokhttp3/Address;)Z

    move-result p1

    return p1
.end method

.method public exchange(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 167
    iget-object p1, p1, Lokhttp3/Response;->exchange:Lokhttp3/internal/connection/Exchange;

    return-object p1
.end method

.method public initExchange(Lokhttp3/Response$Builder;Lokhttp3/internal/connection/Exchange;)V
    .registers 3

    .line 163
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->initExchange(Lokhttp3/internal/connection/Exchange;)V

    return-void
.end method

.method public realConnectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RealConnectionPool;
    .registers 2

    .line 141
    iget-object p1, p1, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    return-object p1
.end method
