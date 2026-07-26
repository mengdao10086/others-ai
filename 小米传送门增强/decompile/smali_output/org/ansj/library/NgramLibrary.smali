.class public Lorg/ansj/library/NgramLibrary;
.super Ljava/lang/Object;
.source "NgramLibrary.java"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    invoke-static {}, Lorg/ansj/util/MyStaticValue;->initBigramTables()V

    .line 16
    sget-object v2, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "init ngram ok use time :{}"

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getTwoWordFreq(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)I
    .registers 4

    .line 27
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->item()Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    iget-object v0, v0, Lorg/ansj/domain/AnsjItem;->bigramEntryMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 30
    :cond_a
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->item()Lorg/ansj/domain/AnsjItem;

    move-result-object p0

    iget-object p0, p0, Lorg/ansj/domain/AnsjItem;->bigramEntryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ansj/domain/Term;->item()Lorg/ansj/domain/AnsjItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/nlpcn/commons/lang/dat/Item;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_25

    return v1

    .line 34
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
