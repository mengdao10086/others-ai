.class Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1797
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1800
    instance-of v0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_a

    .line 1801
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    return-void

    .line 1804
    :cond_a
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_12

    .line 1806
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_12
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1b

    const/16 v0, 0x9

    .line 1809
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2c

    :cond_1b
    const/16 v1, 0xc

    if-ne v0, v1, :cond_24

    const/16 v0, 0x8

    .line 1811
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2c

    :cond_24
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2d

    const/16 v0, 0xa

    .line 1813
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    :goto_2c
    return-void

    .line 1815
    :cond_2d
    const-string v0, "a name"

    # invokes: Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    invoke-static {p1, v0}, Lcom/google/gson/stream/JsonReader;->access$000(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
