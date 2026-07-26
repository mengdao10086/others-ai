.class public Lorg/ansj/library/name/PersonAttrLibrary;
.super Ljava/lang/Object;
.source "PersonAttrLibrary.java"


# static fields
.field public static final logger:Lorg/slf4j/Logger;


# instance fields
.field private pnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ansj/domain/PersonNatureAttr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lorg/ansj/library/name/PersonAttrLibrary;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/ansj/library/name/PersonAttrLibrary;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/ansj/library/name/PersonAttrLibrary;->pnMap:Ljava/util/HashMap;

    return-void
.end method

.method private init1()V
    .registers 7

    .line 60
    invoke-static {}, Lorg/ansj/util/MyStaticValue;->getPersonReader()Ljava/io/BufferedReader;

    move-result-object v0

    .line 62
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/ansj/library/name/PersonAttrLibrary;->pnMap:Ljava/util/HashMap;

    .line 66
    :goto_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 67
    new-instance v2, Lorg/ansj/domain/PersonNatureAttr;

    invoke-direct {v2}, Lorg/ansj/domain/PersonNatureAttr;-><init>()V

    .line 68
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lorg/ansj/library/name/PersonAttrLibrary;->pnMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ansj/domain/PersonNatureAttr;

    if-nez v2, :cond_35

    .line 71
    new-instance v2, Lorg/ansj/domain/PersonNatureAttr;

    invoke-direct {v2}, Lorg/ansj/domain/PersonNatureAttr;-><init>()V

    goto :goto_35

    :catchall_2f
    move-exception v1

    goto :goto_63

    :catch_31
    move-exception v1

    goto :goto_52

    :catch_33
    move-exception v1

    goto :goto_5a

    :cond_35
    :goto_35
    const/4 v4, 0x1

    .line 73
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/ansj/domain/PersonNatureAttr;->addFreq(II)V

    .line 74
    iget-object v4, p0, Lorg/ansj/library/name/PersonAttrLibrary;->pnMap:Ljava/util/HashMap;

    aget-object v1, v1, v3

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4d} :catch_33
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4d} :catch_31
    .catchall {:try_start_4 .. :try_end_4d} :catchall_2f

    goto :goto_b

    .line 81
    :cond_4e
    :goto_4e
    invoke-static {v0}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_62

    .line 79
    :goto_52
    :try_start_52
    sget-object v2, Lorg/ansj/library/name/PersonAttrLibrary;->logger:Lorg/slf4j/Logger;

    const-string v3, "IO\u5f02\u5e38"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e

    .line 77
    :goto_5a
    sget-object v2, Lorg/ansj/library/name/PersonAttrLibrary;->logger:Lorg/slf4j/Logger;

    const-string v3, "\u6570\u5b57\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_2f

    goto :goto_4e

    :goto_62
    return-void

    .line 81
    :goto_63
    invoke-static {v0}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 82
    throw v1
.end method

.method private init2()V
    .registers 5

    .line 42
    invoke-static {}, Lorg/ansj/util/MyStaticValue;->getPersonFreqMap()Ljava/util/Map;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    iget-object v2, p0, Lorg/ansj/library/name/PersonAttrLibrary;->pnMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ansj/domain/PersonNatureAttr;

    if-nez v2, :cond_40

    .line 48
    new-instance v2, Lorg/ansj/domain/PersonNatureAttr;

    invoke-direct {v2}, Lorg/ansj/domain/PersonNatureAttr;-><init>()V

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    invoke-virtual {v2, v3}, Lorg/ansj/domain/PersonNatureAttr;->setlocFreq([[I)V

    .line 50
    iget-object v3, p0, Lorg/ansj/library/name/PersonAttrLibrary;->pnMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 52
    :cond_40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    invoke-virtual {v2, v1}, Lorg/ansj/domain/PersonNatureAttr;->setlocFreq([[I)V

    goto :goto_c

    :cond_4a
    return-void
.end method


# virtual methods
.method public getPersonMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ansj/domain/PersonNatureAttr;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/ansj/library/name/PersonAttrLibrary;->pnMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    return-object v0

    .line 35
    :cond_5
    invoke-direct {p0}, Lorg/ansj/library/name/PersonAttrLibrary;->init1()V

    .line 36
    invoke-direct {p0}, Lorg/ansj/library/name/PersonAttrLibrary;->init2()V

    .line 37
    iget-object v0, p0, Lorg/ansj/library/name/PersonAttrLibrary;->pnMap:Ljava/util/HashMap;

    return-object v0
.end method
