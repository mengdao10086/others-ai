.class public Lorg/ansj/recognition/impl/NatureRecognition;
.super Ljava/lang/Object;
.source "NatureRecognition.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;
    }
.end annotation


# static fields
.field private static final SUFFIX_FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

.field public static final logger:Lorg/slf4j/Logger;


# instance fields
.field private end:[Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

.field private natureTermTable:[[Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

.field private root:Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

.field private terms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 35
    const-class v0, Lorg/ansj/recognition/impl/NatureRecognition;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/ansj/recognition/impl/NatureRecognition;->logger:Lorg/slf4j/Logger;

    .line 36
    new-instance v0, Lorg/nlpcn/commons/lang/tire/domain/Forest;

    invoke-direct {v0}, Lorg/nlpcn/commons/lang/tire/domain/Forest;-><init>()V

    sput-object v0, Lorg/ansj/recognition/impl/NatureRecognition;->SUFFIX_FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    const/4 v0, 0x0

    .line 41
    :try_start_10
    const-string v1, "nature_class_suffix.txt"

    invoke-static {}, Lorg/ansj/util/MyStaticValue;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ansj/dic/DicReader;->getReader(Ljava/lang/String;Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 43
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 44
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 45
    aget-object v2, v1, v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_42

    .line 47
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_42

    :catchall_3e
    move-exception v1

    goto :goto_5b

    :catch_40
    move-exception v1

    goto :goto_52

    .line 49
    :cond_42
    :goto_42
    sget-object v3, Lorg/ansj/recognition/impl/NatureRecognition;->SUFFIX_FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    aget-object v1, v1, v4

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4d} :catch_40
    .catchall {:try_start_10 .. :try_end_4d} :catchall_3e

    goto :goto_1a

    .line 54
    :cond_4e
    :goto_4e
    invoke-static {v0}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_5a

    .line 52
    :goto_52
    :try_start_52
    sget-object v2, Lorg/ansj/recognition/impl/NatureRecognition;->logger:Lorg/slf4j/Logger;

    const-string v3, "IO\u5f02\u5e38"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_3e

    goto :goto_4e

    :goto_5a
    return-void

    .line 54
    :goto_5b
    invoke-static {v0}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 55
    throw v1
.end method

.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

    sget-object v1, Lorg/ansj/domain/TermNature;->BEGIN:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, p0, v1}, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;-><init>(Lorg/ansj/recognition/impl/NatureRecognition;Lorg/ansj/domain/TermNature;)V

    iput-object v0, p0, Lorg/ansj/recognition/impl/NatureRecognition;->root:Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

    .line 60
    new-instance v0, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

    sget-object v1, Lorg/ansj/domain/TermNature;->END:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, p0, v1}, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;-><init>(Lorg/ansj/recognition/impl/NatureRecognition;Lorg/ansj/domain/TermNature;)V

    filled-new-array {v0}, [Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

    move-result-object v0

    iput-object v0, p0, Lorg/ansj/recognition/impl/NatureRecognition;->end:[Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/ansj/recognition/impl/NatureRecognition;->terms:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lorg/ansj/recognition/impl/NatureRecognition;->natureTermTable:[[Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;

    return-void
.end method

.method public static getTermNatures(Ljava/lang/String;)Lorg/ansj/domain/TermNatures;
    .registers 4

    .line 121
    invoke-static {p0}, Lorg/ansj/library/DATDictionary;->getItem(Ljava/lang/String;)Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    .line 124
    sget-object v1, Lorg/ansj/domain/AnsjItem;->NULL:Lorg/ansj/domain/AnsjItem;

    if-eq v0, v1, :cond_b

    .line 125
    iget-object p0, v0, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    goto :goto_34

    .line 126
    :cond_b
    invoke-static {p0}, Lorg/ansj/library/UserDefineLibrary;->getParams(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 127
    new-instance p0, Lorg/ansj/domain/TermNatures;

    new-instance v1, Lorg/ansj/domain/TermNature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    goto :goto_34

    .line 128
    :cond_20
    invoke-static {p0}, Lorg/nlpcn/commons/lang/util/WordAlert;->isEnglish(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 129
    sget-object p0, Lorg/ansj/domain/TermNatures;->EN:Lorg/ansj/domain/TermNatures;

    goto :goto_34

    .line 130
    :cond_29
    invoke-static {p0}, Lorg/nlpcn/commons/lang/util/WordAlert;->isNumber(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 131
    sget-object p0, Lorg/ansj/domain/TermNatures;->M:Lorg/ansj/domain/TermNatures;

    goto :goto_34

    .line 133
    :cond_32
    sget-object p0, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    :goto_34
    return-object p0
.end method
