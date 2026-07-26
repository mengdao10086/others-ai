.class public interface abstract Lokhttp3/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final SYSTEM:Lokhttp3/Dns;


# direct methods
.method public static synthetic $r8$lambda$U8cMBCP6Mm3014b7u0lGCCBezvk(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lokhttp3/Dns;->lambda$static$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lokhttp3/Dns$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lokhttp3/Dns$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-eqz p0, :cond_26

    .line 39
    :try_start_2
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    .line 41
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken system behaviour for dns lookup of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 44
    throw v1

    .line 37
    :cond_26
    new-instance p0, Ljava/net/UnknownHostException;

    const-string v0, "hostname == null"

    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
