.class public Lorg/ansj/library/company/CompanyAttrLibrary;
.super Ljava/lang/Object;
.source "CompanyAttrLibrary.java"


# static fields
.field private static cnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lorg/ansj/library/company/CompanyAttrLibrary;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/ansj/library/company/CompanyAttrLibrary;->logger:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    .line 22
    sput-object v0, Lorg/ansj/library/company/CompanyAttrLibrary;->cnMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompanyMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 28
    sget-object v0, Lorg/ansj/library/company/CompanyAttrLibrary;->cnMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    return-object v0

    .line 31
    :cond_5
    invoke-static {}, Lorg/ansj/library/company/CompanyAttrLibrary;->init()V

    .line 32
    sget-object v0, Lorg/ansj/library/company/CompanyAttrLibrary;->cnMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static init()V
    .registers 5

    .line 37
    invoke-static {}, Lorg/ansj/util/MyStaticValue;->getCompanReader()Ljava/io/BufferedReader;

    move-result-object v0

    .line 39
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/ansj/library/company/CompanyAttrLibrary;->cnMap:Ljava/util/HashMap;

    .line 43
    :goto_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 44
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 46
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 47
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 48
    sget-object v3, Lorg/ansj/library/company/CompanyAttrLibrary;->cnMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_31} :catch_34
    .catchall {:try_start_4 .. :try_end_31} :catchall_32

    goto :goto_b

    :catchall_32
    move-exception v1

    goto :goto_43

    :catch_34
    move-exception v1

    goto :goto_3a

    .line 53
    :cond_36
    :goto_36
    invoke-static {v0}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_42

    .line 51
    :goto_3a
    :try_start_3a
    sget-object v2, Lorg/ansj/library/company/CompanyAttrLibrary;->logger:Lorg/slf4j/Logger;

    const-string v3, "IO\u5f02\u5e38"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_32

    goto :goto_36

    :goto_42
    return-void

    .line 53
    :goto_43
    invoke-static {v0}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 54
    throw v1
.end method
