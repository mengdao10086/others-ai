.class public final enum Lokhttp3/TlsVersion;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/TlsVersion;

.field public static final enum SSL_3_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_1:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_2:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_3:Lokhttp3/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 27
    new-instance v0, Lokhttp3/TlsVersion;

    const/4 v1, 0x0

    const-string v2, "TLSv1.3"

    const-string v3, "TLS_1_3"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    .line 28
    new-instance v1, Lokhttp3/TlsVersion;

    const/4 v2, 0x1

    const-string v3, "TLSv1.2"

    const-string v4, "TLS_1_2"

    invoke-direct {v1, v4, v2, v3}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    .line 29
    new-instance v2, Lokhttp3/TlsVersion;

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    const-string v5, "TLS_1_1"

    invoke-direct {v2, v5, v3, v4}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    .line 30
    new-instance v3, Lokhttp3/TlsVersion;

    const/4 v4, 0x3

    const-string v5, "TLSv1"

    const-string v6, "TLS_1_0"

    invoke-direct {v3, v6, v4, v5}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    .line 31
    new-instance v4, Lokhttp3/TlsVersion;

    const/4 v5, 0x4

    const-string v6, "SSLv3"

    const-string v7, "SSL_3_0"

    invoke-direct {v4, v7, v5, v6}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 26
    filled-new-array {v0, v1, v2, v3, v4}, [Lokhttp3/TlsVersion;

    move-result-object v0

    sput-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .registers 4

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6c

    goto :goto_42

    :sswitch_c
    const-string v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_42

    :cond_15
    const/4 v0, 0x4

    goto :goto_42

    :sswitch_17
    const-string v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_42

    :cond_20
    const/4 v0, 0x3

    goto :goto_42

    :sswitch_22
    const-string v1, "TLSv1.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v0, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_42

    :cond_36
    const/4 v0, 0x1

    goto :goto_42

    :sswitch_38
    const-string v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    packed-switch v0, :pswitch_data_82

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_5c
    sget-object p0, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    return-object p0

    .line 51
    :pswitch_5f
    sget-object p0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    return-object p0

    .line 43
    :pswitch_62
    sget-object p0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    return-object p0

    .line 45
    :pswitch_65
    sget-object p0, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    return-object p0

    .line 47
    :pswitch_68
    sget-object p0, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    return-object p0

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_38
        -0x1dfc3f26 -> :sswitch_2d
        -0x1dfc3f25 -> :sswitch_22
        0x4b88569 -> :sswitch_17
        0x4c38896 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
    .end packed-switch
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 59
    invoke-static {v3}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 61
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .registers 2

    .line 26
    const-class v0, Lokhttp3/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/TlsVersion;

    return-object p0
.end method

.method public static values()[Lokhttp3/TlsVersion;
    .registers 1

    .line 26
    sget-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    invoke-virtual {v0}, [Lokhttp3/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/TlsVersion;

    return-object v0
.end method
