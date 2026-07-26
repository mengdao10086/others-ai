.class final Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SqlTimeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field static final FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->format:Ljava/text/DateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/sql/SqlTimeTypeAdapter$1;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Time;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 60
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 64
    monitor-enter p0

    .line 65
    :try_start_12
    iget-object v1, p0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_2e

    .line 67
    :try_start_18
    iget-object v2, p0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 68
    new-instance v3, Ljava/sql/Time;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Time;-><init>(J)V
    :try_end_27
    .catch Ljava/text/ParseException; {:try_start_18 .. :try_end_27} :catch_32
    .catchall {:try_start_18 .. :try_end_27} :catchall_30

    .line 73
    :try_start_27
    iget-object p1, p0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2e

    return-object v3

    :catchall_2e
    move-exception p1

    goto :goto_5c

    :catchall_30
    move-exception p1

    goto :goto_56

    :catch_32
    move-exception v2

    .line 70
    :try_start_33
    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' as SQL Time; at path "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_30

    .line 73
    :goto_56
    :try_start_56
    iget-object v0, p0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 74
    throw p1

    .line 75
    :goto_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_2e

    throw p1
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    check-cast p2, Ljava/sql/Time;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Time;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Time;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 85
    :cond_6
    monitor-enter p0

    .line 86
    :try_start_7
    iget-object v0, p0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 87
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 88
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void

    :catchall_12
    move-exception p1

    .line 87
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method
