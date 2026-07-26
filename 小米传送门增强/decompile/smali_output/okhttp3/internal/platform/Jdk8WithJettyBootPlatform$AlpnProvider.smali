.class Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;
.super Ljava/lang/Object;
.source "Jdk8WithJettyBootPlatform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlpnProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selected:Ljava/lang/String;

.field unsupported:Z


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 117
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-nez p3, :cond_c

    .line 120
    sget-object p3, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 122
    :cond_c
    const-string v1, "supports"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1b

    .line 123
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 124
    :cond_1b
    const-string v1, "unsupported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2c

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_2c

    .line 125
    iput-boolean v3, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->unsupported:Z

    return-object v2

    .line 127
    :cond_2c
    const-string v1, "protocols"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    array-length v1, p3

    if-nez v1, :cond_3a

    .line 128
    iget-object p1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    return-object p1

    .line 129
    :cond_3a
    const-string v1, "selectProtocol"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_4b

    const-string v1, "select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_4b
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_80

    array-length v0, p3

    if-ne v0, v3, :cond_80

    aget-object v0, p3, v4

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_80

    .line 131
    check-cast v0, Ljava/util/List;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    move p2, v4

    :goto_5f
    if-ge p2, p1, :cond_75

    .line 134
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 136
    iput-object p3, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    return-object p3

    :cond_72
    add-int/lit8 p2, p2, 0x1

    goto :goto_5f

    .line 139
    :cond_75
    iget-object p1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    return-object p1

    .line 140
    :cond_80
    const-string v0, "protocolSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "selected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9a

    :cond_90
    array-length p1, p3

    if-ne p1, v3, :cond_9a

    .line 142
    aget-object p1, p3, v4

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    return-object v2

    .line 145
    :cond_9a
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
